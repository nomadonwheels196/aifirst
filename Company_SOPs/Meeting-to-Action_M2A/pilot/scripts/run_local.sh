#!/usr/bin/env bash
set -euo pipefail

usage() {
  echo "Usage: $0 --input data/input/transcript.txt --meta data/input/metadata.json --out data/output/canonical.json" >&2
}

INPUT=""; META=""; OUT=""
while [[ $# -gt 0 ]]; do
  case "$1" in
    --input) INPUT="$2"; shift 2;;
    --meta) META="$2"; shift 2;;
    --out) OUT="$2"; shift 2;;
    *) usage; exit 1;;
  esac
done

[[ -z "${INPUT}" || -z "${OUT}" ]] && { usage; exit 1; }

echo "[pilot] classify_enrich → extract → audience_tag → summary → validate → route_dry_run"
echo "[pilot] reading: ${INPUT}; meta: ${META:-none}"
echo "[pilot] model: ${MODEL:-llama3:latest}"
mkdir -p data/work "$(dirname "$OUT")" data/output payloads || true

# Default to a smaller local model for faster iterations
MODEL=${MODEL:-llama3:latest}

require() { command -v "$1" >/dev/null || { echo "missing dependency: $1" >&2; return 1; }; }

OLLAMA_AVAILABLE=1
require jq || exit 1
if ! require ollama; then
  OLLAMA_AVAILABLE=0
  echo "[pilot] ollama not found; running in stub mode (no LLM)" >&2
fi

prompt_run() {
  local prompt_file="$1"; shift
  local transcript_file="$1"; shift
  local meta_file="${1:-}"; shift || true
  local tmp_prompt
  tmp_prompt=$(mktemp)
  local MAX_TRANSCRIPT_CHARS=${MAX_TRANSCRIPT_CHARS:-12000}
  {
    echo "You are a local assistant that outputs STRICT JSON only. No prose, no code fences."
    echo
    cat "$prompt_file"
    echo
    echo "---"
    echo "METADATA (JSON, optional):"
    if [[ -n "$meta_file" && -f "$meta_file" ]]; then cat "$meta_file"; else echo "{}"; fi
    echo
    echo "TRANSCRIPT:"; echo ""; sed 's/^\xEF\xBB\xBF//' "$transcript_file" | head -c "$MAX_TRANSCRIPT_CHARS"
  } > "$tmp_prompt"

  local produced=0
  local base
  if [[ $OLLAMA_AVAILABLE -eq 1 ]]; then
    base=$(basename "$prompt_file" .md)
    mkdir -p data/work || true
    # Choose schema guard based on step
    local guard
    case "$base" in
      00_classify_enrich) guard='select(has("meeting"))' ;;
      10_extract_items)   guard='select(has("summary"))' ;;
      20_audience_tagging) guard='select(has("audiences"))' ;;
      40_summary)         guard='select(has("summary"))' ;;
      *)                  guard='.' ;;
    esac

    # Get raw model text output (no JSON event stream) and write to assembled text
    if TERM=dumb ollama run "$MODEL" < "$tmp_prompt" 2>"data/work/${base}_err.txt" \
      | sed -E $'s/\x1B\[[0-9;?]*[ -\/]*[@-~]//g' \
      | grep -v '^[[:space:]]*[⠙⠸⠼⠴⠦⠧⠇⠏⠋⠹]+[[:space:]]*$' \
      > "data/work/${base}_assembled.txt"; then
      # Extract first JSON object from assembled content, require expected key (schema-guard)
      if jq -sR 'gsub("```json|```";"") | capture("(?<json>\\{[\\s\\S]*\\})").json | fromjson | '"$guard" \
          < "data/work/${base}_assembled.txt" 2>/dev/null; then
        produced=1
      fi
    else
      echo "[pilot] ollama run failed; falling back to stub for $prompt_file" >&2
      if [[ -s "data/work/${base}_err.txt" ]]; then
        echo "[pilot] see data/work/${base}_err.txt for error details" >&2
      fi
    fi
  fi
  if [[ $produced -eq 0 ]]; then
    case "$prompt_file" in
      *00_classify_enrich.md)
        jq -n '{meeting:{classification:"unknown"}, participants:[]}' ;;
      *10_extract_items.md)
        jq -n '{summary:"", actions:[], decisions:[], risks:[], evidence:[]}' ;;
      *20_audience_tagging.md)
        jq -n '{audiences:{}}' ;;
      *40_summary.md)
        jq -n '{summary:{bullets:[], narrative:""}}' ;;
      *) jq -n '{}';;
    esac
  fi
  rm -f "$tmp_prompt"
}

CHUNK_CHARS=${CHUNK_CHARS:-6000}
CHUNK_DIR=data/work/chunks
mkdir -p "$CHUNK_DIR"

# Decide whether to chunk
INPUT_SIZE=$(wc -c < "$INPUT" | tr -d ' ')
CHUNKED=0
if (( INPUT_SIZE > CHUNK_CHARS )); then
  echo "[pilot] chunking transcript (~$INPUT_SIZE chars) into ~$CHUNK_CHARS-char parts"
  bash Company_SOPs/Meeting-to-Action_M2A/pilot/scripts/chunk_transcript.sh "$INPUT" "$CHUNK_DIR" "$CHUNK_CHARS" >/dev/null
  CHUNKS=()
  while IFS= read -r f; do CHUNKS+=("$f"); done < <(ls -1 "$CHUNK_DIR"/chunk_*.md 2>/dev/null)
  CHUNKED=1
else
  CHUNKS=("$INPUT")
fi

# Stage 00: classify & enrich (merge participants across chunks)
tmp_participants=$(mktemp)
echo '[]' > "$tmp_participants"
meeting_class="unknown"
for f in "${CHUNKS[@]}"; do
  out=$(prompt_run Company_SOPs/Meeting-to-Action_M2A/pilot/prompts/00_classify_enrich.md "$f" "${META:-}") || out='{}'
  echo "$out" | jq '.participants // []' | jq -s 'add' > "$tmp_participants.new"
  mv "$tmp_participants.new" "$tmp_participants"
  cls=$(echo "$out" | jq -r '.meeting.classification // empty' || true)
  if [[ -n "$cls" && "$meeting_class" == "unknown" ]]; then meeting_class="$cls"; fi
done
jq -n --arg cls "$meeting_class" --slurpfile ppl "$tmp_participants" '{meeting:{classification:$cls}, participants: ($ppl|add|unique_by(.name))}' > data/work/00_classify.json
rm -f "$tmp_participants"

# Stage 10: extract items (concat arrays)
tmp_actions=$(mktemp); echo '[]' > "$tmp_actions"
tmp_decisions=$(mktemp); echo '[]' > "$tmp_decisions"
tmp_risks=$(mktemp); echo '[]' > "$tmp_risks"
tmp_evidence=$(mktemp); echo '[]' > "$tmp_evidence"
summary_texts=$(mktemp); : > "$summary_texts"
for f in "${CHUNKS[@]}"; do
  out=$(prompt_run Company_SOPs/Meeting-to-Action_M2A/pilot/prompts/10_extract_items.md "$f" "${META:-}") || out='{}'
  echo "$out" | jq -r '.summary // empty' >> "$summary_texts"
  echo "$out" | jq '.actions // []' | jq -s 'add' > "$tmp_actions.new" && mv "$tmp_actions.new" "$tmp_actions"
  echo "$out" | jq '.decisions // []' | jq -s 'add' > "$tmp_decisions.new" && mv "$tmp_decisions.new" "$tmp_decisions"
  echo "$out" | jq '.risks // []' | jq -s 'add' > "$tmp_risks.new" && mv "$tmp_risks.new" "$tmp_risks"
  echo "$out" | jq '.evidence // []' | jq -s 'add' > "$tmp_evidence.new" && mv "$tmp_evidence.new" "$tmp_evidence"
done
jq -n \
  --rawfile s "$summary_texts" \
  --slurpfile a "$tmp_actions" \
  --slurpfile d "$tmp_decisions" \
  --slurpfile r "$tmp_risks" \
  --slurpfile e "$tmp_evidence" \
  '{summary: $s, actions: ($a|add), decisions: ($d|add), risks: ($r|add), evidence: ($e|add)}' > data/work/10_extract.json
rm -f "$tmp_actions" "$tmp_decisions" "$tmp_risks" "$tmp_evidence" "$summary_texts"

# Stage 20: audience tagging (merge objects)
tmp_aud=$(mktemp); echo '{}' > "$tmp_aud"
for f in "${CHUNKS[@]}"; do
  out=$(prompt_run Company_SOPs/Meeting-to-Action_M2A/pilot/prompts/20_audience_tagging.md "$f" "${META:-}") || out='{}'
  echo "$out" | jq '.audiences // {}' | jq -s 'add' > "$tmp_aud.new" && mv "$tmp_aud.new" "$tmp_aud"
done
jq -n --slurpfile A "$tmp_aud" '{audiences: ($A|add)}' > data/work/20_audience.json
rm -f "$tmp_aud"

# Stage 40/50: summaries (map + reduce)
tmp_sum_bullets=$(mktemp); echo '[]' > "$tmp_sum_bullets"
for f in "${CHUNKS[@]}"; do
  out=$(prompt_run Company_SOPs/Meeting-to-Action_M2A/pilot/prompts/40_summary.md "$f" "${META:-}") || out='{}'
  echo "$out" | jq '.summary.bullets // []' | jq -s 'add' > "$tmp_sum_bullets.new" && mv "$tmp_sum_bullets.new" "$tmp_sum_bullets"
done
reduced=$( \
  jq -n --slurpfile B "$tmp_sum_bullets" '{summary:{bullets: ($B|add|unique), narrative:""}}' | \
  (prompt_run Company_SOPs/Meeting-to-Action_M2A/pilot/prompts/50_reduce_summary.md /dev/stdin "${META:-}" || echo '{"summary":{"bullets":[],"narrative":""}}')
)
echo "$reduced" > data/work/40_summary.json
rm -f "$tmp_sum_bullets"

# Compose canonical
jq -n \
  --slurpfile s00 data/work/00_classify.json \
  --slurpfile s10 data/work/10_extract.json \
  --slurpfile s20 data/work/20_audience.json \
  --slurpfile s40 data/work/40_summary.json \
  '
  def first(a): a[0] // {};
  {
    meeting: (first($s00).meeting // {}),
    participants: (first($s00).participants // []),
    summary: (first($s10).summary // ""),
    evidence: (first($s10).evidence // []),
    outputs: {
      actions: (first($s10).actions // []),
      decisions: (first($s10).decisions // []),
      risks: (first($s10).risks // []),
      audiences: (first($s20).audiences // {})
    }
  } | (.summary |= if type=="object" then (.bullets//[]) as $b | (.narrative//"") as $n | ("- " + ($b|join("\n- ")) + (if $n=="" then "" else "\n\n"+$n end)) else . end)
  ' > "$OUT"

echo "[pilot] wrote canonical draft: $OUT"

# Validate if possible
bash Company_SOPs/Meeting-to-Action_M2A/pilot/scripts/validate.sh "$OUT" || true

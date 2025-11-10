#!/usr/bin/env bash
set -euo pipefail

usage(){ echo "Usage: $0 --input <file> --out <file>" >&2; }
INPUT=""; OUT=""; META=""; CHUNK_CHARS=${CHUNK_CHARS:-6000};
while [[ $# -gt 0 ]]; do
  case "$1" in
    --input) INPUT="$2"; shift 2;;
    --out) OUT="$2"; shift 2;;
    --meta) META="$2"; shift 2;;
    *) usage; exit 1;;
  esac
done
[[ -z "$INPUT" || -z "$OUT" ]] && { usage; exit 1; }

echo "[pilot2] classify_enrich → extract → audience_tag → summary → validate"
echo "[pilot2] input: $INPUT | out: $OUT | model: ${MODEL:-gpt-4o-mini}"

require(){ command -v "$1" >/dev/null || { echo "missing: $1" >&2; exit 1; }; }
require jq; require sed; require awk; require curl;

PROMPTS_DIR=Company_SOPs/Meeting-to-Action_M2A/pilot/prompts
CHUNK_DIR=Company_SOPs/Meeting-to-Action_M2A/pilot2/data/work/chunks
WORK_DIR=Company_SOPs/Meeting-to-Action_M2A/pilot2/data/work
mkdir -p "$WORK_DIR" "$CHUNK_DIR" "$(dirname "$OUT")"

# Build content for a prompt call
build_content(){
  local prompt_file="$1"; shift
  local transcript_file="$1"; shift
  local meta_file="${1:-}"
  local tmp=$(mktemp)
  {
    echo "You are a careful assistant that outputs STRICT JSON only. No prose, no code fences."
    echo
    cat "$prompt_file"
    echo
    echo "---"; echo "METADATA (JSON, optional):"; if [[ -n "$meta_file" && -f "$meta_file" ]]; then cat "$meta_file"; else echo "{}"; fi
    echo
    echo "TRANSCRIPT:"; echo; sed 's/^\xEF\xBB\xBF//' "$transcript_file"
  } > "$tmp"
  echo "$tmp"
}

# Call OpenAI and try to parse JSON
call_step(){
  local step="$1"; shift
  local transcript="$1"; shift
  local content_file
  content_file=$(build_content "$PROMPTS_DIR/${step}.md" "$transcript" "$META")
  local raw
  raw=$(bash Company_SOPs/Meeting-to-Action_M2A/pilot2/scripts/openai_call.sh "$PROMPTS_DIR/${step}.md" "$content_file")
  rm -f "$content_file"
  # Strip fences and try to parse
  echo "$raw" | sed 's/^```json\s*//; s/```$//' \
    | jq -r . 2>/dev/null || echo '{}'
}

# Chunking
if (( $(wc -c < "$INPUT") > CHUNK_CHARS )); then
  echo "[pilot2] chunking transcript"
  bash Company_SOPs/Meeting-to-Action_M2A/pilot/scripts/chunk_transcript.sh "$INPUT" "$CHUNK_DIR" "$CHUNK_CHARS" >/dev/null
  CHUNKS=()
  while IFS= read -r f; do CHUNKS+=("$f"); done < <(ls -1 "$CHUNK_DIR"/chunk_*.md 2>/dev/null)
else
  CHUNKS=("$INPUT")
fi

# 00 classify & enrich (merge)
tmp_p=$(mktemp); echo '[]' > "$tmp_p"
meeting_class="unknown"
for f in "${CHUNKS[@]}"; do
  out=$(call_step 00_classify_enrich "$f")
  echo "$out" | jq '.participants // []' | jq -s 'add' > "$tmp_p.new" && mv "$tmp_p.new" "$tmp_p"
  cls=$(echo "$out" | jq -r '.meeting.classification // empty' || true)
  if [[ -n "$cls" && "$meeting_class" == "unknown" ]]; then meeting_class="$cls"; fi
done
jq -n --arg cls "$meeting_class" --slurpfile ppl "$tmp_p" '{meeting:{classification:$cls}, participants: ($ppl|add|unique_by(.name))}' > "$WORK_DIR/00_classify.json"
rm -f "$tmp_p"

# 10 extract (concat)
tmp_a=$(mktemp); echo '[]' > "$tmp_a"
tmp_d=$(mktemp); echo '[]' > "$tmp_d"
tmp_r=$(mktemp); echo '[]' > "$tmp_r"
tmp_e=$(mktemp); echo '[]' > "$tmp_e"
summary_cat=$(mktemp); : > "$summary_cat"
for f in "${CHUNKS[@]}"; do
  out=$(call_step 10_extract_items "$f")
  echo "$out" | jq -r '.summary // empty' >> "$summary_cat"
  echo "$out" | jq '.actions // []' | jq -s 'add' > "$tmp_a.new" && mv "$tmp_a.new" "$tmp_a"
  echo "$out" | jq '.decisions // []' | jq -s 'add' > "$tmp_d.new" && mv "$tmp_d.new" "$tmp_d"
  echo "$out" | jq '.risks // []' | jq -s 'add' > "$tmp_r.new" && mv "$tmp_r.new" "$tmp_r"
  echo "$out" | jq '.evidence // []' | jq -s 'add' > "$tmp_e.new" && mv "$tmp_e.new" "$tmp_e"
done
jq -n --rawfile s "$summary_cat" --slurpfile a "$tmp_a" --slurpfile d "$tmp_d" --slurpfile r "$tmp_r" --slurpfile e "$tmp_e" \
  '{summary:$s, actions:($a|add), decisions:($d|add), risks:($r|add), evidence:($e|add)}' > "$WORK_DIR/10_extract.json"
rm -f "$tmp_a" "$tmp_d" "$tmp_r" "$tmp_e" "$summary_cat"

# 20 audience tagging (merge)
tmp_A=$(mktemp); echo '{}' > "$tmp_A"
for f in "${CHUNKS[@]}"; do
  out=$(call_step 20_audience_tagging "$f")
  echo "$out" | jq '.audiences // {}' | jq -s 'add' > "$tmp_A.new" && mv "$tmp_A.new" "$tmp_A"
done
jq -n --slurpfile A "$tmp_A" '{audiences: ($A|add)}' > "$WORK_DIR/20_audience.json"
rm -f "$tmp_A"

# 40 summary reduce (single call on concatenated bullets)
tmp_B=$(mktemp); echo '[]' > "$tmp_B"
for f in "${CHUNKS[@]}"; do
  out=$(call_step 40_summary "$f")
  echo "$out" | jq '.summary.bullets // []' | jq -s 'add' > "$tmp_B.new" && mv "$tmp_B.new" "$tmp_B"
done
jq -n --slurpfile B "$tmp_B" '{summary:{bullets: ($B|add|unique), narrative:""}}' > "$WORK_DIR/40_summary.json"
rm -f "$tmp_B"

# Compose canonical
jq -n \
  --slurpfile s00 "$WORK_DIR/00_classify.json" \
  --slurpfile s10 "$WORK_DIR/10_extract.json" \
  --slurpfile s20 "$WORK_DIR/20_audience.json" \
  --slurpfile s40 "$WORK_DIR/40_summary.json" \
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

echo "[pilot2] wrote: $OUT"

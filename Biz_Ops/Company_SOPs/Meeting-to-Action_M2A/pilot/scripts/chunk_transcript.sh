#!/usr/bin/env bash
set -euo pipefail
# Split a transcript file into chunks by character budget, preserving line boundaries.
# Usage: chunk_transcript.sh <input_file> <out_dir> [chunk_chars]
IN=${1:?input file}
OUTDIR=${2:?output dir}
MAX=${3:-6000}
mkdir -p "$OUTDIR"
idx=1
buf=""
curlen=0
emit() {
  local f
  f=$(printf "%s/chunk_%03d.md" "$OUTDIR" "$idx")
  printf "%s" "$buf" > "$f"
  idx=$((idx+1))
  buf=""
  curlen=0
}
while IFS= read -r line || [[ -n "$line" ]]; do
  local_len=${#line}
  # Add the line plus newline
  if (( curlen + local_len + 1 > MAX && curlen > 0 )); then
    emit
  fi
  buf+="$line"
  buf+=$'\n'
  curlen=$((curlen + local_len + 1))
done < "$IN"
if [[ -n "$buf" ]]; then emit; fi
ls -1 "$OUTDIR"/chunk_*.md 2>/dev/null || true


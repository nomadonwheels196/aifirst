#!/usr/bin/env bash
set -euo pipefail

PROMPT_FILE=${1:?prompt file}
CONTENT_FILE=${2:?content file}
MODEL=${MODEL:-gpt-4o-mini}

if [[ -z "${OPENAI_API_KEY:-}" ]]; then
  echo "{}"
  exit 0
fi

body=$(jq -n --arg model "$MODEL" --rawfile content "$CONTENT_FILE" '{model:$model,messages:[{role:"user",content:$content}],temperature:0.2,max_tokens:2048}')
resp=$(echo "$body" | curl -sS https://api.openai.com/v1/chat/completions \
  -H "Authorization: Bearer $OPENAI_API_KEY" \
  -H 'Content-Type: application/json' \
  -d @-)

echo "$resp" | jq -r '.choices[0].message.content' 2>/dev/null || echo '{}'

# M2A Pilot 2 — Cloud (ChatGPT)

## Goal
Compare outputs using a cloud LLM (ChatGPT) vs local models.

## Requirements
- Env var `OPENAI_API_KEY` set (no secrets committed).
- Bash, `curl`, `jq`, Python optional.

## Run
```
MODEL=gpt-4o-mini \
 bash Company_SOPs/Meeting-to-Action_M2A/pilot2/scripts/run_cloud.sh \
  --input Company_SOPs/Meeting-to-Action_M2A/pilot/data/input/transcript1.md \
  --out Company_SOPs/Meeting-to-Action_M2A/pilot2/data/output/canonical.json
```

Notes
- Uses the same prompt templates as Pilot 1.
- Falls back to stub JSON when `OPENAI_API_KEY` is not set (for safe local testing).
- No secrets or large files in git.

# M2A Pilot (Local‑First)

## Goal
Run a local‑first pilot to convert meetings into a canonical JSON record and route artifacts with minimal cloud reliance.

## Architecture
- Ingest: transcript + optional calendar/CRM metadata (files under `data/input/`).
- Classify & Enrich: local LLM infers internal/external, participants mapping, company.
- Extract: local LLM segments and extracts actions/decisions/risks/evidence.
- Audience Tagging: local LLM fills audience fields (Sales, PM, Platform_Eng, CS, etc.).
- Validate: JSON Schema validation (`schemas/canonical.schema.json`).
- Route (dry‑run by default): prepare Slack/issues/CRM payloads to `data/output/`.

## Suggested Local Tools
- LLM: `ollama` or `llama.cpp` (CPU/GPU) with a 7B–13B instruct model.
- ASR (optional): `whisper.cpp` for audio → transcript.
- Utilities: `jq`, `yq`, `fd/rg`, Python 3.11.
- Vector store (optional): SQLite + local embeddings.

## Run (dry‑run example)
```
./scripts/run_local.sh \
  --input data/input/transcript.txt \
  --meta data/input/metadata.json \
  --out data/output/canonical.json
```

## Folders
- `configs/` — pipeline, model, routing, privacy configs
- `data/` — `input/`, `work/`, `output/`, `samples/`
- `prompts/` — prompt templates for each step
- `schemas/` — canonical JSON schema
- `scripts/` — simple orchestration scripts (bash/python)

Notes
- No secrets or large files. Keep audio/transcripts small for the pilot; `.gitkeep` placeholders are provided.
- Run from repo root. See `Company_SOPs/Meeting-to-Action_M2A/.ai/README.md` for automation guidance.

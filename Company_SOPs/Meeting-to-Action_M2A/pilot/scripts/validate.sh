#!/usr/bin/env bash
set -euo pipefail

FILE=${1:-data/output/canonical.json}
SCHEMA=Company_SOPs/Meeting-to-Action_M2A/pilot/schemas/canonical.schema.json

if ! command -v python >/dev/null; then
  echo "python not found; skipping validation" >&2
  exit 0
fi

python - "$FILE" "$SCHEMA" << 'PY'
import json, sys
try:
    from jsonschema import Draft202012Validator
except Exception as e:
    print("jsonschema not available; skipping validation")
    sys.exit(0)

data = json.load(open(sys.argv[1]))
schema = json.load(open(sys.argv[2]))
v = Draft202012Validator(schema)
errors = sorted(v.iter_errors(data), key=lambda e: e.path)
if errors:
    print("Invalid canonical JSON:\n")
    for e in errors:
        print(f"- {'/'.join([str(p) for p in e.path])}: {e.message}")
    sys.exit(1)
print("OK: canonical JSON validates against schema")
PY

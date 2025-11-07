#!/usr/bin/env bash
set -euo pipefail

if [ $# -lt 1 ]; then
  echo "Usage: $0 <Area_Name> [--spec path1 --spec path2]" >&2
  exit 1
fi

AREA="$1"; shift || true
SPECS=()
while [[ $# -gt 0 ]]; do
  case "$1" in
    --spec) shift; [ $# -gt 0 ] && SPECS+=("$1"); shift;;
    *) echo "Unknown arg: $1" >&2; exit 1;;
  esac
done

DIR_NAME="$AREA"
mkdir -p "$DIR_NAME"
mkdir -p "$DIR_NAME/.keep"

# README.md
if [ ! -f "$DIR_NAME/README.md" ]; then
  if [ -f "$HOME/.templates/README.md.template.md" ]; then
    cp "$HOME/.templates/README.md.template.md" "$DIR_NAME/README.md"
  elif [ -f "templates/README.md.template.md" ]; then
    cp "templates/README.md.template.md" "$DIR_NAME/README.md"
  else
    cat > "$DIR_NAME/README.md" << 'EOF'
# <Area Name>

## Purpose
<One paragraph describing business outcome and boundaries>

## Scope
<What belongs here vs elsewhere>

## Inputs
<List specs, upstream processes, systems>

## Outputs
<Artifacts produced: docs, templates>

## Owners
- Role: Primary
- Role: Backup
- Review cadence: monthly/quarterly
- Approval: when changes require legal/security review

## Related Specs
- business_spec/<path>

## Related Legal/Policy
- business_ops/legal/<path>

## Security & Privacy
No PII/secrets. See repo AGENTS.md and ~/.agents/README.md.

## Operational Notes
<Runbooks, SLAs, calendars>

## Change Log
See PR history or local CHANGELOG.md.
EOF
  fi
fi

# AGENTS stub
if [ ! -f "$DIR_NAME/AGENTS.md" ]; then
  if [ -f "$HOME/.templates/AGENTS.stub.md" ]; then
    cp "$HOME/.templates/AGENTS.stub.md" "$DIR_NAME/AGENTS.md"
  elif [ -f "templates/AGENTS.stub.md" ]; then
    cp "templates/AGENTS.stub.md" "$DIR_NAME/AGENTS.md"
  else
    cat > "$DIR_NAME/AGENTS.md" << 'EOF'
AGENTS.md — Subtree Stub

- Protocol and tools: ~/.agents/README.md
- Profile and preferences: ~/AGENTS.md
- Inherits repo root AGENTS.md; do not store PII, secrets, or credentials here.
- Link changes to business_spec/*; avoid duplication with global preferences.
- Sensitive content lives in business_ops/legal/* when applicable; reference, don’t duplicate.
EOF
  fi
fi

# OWNERS
if [ ! -f "$DIR_NAME/OWNERS.md" ]; then
  if [ -f "$HOME/.templates/OWNERS.template.md" ]; then
    cp "$HOME/.templates/OWNERS.template.md" "$DIR_NAME/OWNERS.md"
  elif [ -f "templates/OWNERS.template.md" ]; then
    cp "templates/OWNERS.template.md" "$DIR_NAME/OWNERS.md"
  else
    cat > "$DIR_NAME/OWNERS.md" << 'EOF'
# OWNERS (roles only, no PII)

- Role: Primary (e.g., Head of <Function>)
- Role: Backup (e.g., <Role>)
- Review cadence: monthly/quarterly
- Approval: specify when changes require legal/security review
EOF
  fi
fi

# Prepend Dir RFC to CHANGELOG.md if present
RFC=$(mktemp)
{
  echo "## Directory RFC: $AREA"
  echo "- Purpose: <summary>"
  echo "- Scope: <what belongs here>"
  printf "- Spec links: %s\n" "${SPECS[*]:-<add links>}"
  echo "- Owners: <roles>"
  echo "- Security class: <normal/sensitive>"
  echo "- Risks/Tradeoffs: <short>"
  echo "- Alternatives: <short>"
  echo "---"
} > "$RFC"

if [ -f CHANGELOG.md ]; then
  { cat "$RFC"; echo; cat CHANGELOG.md; } > CHANGELOG.md.tmp && mv CHANGELOG.md.tmp CHANGELOG.md
else
  mv "$RFC" "$DIR_NAME/CHANGELOG.md"
fi

echo "Scaffolded directory: $DIR_NAME"
echo "Remember to update README.md and link relevant business_spec/* sections."

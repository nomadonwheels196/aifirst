#!/usr/bin/env bash
set -euo pipefail
ROOT="${1:-$(git rev-parse --show-toplevel 2>/dev/null || pwd)}"
~/.agents/bin/conventions_lint.sh "$ROOT"
~/.agents/bin/conventions_fix_refs.sh "$ROOT"

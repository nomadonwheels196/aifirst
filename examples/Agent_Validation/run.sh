#!/usr/bin/env bash
set -euo pipefail

# Always cleanup on exit
cleanup() {
  set +e
  if [ -n "${ROOT:-}" ]; then
    # Restore branch
    if [ -n "${CURR_BRANCH:-}" ]; then
      git -C "$ROOT" checkout "$CURR_BRANCH" >/dev/null 2>&1
    fi
    # Delete test branch
    if [ -n "${BR:-}" ]; then
      git -C "$ROOT" branch -D "$BR" >/dev/null 2>&1
    fi
    # Remove test artifacts
    rm -rf "$WORKDIR" "$ROOT/examples/Structure_Test" "$ROOT/Examples_Governance_Test_"* 2>/dev/null || true
    rm -f "$ROOT/.agents/active-session.lock" 2>/dev/null || true
  fi
}
trap cleanup EXIT

RED='\033[0;31m'; GREEN='\033[0;32m'; YELLOW='\033[1;33m'; NC='\033[0m'

pass() { echo -e "${GREEN}PASS${NC} - $1"; }
fail() { echo -e "${RED}FAIL${NC} - $1"; exit 1; }
note() { echo -e "${YELLOW}..${NC} $1"; }

ROOT=$(git rev-parse --show-toplevel 2>/dev/null || true)
if [ -z "${ROOT}" ]; then
  fail "Not inside a git repo. Run from within ~/work/aifirst."
fi
if [ "$(basename "$ROOT")" != "aifirst" ]; then
  note "Repo root is: $ROOT (expected ~/work/aifirst)"
fi

pushd "$ROOT" >/dev/null

# Enable hooks for this repo (non-destructive)
git config core.hooksPath .githooks || true

# Ensure no stale lock from a prior failed run
rm -f "$ROOT/.agents/active-session.lock" 2>/dev/null || true

TS=$(date -u +%Y%m%dT%H%M%SZ)
BR="test/agent-validation-$TS"
CURR_BRANCH=$(git rev-parse --abbrev-ref HEAD)

note "Creating test branch $BR"
git checkout -b "$BR" >/dev/null 2>&1 || git checkout -B "$BR" >/dev/null 2>&1

WORKDIR="$ROOT/examples/agent-validation/work-$TS"
mkdir -p "$WORKDIR"

######## Scenario A ########
note "Scenario A: agent summary + transcript export"
pushd "$WORKDIR" >/dev/null
bash ~/.agents/session-open.sh "$(pwd)" "Claude Code" || fail "session-open failed"
[ -f "$ROOT/.agents/active-session.lock" ] || fail "lock not created at repo root"

mkdir -p .transcripts
FTRANS=".transcripts/$(date -u +%FT%H-%M-%SZ)_Claude Code.jsonl"
cat > "$FTRANS" <<'EOF'
{"timestamp":"2025-11-07T00:00:00Z","role":"user","content":"test run","agent":"Claude Code","repo_root":"~/work/aifirst","cwd":"~/work/aifirst/examples/agent-validation"}
{"timestamp":"2025-11-07T00:00:02Z","role":"assistant","content":"ack","agent":"Claude Code","repo_root":"~/work/aifirst","cwd":"~/work/aifirst/examples/agent-validation"}
EOF
[ -f "$FTRANS" ] || fail "transcript not created"

echo "scratch $TS" >> TEST_NOTE.md

SUMMARY=$(cat <<'EOS'
Session Summary: Validated agent-first summary + transcript export.

Problems → Solutions:
- Needed CWD transcripts → Exported JSONL to .transcripts/

Key Decisions:
- Use agent-composed summary (why: preserves rationale)

Refs: examples/agent-validation/TEST_NOTE.md, .transcripts/*
EOS
)

bash ~/.agents/session-close.sh "$(pwd)" "Claude Code" "$SUMMARY" "n" || fail "session-close failed"

grep -q "Validated agent-first summary" "$ROOT/.agents/handoff.md" || fail "handoff missing agent summary"
grep -q "Validated agent-first summary" "$ROOT/.agents/changelog.md" || fail "changelog missing agent summary"
grep -q "last_agent: \"Claude Code\"" "$ROOT/.agents/context.yaml" || fail "context.yaml last_agent not updated"
[ ! -f "$ROOT/.agents/active-session.lock" ] || fail "lock not removed"
pass "Scenario A"
popd >/dev/null

######## Scenario B ########
note "Scenario B: fallback git-based summary"
pushd "$WORKDIR" >/dev/null
bash ~/.agents/session-open.sh "$(pwd)" "Claude Code" || fail "session-open failed"
bash ~/.agents/session-close.sh "$(pwd)" "Claude Code" || fail "session-close failed"
# Verify recent handoff includes a Session Summary heading
grep -q "^## Session Summary" "$ROOT/.agents/handoff.md" || fail "handoff missing Session Summary heading"
[ ! -f "$ROOT/.agents/active-session.lock" ] || fail "lock not removed (B)"
pass "Scenario B"
popd >/dev/null

######## Scenario C ########
note "Scenario C: lock behavior (no prompt)"
echo "Claude Code (started $(date -u))" > "$ROOT/.agents/active-session.lock"
set +e
bash ~/.agents/session-open.sh "$WORKDIR" "Claude Code" >/dev/null 2>&1
RET=$?
set -e
rm -f "$ROOT/.agents/active-session.lock"
if [ "$RET" -ne 0 ]; then pass "Scenario C"; else fail "session-open did not exit on existing lock"; fi

######## Scenario D ########
note "Scenario D: repo-root normalization from deep dir"
mkdir -p "$WORKDIR/deep/a/b" && pushd "$WORKDIR/deep/a/b" >/dev/null
bash ~/.agents/session-open.sh "$(pwd)" "Claude Code" || fail "session-open failed"
[ -f "$ROOT/.agents/active-session.lock" ] || fail "lock not at repo root"
bash ~/.agents/session-close.sh "$(pwd)" "Claude Code" "Deep path test" "n" || fail "session-close failed"
[ ! -f "$ROOT/.agents/active-session.lock" ] || fail "lock not removed (D)"
pass "Scenario D"
popd >/dev/null

######## Scenario E ########
note "Scenario E: pre-commit hook warns on missing README.md/AGENTS"
mkdir -p "$ROOT/examples/Structure_Test/NewArea"
echo "x" > "$ROOT/examples/Structure_Test/NewArea/foo.txt"
git add "$ROOT/examples/Structure_Test/NewArea/foo.txt"
set +e
OUT=$(git commit -m "test: add NewArea without required files" 2>&1 || true)
set -e
echo "$OUT" | grep -q "missing README.md or AGENTS.md" || fail "pre-commit warning not shown"
note "Commit output contained expected warning (commit may or may not have proceeded)"
pass "Scenario E"

######## Scenario F ########
note "Scenario F: directory scaffolding"
bash "$ROOT/Biz_Ops/IT/scripts/new_dir.sh" "Examples_Governance_Test_$TS" --spec "business_spec/Ai First Company Spec.md" || fail "new_dir.sh failed"
[ -f "$ROOT/Examples_Governance_Test_$TS/README.md" ] || fail "scaffold README.md missing"
[ -f "$ROOT/Examples_Governance_Test_$TS/AGENTS.md" ] || fail "scaffold AGENTS missing"
[ -f "$ROOT/Examples_Governance_Test_$TS/OWNERS.md" ] || fail "scaffold OWNERS missing"
pass "Scenario F"

######## Scenario G ########
note "Scenario G: ..gitignore ignores .transcripts"
mkdir -p "$WORKDIR/.transcripts" && echo "dummy" > "$WORKDIR/.transcripts/sample.txt"
ST=$(git status --porcelain "$WORKDIR/.transcripts" || true)
if [ -z "$ST" ]; then pass "Scenario G"; else fail ".transcripts not ignored"; fi

######## Scenario H ########
note "Scenario H: stubs and protocol pointers present"
grep -q "Export transcript snapshot" "$ROOT/CLAUDE.md" || fail "root CLAUDE.md missing pre-close checklist"
grep -q "Transcript Export (Default ON)" "$HOME/.agents/README.md" || fail "global protocol missing transcript section"
pass "Scenario H"

note "Cleaning up test branch and working files"
echo -e "\n${GREEN}ALL TESTS PASSED${NC}"

popd >/dev/null

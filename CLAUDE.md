# Claude Context: Ai First (Stub)

- Protocol and tools: `~/.agents/README.md`
- Profile and preferences: `~/AGENTS.md`
- Start: `bash ~/.agents/session-open.sh $(pwd) "Claude Code"`
- Finish: `bash ~/.agents/session-close.sh $(pwd) "Claude Code" "Summary" "n"`

Project-specific pointers
- Check `README.md` → "Current State" before work.
- Link changes back to `business_spec/` where applicable.
- Keep large files and secrets out of git; verify with `.gitignore`.

Before closing (from this directory):
- Export transcript to `.transcripts/` as `YYYY-MM-DDTHH-MM-SSZ_Claude Code.jsonl`.
- Compose summary from conversation (problems→solutions, key decisions & why), then call session-close with the summary.

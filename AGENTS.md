AGENTS.md — Ai First (Stub)

- Protocol and tools: `~/.agents/README.md`
- Profile and preferences: `~/AGENTS.md`
- Start/finish sessions with shared scripts. Run from repo root.

Project-specific pointers
- Read `README.md` → "Current State" first.
- Specs live in `business_spec/` (source of truth). Link material changes to specs.
- Keep large files/secrets out of git; verify with `.gitignore`.

New Directory Governance (summary)
- Use `scripts/new_dir.sh` to scaffold new durable areas (README, AGENTS stub, OWNERS, .gitkeep) and link to `business_spec/*`.
- Templates: see `templates/README.template.md`, `templates/AGENTS.stub.md`, `templates/OWNERS.template.md`.
- Prefer explicit tradeoffs and risks when proposing alternatives.
- Do not include secrets or personal data in this repo-level AGENTS.md; rely on the global file for personal profile.

Security & Privacy
- Treat `business_ops/legal/` as sensitive; do not exfiltrate confidential information.
- Never commit credentials or tokens; use environment variables or secure stores.
- This is a git repository with automated daily backups (4 AM git sync, 4:30 AM NAS backup).
- See `.gitignore` for files excluded from version control.

Update Procedure
- For project rules or runbooks: update in place with concise changes.
- For strategy/product shifts: update the relevant spec in `business_spec/` and reference it here if needed.
- Avoid duplication with the global AGENTS.md; link or defer to it for personal profile and universal preferences.
- When adding new agents to `.claude/agents/`, document them in the "Custom Claude Agents" section above.

Notes
- This is an active git repository tracked at https://github.com/nomadonwheels196/aifirst
- Automated backups run daily at 4:00 AM (git sync) and 4:30 AM (NAS backup)
- For detailed system documentation, see `~/personal/system/docs/`

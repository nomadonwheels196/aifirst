# Agent Guidance (Project Stub)

This project uses centralized agent protocol and profile.
- Protocol & tools: ~/.agents/README.md
- Personal profile: ~/AGENTS.md
- Style guide: ~/.meta/STYLE_GUIDE.md

Keep this file minimal; do not duplicate agent docs here.

Session protocol (mandatory)
- On start: run `bash ~/.agents/session-open.sh $(pwd) "Codex CLI"`.
- On finish: run `bash ~/.agents/session-close.sh $(pwd) "Codex CLI"`.
- Shorthand triggers accepted in conversation: "run session open" and "run session close" (maps to the scripts above).

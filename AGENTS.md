AGENTS.md — Ai First Project Agent Guide

Scope
- Applies to the entire directory tree under this folder.
- Inherits from the global AGENTS.md at `~/AGENTS.md`. Deeper files here override conflicts.

Purpose
- Provide agent-facing guidance specific to the Ai First project: structure, workflows, and conventions.
- Reference the global profile and collaboration preferences without duplicating personal details.

Project Overview
- Project: Ai First — proactive AI coaching platform embedded in daily workflows to drive AI adoption and transformation.
- Mission: Turn AI investment into human capability and measurable ROI by changing how people think and work with AI.
- Structure:
  - `specs/` — Company strategy and specifications (source of truth; see `specs/core/`).
  - `ai-first-site/` — Static website (semantic HTML + Pico.css; served by Nginx via Docker).
  - `Training Content/` — AI training materials and course content.

Authoritative Specs
- Primary references live in `specs/core/`:
  - Ai First Company Spec.md
  - Mission.md
  - Product Strategy.md
  - Ai First Framework.md (Shadow → Assess → Plan → Demonstrate → Enable → Iterate)
  - Guiding Principles.md
  - Customers.md
  - Value Proposition.md
  - Boundaries and Gaurdrails.md
- All material changes should link back to these specs and note rationale, impact, and author.

Agent Usage
- Follow the global AGENTS.md for tone (direct, candid, growth-focused) and privacy rules.
- Use this file for project-specific rules, workflows, and runbooks.
- When conflicts arise, this file overrides the global file within this directory tree.

Runbook — Website
- Local run:
  - `cd ai-first-site && docker compose up -d`
  - Access: `http://localhost:8080/`
- Architecture: static HTML in `ai-first-site/site/`, served by Nginx (no build step).
- Edit flow: modify files in `ai-first-site/site/`; test locally before deploy.

Development Principles
- Values over bureaucracy: favor clarity and impact over ceremony.
- Disagree openly, then commit: challenge with purpose; execute together.
- Autonomy with accountability: move fast, own outcomes.
- We use what we build: dogfood the platform and site.

Collaboration Conventions
- Keep changes small and traceable; reference related spec docs in commit notes or change logs.
- Prefer explicit tradeoffs and risks when proposing alternatives.
- Do not include secrets or personal data in this repo-level AGENTS.md; rely on the global file for personal profile.

Security & Privacy
- Treat `specs/business_structure/` and legal docs as sensitive; do not exfiltrate.
- Never commit credentials or tokens; use environment variables or secure stores.
- If this directory becomes a git repo, review whether to `.gitignore` sensitive files and whether to include or exclude this AGENTS.md.

Update Procedure
- For project rules or runbooks: update in place with concise changes.
- For strategy/product shifts: update the relevant spec in `specs/core/` and reference it here if needed.
- Avoid duplication with the global AGENTS.md; link or defer to it for personal profile and universal preferences.

Notes
- This directory is not a git repository at the time of writing. When initializing git, decide whether to include this file in version control or ignore it based on sensitivity.

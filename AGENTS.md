AGENTS.md — Ai First Project Agent Guide

Scope
- Applies to the entire directory tree under this folder.
- Inherits from the global AGENTS.md at `~/AGENTS.md`. Deeper files here override conflicts.

Purpose
- Provide agent-facing guidance specific to the Ai First project: structure, workflows, and conventions.
- Reference the global profile and collaboration preferences without duplicating personal details.

⚠️ SESSION PROTOCOL (REQUIRED)

On Start:
- Run: bash ~/.agents/session-open.sh $(pwd) "[Agent Name]"
  - Agent Names: "Claude Code", "Gemini CLI", "Ollama", "Codex"
- Read: README.md "Current State" section (if exists)
- Read: .agents/handoff.md for previous session context (if exists)

Before Finish (if you made changes):
1. Review changes: git status && git diff
2. **Check what you're committing** - Verify no large files, credentials, or secrets are being added
3. Commit them: git add -A && git commit -m "Descriptive message"
   - Reference related spec docs in commit messages when applicable

On Finish:
- Run: bash ~/.agents/session-close.sh $(pwd) "[Agent Name]" "Your summary of what you did" "n"
  - Write a concise summary of what you accomplished
  - Set last parameter to "y" if README.md objectives/strategy were changed

Multi-Agent Coordination

Multiple AI agents work on this project:
- **Claude Code** - Primary development and documentation
- **Gemini CLI** - Analysis, troubleshooting, research
- **Ollama** - Conversational support via Open WebUI
- **Codex** - Code generation and assistance

Session scripts (~/.agents/):
- Prevent concurrent editing conflicts via session locking
- Maintain context through .agents/handoff.md
- Track changes in .agents/changelog.md
- Coordinate git pull/push operations

Best Practices:
- Always run session-open at start and session-close at end
- Check .agents/handoff.md for context from previous agent
- Write clear session summaries for the next agent
- Commit your work before closing the session

Project Overview
- Project: Ai First — proactive AI coaching platform embedded in daily workflows to drive AI adoption and transformation.
- Mission: Turn AI investment into human capability and measurable ROI by changing how people think and work with AI.
- Git Repository: https://github.com/nomadonwheels196/aifirst (public, team-shared)
- Location: `~/work/aifirst/` (part of life-as-code system)
- Structure:
  - `business_spec/` — Company strategy and specifications (source of truth)
  - `business_ops/` — Business operations, legal, structure planning
  - `examples/` — Real-world case studies demonstrating our approach
  - `gtm/` — Go-to-market (marketing, sales, customer success)
  - `people/` — Recruiting, onboarding, HR
  - `product_management/` — Product specs, research, use cases
  - `gtm/marketing/ai-first-site/` — Static website (semantic HTML + Pico.css; served by Nginx via Docker)

Authoritative Specs
- Primary references live in `business_spec/`:
  - Ai First Company Spec.md
  - Mission.md
  - Product Strategy.md
  - Ai First Framework.md (Shadow → Assess → Plan → Demonstrate → Enable → Iterate)
  - Guiding Principles.md
  - Customers.md
  - Value Proposition.md
  - Boundaries and Gaurdrails.md
- All material changes should link back to these specs and note rationale, impact, and author.

Custom Claude Agents
- Located in `.claude/agents/` directory
- **case-study-extractor**: Transforms conversations/implementations into multi-audience case studies
  - Extracts problem, process, solution, challenges, impact
  - Creates canonical story + audience-specific analyses
  - Uses symlinks for story distribution (not duplication)
  - Follows Ai First style guide (conversational, vulnerable, concrete)
  - Generates files in proper directory structure with cross-references
- **clarity-review**: Comprehensive audit of markdown files for consistency and clarity
- **legal-compliance-auditor**: Multi-jurisdictional legal compliance review (USA, Cayman, Spain/EU)

Agent Usage
- Follow the global AGENTS.md for tone (direct, candid, growth-focused) and privacy rules.
- Use this file for project-specific rules, workflows, and runbooks.
- When conflicts arise, this file overrides the global file within this directory tree.

Runbook — Website
- Local run:
  - `cd ~/work/aifirst/gtm/marketing/ai-first-site && docker compose up -d`
  - Access: `http://localhost:8080/`
- Architecture: static HTML in `site/`, served by Nginx (no build step).
- Edit flow: modify files in `site/`; test locally before deploy.

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

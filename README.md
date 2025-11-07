# AI First

## Purpose
Turn AI investment into human capability and measurable ROI by changing the way people think and work with AI. This repository contains company specifications, business documentation, and operational materials for AI First.

## Current State
- Last Updated: 2025-11-07
- Status: active
- Last Agent/Owner: Codex

### Active Work
- None at the moment

### Recent Accomplishments
- Repo guidance standardized to use shared multi-agent protocol

### Known Issues
- None tracked here (see business_spec/ for strategic items)

### Next Priority
1. Keep specs in `business_spec/` aligned with decisions
2. Add project-specific TODOs to `.agents/context.yaml`

## Context & Inheritance
- Inherits scope and principles from parent `../README.md` and root `README.md`.
- Agent guidance: `AGENTS.md` and `~/.agents/README.md`.
- Project-specific guidance: [CLAUDE.md](CLAUDE.md)

## Standards & Protocol
- Style Guide: `~/.meta/STYLE_GUIDE.md`
- Agent Protocol: `~/.agents/README.md`
- Personal Profile: `~/AGENTS.md`

## Scope
This repository contains all company-level documentation and operational materials:

```
~/work/aifirst/
├── business_ops/         # Business operations, legal, structure planning
├── business_spec/        # Core company specs (SOURCE OF TRUTH)
├── examples/             # Real-world case studies and examples
├── gtm/                  # Go-to-market (marketing, sales, customer success)
├── people/               # Recruiting, onboarding, HR
├── product_management/   # Product specs, research, use cases
├── platform_eng/         # Platform engineering docs
├── product_eng/          # Product engineering docs
└── .claude/              # Claude Code agent configurations
```

## Inputs
- Strategic decisions and business requirements
- Product development insights
- Customer feedback and case studies
- Market research and competitive analysis

## Outputs
- Company specifications and strategy documents
- Product documentation and use cases
- Case studies and examples
- Marketing and sales materials
- Operational runbooks and procedures

## Primary Owner
- Role: Travis (Founder/CEO)
- Review cadence: monthly
- Approval: when changes require legal/security review

## Contributors
- Roles/Teams: All team members, AI agents (Codex, Claude)
- Change process: PR/review path, or automated commits at 4:00 AM

## Security & Privacy
- Never commit credentials or tokens; use environment variables or secure stores.
- Keep large files and secrets out of git; verify with `..gitignore`.
- See repo `AGENTS.md` and `~/.agents/README.md`.

## Related
- Company Specs: [business_spec/](business_spec/) - Mission, strategy, framework (source of truth)
- Examples & Case Studies: [examples/](examples/) - Real implementations demonstrating our approach
- Product Documentation: [product_management/](product_management/) - MVP specs, research, use cases
- Git Repository: https://github.com/nomadonwheels196/aifirst (public, team-shared)

## Operational Notes
- **Location**: `~/work/aifirst/` (part of life-as-code system)
- **Backup**: Automated daily at 4:00 AM (git sync + NAS backup)
- **Documentation**: See `~/personal/system/docs/` for infrastructure details

### Getting Started

#### New Team Members
Start here: [Case Study: Life as Code](people/onboarding/case-study-life-as-code.md) - Understand how we work

#### Product Team
Read: [Product Use Cases](product_management/use_cases/) - What we're building and why

#### Sales/Marketing
Use: [Customer Case Studies](gtm/sales/case_studies/) - Real stories, real value

## Change Log
See PR history or local `CHANGELOG.md`.

## Contributing
- For authors (human or AI) creating or updating this folder: keep this README.md concise and actionable.
- Use `scripts/new_dir.sh` to scaffold new areas when appropriate.
- Link changes to any relevant spec (top-level or local), not only `business_spec/*`. If a spec governs or informs this folder, reference it explicitly.
- Avoid duplicating content that exists in parent README.md; link instead.
- Update specs with version notes
- Add new examples and case studies
- Keep documentation current
- Commit regularly (or let the 4 AM automation handle it)

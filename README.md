# Ai First

## Purpose
Turn AI investment into human capability and measurable ROI by changing the way people think and work with Ai. This repository contains company specifications, business documentation, and operational materials for Ai First.

**⚠️ CRITICAL:** All agents must follow company naming conventions. See [CLAUDE.md](CLAUDE.md) for mandatory capitalization rules.

## Current State
- Last Updated: 2025-11-15
- Status: active
- Last Agent/Owner: Claude Code

### Active Work
- None at the moment

### Recent Accomplishments
- Repo guidance standardized to use shared multi-agent protocol
- Business spec documents standardized with mandatory naming conventions (Ai First, Ai vs AI)
- Created unified business_spec.md and customer_story.md narratives
- Added Spanish translations (business_spec_es.md, customer_story_es.md)
- Established style guide for all agents (CLAUDE.md, business_spec/STYLE_GUIDE.md)

### Known Issues
- None tracked here (see business_spec/ for strategic items)

### Next Priority
1. Keep specs in `business_spec/` aligned with decisions
2. Add project-specific TODOs to `.agents/context.yaml`

### SOPs
- Company SOPs: `Company_SOPs/`
- Business Ops SOPs: `Biz_Ops/SOPs/`
- GTM SOPs: `Growth_and_CX/SOPs/`
- IT SOPs: `Biz_Ops/IT/SOPs/`
- People SOPs: `Biz_Ops/People_and_Culture/SOPs/`
- Platform Eng SOPs: `Product_and_Eng/Platform_Eng/SOPs/`
- Product Eng SOPs: `Product_and_Eng/Product_Eng/SOPs/`
- Product Management SOPs: `Product_and_Eng/Product_Management/SOPs/`

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
├── biz_ops/                           # Business operations, legal, structure planning
│   ├── finance/
│   ├── legal/
│   ├── people_and_culture/
│   └── it/
├── business_spec/                     # Core company specs (SOURCE OF TRUTH)
├── examples/                          # Real-world case studies and examples
├── growth_and_cx/                     # Go-to-market (marketing, sales, customer success)
├── product_and_eng/                   # Product & Engineering
│   ├── product_management/            # Product specs, research, use cases
│   ├── platform_eng/                  # Platform engineering docs
│   └── product_eng/                   # Product engineering docs
└── .claude/                           # Claude Code agent configurations
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
Start here: [Case Study: Life as Code](Biz_Ops/People_and_Culture/onboarding/case-study-life-as-code.md) - Understand how we work

#### Product Team
Read: [Product Use Cases](Product_and_Eng/Product_Management/use_cases/) - What we're building and why

#### Sales/Marketing
Use: [Customer Case Studies](Growth_and_CX/sales/case_studies/) - Real stories, real value

## Change Log
See PR history or local `CHANGELOG.md`.

## Contributing
- For authors (human or AI) creating or updating this folder: keep this README.md concise and actionable.
- Use `Biz_Ops/IT/scripts/new_dir.sh` to scaffold new areas when appropriate.
- Link changes to any relevant spec (top-level or local), not only `business_spec/*`. If a spec governs or informs this folder, reference it explicitly.
- Avoid duplicating content that exists in parent README.md; link instead.
- Update specs with version notes
- Add new examples and case studies
- Keep documentation current
- Commit regularly (or let the 4 AM automation handle it)

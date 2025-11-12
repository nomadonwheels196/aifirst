# AI First Examples & Case Studies

## Purpose
This directory contains real-world examples of AI First principles in action. These are not theoretical—they document actual implementations and serve as templates for customers and team members.

## Current State
- Last Updated: 2025-11-07
- Status: active
- Last Agent/Owner: Product team

## Context & Inheritance
- Inherits scope and principles from parent `../README.md` and root `README.md`.
- Agent guidance: `AGENTS.md` and `~/.agents/README.md`.

## Scope
Real implementation stories and case studies that demonstrate AI First methodology. These documents serve multiple audiences with tailored versions:

```
examples/
└── case_studies/          # Real implementation stories
    └── life-as-code-story.md   # Travis's document organization system
```

## Inputs
- Real-world AI implementation experiences
- Customer success stories
- Team member workflows and solutions
- Product development insights

## Outputs
- Case studies for different audiences (customers, team members, product team)
- Implementation templates
- Documentation of AI First methodology in practice

## Primary Owner
- Role: Product team / Travis
- Review cadence: quarterly
- Approval: Travis approval required for new case studies

## Contributors
- Roles/Teams: All team members, customers (with permission)
- Change process: Submit to Travis or product team for review

## Security & Privacy
- Obtain permission before documenting customer implementations
- Redact sensitive business information
- Never commit credentials or tokens; use environment variables or secure stores.
- See repo `AGENTS.md` and `~/.agents/README.md`.

## Related
- Specs: [Company Mission](../business_spec/Mission.md), [AI First Framework](../business_spec/Ai%20First%20Framework.md), [Product Strategy](../business_spec/Product%20Strategy.md)
- Teams: Product team, marketing, sales

## Operational Notes

### Available Case Studies

#### [Life as Code: My Story of Partnership with AI](case_studies/life-as-code-story.md)

**What**: Complete personal and business information organization system
**Who**: Travis Sheppard (Founder)
**Time to Build**: 2 hours
**Outcome**: Automated backups, version control, hundreds of hours saved

**Key Themes**:
- Human-AI collaboration (not command and control)
- ADHD-friendly design
- Incremental implementation
- Comprehensive automation

**Audience-Specific Versions**:
- **New Hires**: [Onboarding version](../people/onboarding/case-study-life-as-code.md) - How we work at AI First
- **Product Team**: [Use case](../product_management/use_cases/ai-coach-document-organization.md) - What to build
- **Sales/Customers**: [Customer story](../gtm/sales/case_studies/life-as-code-customer-story.md) - ROI and value prop

### How to Use These Examples

**For New Team Members**: Read the onboarding version first. It explains our working philosophy and expectations.

**For Product Team**: Use the detailed use cases to understand what features to build and why they matter.

**For Sales/Marketing**: Use the customer stories to demonstrate real value and ROI.

**For Everyone**: These are living documents. As we learn more, we update them. Found something missing? Open a discussion or submit a PR.

### Contributing New Case Studies

Have a great AI First story? Document it!

**Template Structure**:
1. The Problem (what pain existed)
2. The Conversation (how human and AI collaborated)
3. The Build (what was created)
4. The Challenges (what went wrong and how it was fixed)
5. The Result (measurable outcomes)
6. The Lesson (what this teaches us)

**Submit to**: Travis or product team for review

## Change Log
See PR history or local `CHANGELOG.md`.

## Contributing
- For authors (human or AI) creating or updating this folder: keep this README.md concise and actionable.
- Use `Biz_Ops/IT/scripts/new_dir.sh` to scaffold new areas when appropriate.
- Link changes to any relevant spec (top-level or local), not only `business_spec/*`. If a spec governs or informs this folder, reference it explicitly.
- Avoid duplicating content that exists in parent README.md; link instead.
- These are living documents. As we learn more, we update them.

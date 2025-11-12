# Finance Policies

## Purpose
This folder contains company-wide finance policies including spend policy, travel policy, and approvals matrices. These policies govern financial decision-making, spending authority, and operational guidelines for the entire organization. The goal is to ensure consistent application of financial controls while enabling efficient business operations.

## Current State
- Last Updated: 2025-11-07
- Status: active
- Last Agent/Owner: Finance team

## Context & Inheritance
- Inherits scope and principles from parent `../README.md` and root `README.md`.
- Agent guidance: `AGENTS.md` and `~/.agents/README.md`.

## Scope
Contains company-wide finance policies including spending guidelines, travel and entertainment policies, approval authorities, and financial decision-making frameworks. These are concise policy documents that reference the global AGENTS profile for personal preferences where applicable. Does not contain employee-specific information or actual expense/travel data.

## Inputs
- Company strategy and operational requirements
- Risk management frameworks
- Compliance and regulatory requirements
- Industry best practices
- Budget constraints and financial targets
- Employee feedback and operational needs

## Outputs
- Spend policy documentation (guidelines and limits)
- Travel and entertainment policy
- Approvals matrix (roles, authorities, and thresholds)
- Policy communication materials
- Policy exception procedures
- Policy version history and change logs

## Primary Owner
- Role: CFO / VP Finance
- Review cadence: annually
- Approval: when policy changes are made, requires CFO/executive approval

## Contributors
- Roles/Teams: Finance leadership, HR team, Legal team, department heads, employees
- Change process: PR/review with approval from CFO before merging, communicate changes to all employees

## Security & Privacy
- WARNING: This folder should contain ONLY policy documentation, never employee-specific data or actual spending/travel records.
- Do not store employee expense reports, travel bookings, or any PII.
- No actual spending data or employee-specific approvals should be committed here.
- Keep policy documents and guidelines only; actual expense and travel data stays in external systems.
- Never commit credentials or tokens; use environment variables or secure stores.
- See repo `AGENTS.md` and `~/.agents/README.md`.

## Related
- Specs: `../../business_spec/`
- Policies: Reference global `AGENTS.md` and `~/.agents/README.md` for personal preferences
- Teams: Finance team, HR team, all employees
- Runbooks/Docs: Expense Management in `../Accounting/Expense_Management/`, Procurement in `../Procurement/`

## Operational Notes
- Review and update policies annually or when business needs change
- Communicate policy changes clearly to all employees via appropriate channels
- Provide training on policy updates as needed
- Track policy exceptions and review for potential policy adjustments
- Ensure policies are accessible and understandable to all employees
- Balance controls with operational efficiency
- Coordinate policy changes with HR, Legal, and department heads
- Maintain version history and document rationale for policy changes

## Change Log
See PR history or local `CHANGELOG.md`.

## Contributing
- For authors (human or AI) creating or updating this folder: keep this README.md concise and actionable.
- Use `Biz_Ops/IT/scripts/new_dir.sh` to scaffold new areas when appropriate.
- Link changes to any relevant spec (top-level or local), not only `business_spec/*`. If a spec governs or informs this folder, reference it explicitly.
- Avoid duplicating content that exists in parent README.md; link instead.

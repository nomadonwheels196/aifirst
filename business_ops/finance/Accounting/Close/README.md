# Close

## Purpose
This folder contains materials and documentation for month-end, quarter-end, and year-end close processes. It includes standardized checklists, reconciliation templates, and procedural documentation to ensure consistent and accurate financial reporting. The goal is to streamline the close process and maintain audit-ready documentation.

## Current State
- Last Updated: 2025-11-07
- Status: active
- Last Agent/Owner: Accounting team

## Context & Inheritance
- Inherits scope and principles from parent `../README.md` and root `README.md`.
- Agent guidance: `AGENTS.md` and `~/.agents/README.md`.

## Scope
Contains close process documentation, checklists for each period type (month/quarter/year), reconciliation templates, and procedural guides. Does not contain actual reconciliations with sensitive data, account balances, or transaction details. Focus is on process standardization and templates.

## Inputs
- Accounting policies and standards
- Close calendar and deadlines
- Reconciliation requirements
- Reporting requirements
- Audit requirements and checklists

## Outputs
- Month-end close checklists
- Quarter-end close checklists
- Year-end close checklists
- Account reconciliation templates
- Close calendar and timeline
- Process documentation and runbooks
- Close metrics and KPIs

## Primary Owner
- Role: Controller / Accounting Manager
- Review cadence: monthly (post-close review)
- Approval: when changes to close procedures or timelines are made

## Contributors
- Roles/Teams: Accounting team, FP_And_A team, external auditors
- Change process: PR/review with approval from Controller before merging

## Security & Privacy
- WARNING: This folder should contain ONLY templates and process documentation, never actual financial data.
- Do not store completed reconciliations with account balances or transaction details.
- Use templates only; actual reconciliations should be stored in secure financial systems.
- No sensitive data, PII, or confidential financial information should be committed here.
- Never commit credentials or tokens; use environment variables or secure stores.
- See repo `AGENTS.md` and `~/.agents/README.md`.

## Related
- Specs: `../../../business_spec/`
- Policies: `../Policies/` (accounting policies)
- Teams: Accounting team, FP_And_A team, external auditors
- Runbooks/Docs: Chart of Accounts in `../Chart_Of_Accounts/`

## Operational Notes
- Monthly close typically occurs within 5-7 business days after month-end
- Quarterly close includes additional review for 10-Q filing
- Year-end close involves coordination with external auditors
- Review and update checklists quarterly to incorporate improvements
- Track close metrics (days to close, issues identified) to drive process improvement

## Change Log
See PR history or local `CHANGELOG.md`.

## Contributing
- For authors (human or AI) creating or updating this folder: keep this README.md concise and actionable.
- Use `scripts/new_dir.sh` to scaffold new areas when appropriate.
- Link changes to any relevant spec (top-level or local), not only `business_spec/*`. If a spec governs or informs this folder, reference it explicitly.
- Avoid duplicating content that exists in parent README.md; link instead.

# Indirect Tax (IVA/VAT)

## Purpose
This folder contains working notes and process documentation for indirect tax (IVA/VAT) compliance including registrations, return schedules, and evidence collection. It supports indirect tax compliance activities across jurisdictions and coordinates with external tax advisors. For formal legal analysis and tax memos, refer to the legal department's documentation.

## Current State
- Last Updated: 2025-11-07
- Status: active
- Last Agent/Owner: Tax team

## Context & Inheritance
- Inherits scope and principles from parent `../README.md` and root `README.md`.
- Agent guidance: `AGENTS.md` and `~/.agents/README.md`.

## Scope
Contains indirect tax process documentation, registration checklists, return filing schedules, evidence collection procedures, and coordination notes. Does not contain actual tax returns, VAT/IVA registration numbers, or confidential tax filings. Focus is on process documentation and working notes only.

## Inputs
- VAT/IVA regulations by jurisdiction
- Sales and purchase transaction data (from accounting systems)
- Cross-border transaction requirements
- Tax advisor guidance on indirect tax matters
- Registration requirements by country
- Evidence of supply requirements

## Outputs
- Indirect tax compliance calendar
- Registration process documentation and checklists
- Return preparation procedures
- Evidence collection and retention guidelines
- Jurisdiction-specific compliance notes
- Coordination procedures with external advisors
- VAT/IVA account reconciliation templates

## Primary Owner
- Role: Tax Manager / Controller
- Review cadence: quarterly
- Approval: when changes to indirect tax processes or new registrations are required

## Contributors
- Roles/Teams: Tax team, Accounting team, Legal team, external tax advisors
- Change process: PR/review with approval from Tax Manager before merging

## Security & Privacy
- WARNING: This folder should contain ONLY process documentation and working notes, never actual tax filings or registration details.
- Do not store VAT/IVA registration numbers, actual tax returns, or confidential filings.
- No sensitive tax data or transaction-level details should be committed here.
- Keep process docs and evidence procedures only; actual returns and registrations stay with external advisors or secure systems.
- Never commit credentials or tokens; use environment variables or secure stores.
- See repo `AGENTS.md` and `~/.agents/README.md`.

## Related
- Specs: `../../../business_spec/`
- Policies: `../../Policies/` (finance policies)
- Legal Memos: `../../../legal/Tax/Spain - Pre-Incorporation Expenses and IVA.md` (example)
- Teams: Tax team, Accounting team, Legal team, external tax advisors
- Runbooks/Docs: Tax procedures in `../`

## Operational Notes
- Maintain indirect tax compliance calendar for all registered jurisdictions
- Monitor registration thresholds for new jurisdictions as business expands
- Coordinate with external advisors on return preparation and filing
- Collect and maintain evidence of supply for cross-border transactions
- Review VAT/IVA accounts monthly during close process
- Stay current on changes to indirect tax law in operating jurisdictions
- Document processes for new jurisdiction registrations
- Maintain coordination with Legal on pre-incorporation expenses and other complex matters

## Change Log
See PR history or local `CHANGELOG.md`.

## Contributing
- For authors (human or AI) creating or updating this folder: keep this README.md concise and actionable.
- Use `scripts/new_dir.sh` to scaffold new areas when appropriate.
- Link changes to any relevant spec (top-level or local), not only `business_spec/*`. If a spec governs or informs this folder, reference it explicitly.
- Avoid duplicating content that exists in parent README.md; link instead.

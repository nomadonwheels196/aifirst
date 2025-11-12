# Tax

## Purpose
This folder contains documentation and working notes for tax compliance and planning activities including corporate income tax, indirect tax (IVA/VAT), withholding tax, and international tax topics. The goal is to ensure tax compliance, support tax planning initiatives, and coordinate between Finance, Legal, and external tax advisors.

## Current State
- Last Updated: 2025-11-07
- Status: active
- Last Agent/Owner: Tax team

## Context & Inheritance
- Inherits scope and principles from parent `../README.md` and root `README.md`.
- Agent guidance: `AGENTS.md` and `~/.agents/README.md`.

## Scope
Contains tax process documentation, planning notes, compliance calendars, and coordination procedures. Does not contain actual tax filings, tax returns, sensitive tax IDs, or confidential tax advice. Focus is on process documentation and planning notes only. For formal legal/tax memos, see `business_ops/legal/Tax/`.

## Inputs
- Tax regulations and compliance requirements
- Financial data from accounting systems
- International operations and tax jurisdictions
- Tax planning strategies
- External tax advisor guidance
- Statutory filing requirements

## Outputs
- Tax compliance calendar and deadlines
- Tax planning working notes
- Tax process documentation
- Coordination procedures with external advisors
- Tax account reconciliation templates
- Provision calculation methodologies
- Documentation requirements checklists

## Primary Owner
- Role: Tax Manager / Controller / CFO
- Review cadence: quarterly
- Approval: when changes to tax processes or planning strategies are made

## Contributors
- Roles/Teams: Tax team, Accounting team, Legal team, external tax advisors
- Change process: PR/review with approval from Tax Manager or CFO before merging

## Security & Privacy
- WARNING: This folder should contain ONLY process documentation and planning notes, never actual tax filings or sensitive tax data.
- Do not store tax returns, actual filings, tax IDs (EIN, VAT numbers), or confidential tax advice.
- No sensitive tax data or entity-specific financial information should be committed here.
- Keep planning notes and process docs only; actual tax filings and detailed advice stay with external advisors or secure systems.
- Never commit credentials or tokens; use environment variables or secure stores.
- See repo `AGENTS.md` and `~/.agents/README.md`.

## Related
- Specs: `../../business_spec/`
- Policies: `../Policies/` (finance policies), `../../legal/Tax/` (formal tax legal memos)
- Teams: Tax team, Accounting team, Legal team, external tax advisors
- Runbooks/Docs: Payroll tax in `../Accounting/Payroll/`, Indirect Tax in `./Indirect_Tax_IVA/`

## Operational Notes
- Maintain tax compliance calendar with all federal, state, local, and international filing deadlines
- Coordinate quarterly tax provision calculations with accounting close
- Work with external tax advisors on annual tax returns and planning
- Review tax accounts monthly during close process
- Monitor changes in tax law and assess impact on company
- Document tax positions and maintain support for significant judgments
- Coordinate with Legal on tax structure and international expansion
- Maintain relationships with tax authorities and handle inquiries/audits

## Change Log
See PR history or local `CHANGELOG.md`.

## Contributing
- For authors (human or AI) creating or updating this folder: keep this README.md concise and actionable.
- Use `Biz_Ops/IT/scripts/new_dir.sh` to scaffold new areas when appropriate.
- Link changes to any relevant spec (top-level or local), not only `business_spec/*`. If a spec governs or informs this folder, reference it explicitly.
- Avoid duplicating content that exists in parent README.md; link instead.

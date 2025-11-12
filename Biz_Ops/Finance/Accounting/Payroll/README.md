# Payroll

## Purpose
This folder contains documentation and templates for payroll operations covering both employees and contractors. It includes payroll schedules, processing procedures, compliance controls, and coordination with external payroll providers. The goal is to ensure accurate, timely, and compliant payroll processing while maintaining proper internal controls.

## Current State
- Last Updated: 2025-11-07
- Status: active
- Last Agent/Owner: Accounting team

## Context & Inheritance
- Inherits scope and principles from parent `../README.md` and root `README.md`.
- Agent guidance: `AGENTS.md` and `~/.agents/README.md`.

## Scope
Contains payroll process documentation, processing schedules, compliance checklists, payroll calendar, and procedures for working with payroll providers. Does not contain employee or contractor personal data, salary information, bank details, or tax IDs. Focus is on process templates and operational procedures only.

## Inputs
- Payroll provider systems and integrations
- Employment agreements and contractor terms
- Tax and compliance requirements
- Time and attendance data procedures
- Benefits and deductions policies
- Payroll calendar and deadlines

## Outputs
- Payroll processing checklists and schedules
- Payroll calendar (pay periods and deadlines)
- Compliance documentation templates
- Payroll provider integration guides
- Reconciliation procedures
- Year-end processing procedures (W-2, 1099, etc.)
- Internal control documentation

## Primary Owner
- Role: Payroll Manager / Controller
- Review cadence: quarterly
- Approval: when changes to payroll procedures or compliance requirements are made

## Contributors
- Roles/Teams: Payroll team, HR team, Accounting team, external payroll providers
- Change process: PR/review with approval from Payroll Manager or Controller before merging

## Security & Privacy
- WARNING: This folder should contain ONLY process documentation and templates, never actual employee or contractor data.
- Do not store employee PII, contractor information, salary details, bank account information, or tax IDs.
- No actual payroll records, payment details, or personal information should be committed here.
- Keep process docs and templates only; actual payroll data stays in secure payroll systems.
- Never commit credentials, API keys, or payroll system credentials; use environment variables or secure stores.
- See repo `AGENTS.md` and `~/.agents/README.md`.

## Related
- Specs: `../../../business_spec/`
- Policies: `../Policies/` (accounting policies), HR policies
- Teams: Payroll team, HR team, Accounting team, Tax team
- Runbooks/Docs: Tax compliance procedures in `../../Tax/`

## Operational Notes
- Process payroll according to established calendar (bi-weekly, semi-monthly, etc.)
- Review and approve payroll before submission to payroll provider
- Reconcile payroll accounts monthly as part of close process
- Maintain compliance with federal, state, and local tax requirements
- Coordinate with HR on new hires, terminations, and changes
- Process year-end tax forms (W-2, 1099) by statutory deadlines
- Review payroll processes quarterly for efficiency improvements
- Maintain proper segregation of duties in payroll processing

## Change Log
See PR history or local `CHANGELOG.md`.

## Contributing
- For authors (human or AI) creating or updating this folder: keep this README.md concise and actionable.
- Use `Biz_Ops/IT/scripts/new_dir.sh` to scaffold new areas when appropriate.
- Link changes to any relevant spec (top-level or local), not only `business_spec/*`. If a spec governs or informs this folder, reference it explicitly.
- Avoid duplicating content that exists in parent README.md; link instead.

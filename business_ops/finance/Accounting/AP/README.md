# Accounts Payable (AP)

## Purpose
This folder contains documentation and templates for Accounts Payable processes including vendor onboarding, invoice processing, payment workflows, and vendor management. It ensures consistent AP operations, proper internal controls, and timely vendor payments while maintaining audit trails and compliance.

## Current State
- Last Updated: 2025-11-07
- Status: active
- Last Agent/Owner: Accounting team

## Context & Inheritance
- Inherits scope and principles from parent `../README.md` and root `README.md`.
- Agent guidance: `AGENTS.md` and `~/.agents/README.md`.

## Scope
Contains AP process documentation, vendor onboarding templates, invoice approval workflows, payment procedures, and internal control documentation. Does not contain actual vendor information, payment details, banking information, or vendor PII. Focus is on process templates and operational procedures.

## Inputs
- Vendor onboarding requests
- Purchase orders and contracts
- Invoice approval policies
- Payment terms and schedules
- Internal control requirements
- Tax and compliance requirements

## Outputs
- Vendor onboarding checklists and forms (templates)
- Invoice processing procedures
- Payment workflow documentation
- Three-way match procedures
- AP aging report templates
- Vendor master data templates
- Internal control documentation

## Primary Owner
- Role: AP Manager / Controller
- Review cadence: quarterly
- Approval: when changes to payment policies or approval workflows are made

## Contributors
- Roles/Teams: AP team, Procurement team, Treasury team, Compliance
- Change process: PR/review with approval from AP Manager or Controller before merging

## Security & Privacy
- WARNING: This folder should contain ONLY templates and process documentation, never actual vendor data.
- Do not store vendor PII, banking information, payment details, or tax IDs.
- No actual invoices, payment records, or vendor contact information should be committed here.
- Keep templates and runbooks only; actual vendor data stays in secure AP systems.
- Never commit credentials, API keys, or banking credentials; use environment variables or secure stores.
- See repo `AGENTS.md` and `~/.agents/README.md`.

## Related
- Specs: `../../../business_spec/`
- Policies: `../Policies/` (accounting policies), `../../Procurement/` (vendor selection)
- Teams: AP team, Procurement team, Treasury team
- Runbooks/Docs: Payment processing guides, ERP system documentation

## Operational Notes
- Process invoices weekly or as received based on payment terms
- Run AP aging reports monthly to manage vendor relationships
- Conduct vendor statement reconciliations quarterly
- Review and update approval workflows when organizational changes occur
- Maintain proper segregation of duties in payment processing
- Coordinate with Treasury for payment runs and cash flow planning

## Change Log
See PR history or local `CHANGELOG.md`.

## Contributing
- For authors (human or AI) creating or updating this folder: keep this README.md concise and actionable.
- Use `scripts/new_dir.sh` to scaffold new areas when appropriate.
- Link changes to any relevant spec (top-level or local), not only `business_spec/*`. If a spec governs or informs this folder, reference it explicitly.
- Avoid duplicating content that exists in parent README.md; link instead.

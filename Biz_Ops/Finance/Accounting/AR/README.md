# Accounts Receivable (AR)

## Purpose
This folder contains documentation and templates for Accounts Receivable processes including customer invoicing, collections management, credit policies, and cash application. It ensures consistent AR operations, maintains healthy cash flow, and minimizes bad debt while providing excellent customer service.

## Current State
- Last Updated: 2025-11-07
- Status: active
- Last Agent/Owner: Accounting team

## Context & Inheritance
- Inherits scope and principles from parent `../README.md` and root `README.md`.
- Agent guidance: `AGENTS.md` and `~/.agents/README.md`.

## Scope
Contains AR process documentation, invoicing templates, collections playbooks, credit policies, and cash application procedures. Does not contain actual customer information, invoice details, payment records, or customer PII. Focus is on process templates and operational procedures.

## Inputs
- Sales contracts and orders
- Credit policies and approval workflows
- Payment terms and conditions
- Collections strategies
- Internal control requirements
- Revenue recognition policies

## Outputs
- Invoice templates and procedures
- Collections playbooks and escalation paths
- Credit application and approval templates
- Cash application procedures
- AR aging report templates
- Customer master data templates
- Dunning communication templates

## Primary Owner
- Role: AR Manager / Controller
- Review cadence: quarterly
- Approval: when changes to credit policies or collections procedures are made

## Contributors
- Roles/Teams: AR team, Sales team, Customer Success team, Treasury team
- Change process: PR/review with approval from AR Manager or Controller before merging

## Security & Privacy
- WARNING: This folder should contain ONLY templates and process documentation, never actual customer data.
- Do not store customer PII, payment information, credit card details, or bank account information.
- No actual invoices, payment records, or customer contact information should be committed here.
- Keep templates and playbooks only; actual customer data stays in secure AR/billing systems.
- Never commit credentials, API keys, or payment gateway credentials; use environment variables or secure stores.
- See repo `AGENTS.md` and `~/.agents/README.md`.

## Related
- Specs: `../../../business_spec/`
- Policies: `../Policies/` (accounting policies), `../../Billing/` (billing operations)
- Teams: AR team, Sales team, Customer Success team, Treasury team
- Runbooks/Docs: Revenue recognition procedures in `../Revenue_Recognition/`

## Operational Notes
- Generate and send invoices according to contract terms (monthly, quarterly, etc.)
- Review AR aging weekly to identify collection opportunities
- Follow escalation procedures for overdue accounts
- Coordinate with Sales and Customer Success on collection issues
- Apply cash daily to maintain accurate AR balances
- Review and update credit policies annually or as business needs change
- Track DSO (Days Sales Outstanding) and collection effectiveness metrics

## Change Log
See PR history or local `CHANGELOG.md`.

## Contributing
- For authors (human or AI) creating or updating this folder: keep this README.md concise and actionable.
- Use `Biz_Ops/IT/scripts/new_dir.sh` to scaffold new areas when appropriate.
- Link changes to any relevant spec (top-level or local), not only `business_spec/*`. If a spec governs or informs this folder, reference it explicitly.
- Avoid duplicating content that exists in parent README.md; link instead.

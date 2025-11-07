# Accounting

## Purpose
Operational accounting operations including AP, AR, close, payroll, expense management, fixed assets, and revenue recognition.

## Current State
- Last Updated: 2025-11-07
- Status: active
- Last Agent/Owner: Accounting team

## Context & Inheritance
- Inherits scope and principles from parent `../README.md` and root `README.md`.
- Agent guidance: `AGENTS.md` and `~/.agents/README.md`.

## Scope
Day-to-day accounting operations organized into functional areas:

- **Policies** — accounting policies and memos
- **Chart_Of_Accounts** — COA reference and mappings
- **Close** — checklists and reconciliations
- **AP** — vendor invoices, payments, onboarding
- **AR** — customer invoicing, collections, credit memos
- **Payroll** — employees, contractors
- **Fixed_Assets** — asset register and depreciation approach
- **Expense_Management** — employee expenses and approvals
- **Revenue_Recognition** — ASC 606 policies and deal memos

## Inputs
- Vendor invoices and purchase orders
- Customer invoices and contracts
- Payroll data
- Expense reports
- Transaction data from banking systems

## Outputs
- Financial statements
- Reconciliations
- Payment processing
- Compliance reports
- Audit documentation

## Primary Owner
- Role: Accounting team / Controller
- Review cadence: monthly
- Approval: when changes require financial/legal review

## Contributors
- Roles/Teams: Accounting, finance operations
- Change process: PR/review for policies, operational updates as needed

## Security & Privacy
- **CRITICAL**: No actual financial data or PII in this repo
- Store templates, policies, and processes only
- Never commit credentials or tokens; use environment variables or secure stores.
- See repo `AGENTS.md` and `~/.agents/README.md`.

## Related
- Specs: Parent finance folder
- Policies: See Policies subfolder
- Teams: Accounting team

## Operational Notes
Templates and processes only. Actual accounting data resides in QuickBooks and other secure financial systems.

## Change Log
See PR history or local `CHANGELOG.md`.

## Contributing
- For authors (human or AI) creating or updating this folder: keep this README.md concise and actionable.
- Use `scripts/new_dir.sh` to scaffold new areas when appropriate.
- Link changes to any relevant spec (top-level or local), not only `business_spec/*`. If a spec governs or informs this folder, reference it explicitly.
- Avoid duplicating content that exists in parent README.md; link instead.

# Finance & Accounting

## Purpose
This directory organizes core Finance and Accounting operations for a SaaS company. Contains templates, policies, runbooks, and process documentation.

## Current State
- Last Updated: 2025-11-07
- Status: active
- Last Agent/Owner: Finance team

## Context & Inheritance
- Inherits scope and principles from parent `../README.md` and root `README.md`.
- Agent guidance: `AGENTS.md` and `~/.agents/README.md`.

## Scope
Finance and accounting operations for AI First SaaS business:

- **Accounting** — day-to-day accounting, AP/AR, close, revenue recognition
- **FP_And_A** — budgeting, forecasting, models, metrics, board packs
- **Billing** — pricing, plans, invoicing, dunning, integrations (e.g., Stripe)
- **Tax** — VAT/IVA, corporate income tax, withholding, cross-border
- **Treasury** — banking, cash management
- **Compliance** — internal controls, SOC 2, audits
- **Procurement** — vendor onboarding and approvals
- **Policies** — spend, travel, approvals matrix

## Inputs
- Business transactions and financial data
- Vendor invoices and customer contracts
- Budget and forecast assumptions
- Regulatory requirements

## Outputs
- Financial statements and reports
- Budget and forecast models
- Policies and procedures
- Compliance documentation
- Board reporting packs

## Primary Owner
- Role: Finance team / CFO
- Review cadence: monthly
- Approval: when changes require legal/security review

## Contributors
- Roles/Teams: Finance team, accounting, FP_And_A, treasury
- Change process: PR/review path for policies, direct updates for operational docs

## Security & Privacy
- **CRITICAL**: Keep sensitive data (PII, credentials, actual financials) out of the repo
- Store templates, policies, runbooks, and process docs only
- Never commit credentials or tokens; use environment variables or secure stores.
- See repo `AGENTS.md` and `~/.agents/README.md`.

## Related
- Specs: Business specs in root `business_spec/` folder
- Policies: See `Policies/` subdirectory
- Teams: Finance team

## Operational Notes
This is a template and process repository only. Actual financial data is stored in secure systems (QuickBooks, banking platforms, etc.).

## Change Log
See PR history or local `CHANGELOG.md`.

## Contributing
- For authors (human or AI) creating or updating this folder: keep this README.md concise and actionable.
- Use `scripts/new_dir.sh` to scaffold new areas when appropriate.
- Link changes to any relevant spec (top-level or local), not only `business_spec/*`. If a spec governs or informs this folder, reference it explicitly.
- Avoid duplicating content that exists in parent README.md; link instead.
- Never commit actual financial data, only templates and processes.

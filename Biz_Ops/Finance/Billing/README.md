# Billing

## Purpose
This folder contains documentation and configuration for billing operations including pricing structures, plan catalogs, invoicing flows, dunning strategies, and system integrations (e.g., Stripe). The goal is to ensure accurate and timely customer billing, efficient collections, and seamless integration between billing systems and accounting/finance systems.

## Current State
- Last Updated: 2025-11-07
- Status: active
- Last Agent/Owner: Finance team

## Context & Inheritance
- Inherits scope and principles from parent `../README.md` and root `README.md`.
- Agent guidance: `AGENTS.md` and `~/.agents/README.md`.

## Scope
Contains billing process documentation, pricing models, plan definitions, invoicing procedures, dunning playbooks, and integration configuration guides. Does not contain actual customer billing data, payment details, or customer PII. Focus is on diagrams, playbooks, configuration documentation, and templates only.

## Inputs
- Product and pricing strategy
- Subscription plans and packaging
- Payment processing requirements
- Dunning and collections strategies
- Tax and compliance requirements
- System integration requirements (Stripe, payment gateways, ERP)

## Outputs
- Price book documentation and change logs
- Plan definitions and packaging documentation
- Invoice templates and numbering policies
- Dunning strategy and communication templates
- Integration guides and field mapping documentation
- Billing process flows and diagrams
- System configuration documentation

## Primary Owner
- Role: Revenue Operations Manager / Finance Manager
- Review cadence: quarterly
- Approval: when changes to pricing, plans, or billing processes are made

## Contributors
- Roles/Teams: Finance team, Revenue Operations, Product team, Engineering team
- Change process: PR/review with approval from Finance Manager before merging

## Security & Privacy
- WARNING: This folder should contain ONLY configuration documentation and templates, never actual customer billing data.
- Do not store customer PII, payment details, credit card information, or actual invoices.
- No API keys, webhook secrets, or payment gateway credentials should be committed here.
- Keep diagrams, playbooks, and configuration docs only; actual billing data stays in secure billing systems.
- Never commit credentials or tokens; use environment variables or secure stores.
- See repo `AGENTS.md` and `~/.agents/README.md`.

## Related
- Specs: `../../business_spec/`
- Policies: `../Policies/` (finance policies)
- Teams: Finance team, Revenue Operations, Product team, AR team
- Runbooks/Docs: AR procedures in `../Accounting/AR/`, Revenue Recognition in `../Accounting/Revenue_Recognition/`

## Operational Notes
- Review and update pricing models as product and market evolve
- Document all pricing changes with effective dates and migration plans
- Test billing system changes in sandbox environment before production deployment
- Coordinate pricing changes with Sales, Product, and Marketing teams
- Monitor dunning performance and adjust strategies to reduce churn
- Review integration mappings quarterly to ensure data accuracy
- Conduct end-to-end billing testing for new plan types or pricing changes
- Track billing metrics: invoice accuracy, collection rates, failed payments

## Change Log
See PR history or local `CHANGELOG.md`.

## Contributing
- For authors (human or AI) creating or updating this folder: keep this README.md concise and actionable.
- Use `Biz_Ops/IT/scripts/new_dir.sh` to scaffold new areas when appropriate.
- Link changes to any relevant spec (top-level or local), not only `business_spec/*`. If a spec governs or informs this folder, reference it explicitly.
- Avoid duplicating content that exists in parent README.md; link instead.

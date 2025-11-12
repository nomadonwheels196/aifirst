# Treasury

## Purpose
This folder contains documentation and policy materials for treasury operations including banking relationships, cash management, and investment policies. The goal is to ensure effective cash management, maintain strong banking relationships, optimize working capital, and manage liquidity while maintaining appropriate controls and security.

## Current State
- Last Updated: 2025-11-07
- Status: active
- Last Agent/Owner: Treasury team

## Context & Inheritance
- Inherits scope and principles from parent `../README.md` and root `README.md`.
- Agent guidance: `AGENTS.md` and `~/.agents/README.md`.

## Scope
Contains treasury process documentation, banking relationship guidelines, cash management procedures, and investment policy frameworks. Does not contain actual bank account numbers, account credentials, investment balances, or transaction details. Focus is on policy documentation and process templates only.

## Inputs
- Banking and cash management requirements
- Cash flow forecasts from FP_And_A
- Investment policy guidelines
- Risk management frameworks
- Regulatory and compliance requirements
- Payment processing requirements

## Outputs
- Banking relationship documentation and controls
- Cash management procedures and workflows
- Cash flow forecasting templates
- Investment policy documentation
- Treasury calendar and operational procedures
- Banking fee analysis templates
- Treasury controls and reconciliation procedures

## Primary Owner
- Role: Treasurer / CFO / Controller
- Review cadence: quarterly
- Approval: when changes to banking relationships, investment policies, or cash management procedures are made

## Contributors
- Roles/Teams: Treasury team, Finance leadership, Accounting team, AP/AR teams
- Change process: PR/review with approval from Treasurer or CFO before merging

## Security & Privacy
- WARNING: This folder should contain ONLY policy documentation and process templates, never actual banking or account information.
- Do not store bank account numbers, account credentials, routing information, or online banking access details.
- No actual investment holdings, balances, or transaction details should be committed here.
- Keep policy docs and process templates only; actual banking information stays in secure treasury systems.
- Never commit credentials, API keys, or banking tokens; use environment variables or secure stores.
- See repo `AGENTS.md` and `~/.agents/README.md`.

## Related
- Specs: `../../business_spec/`
- Policies: `../Policies/` (finance policies)
- Teams: Treasury team, Finance leadership, Accounting team, AP team
- Runbooks/Docs: AP payment processing in `../Accounting/AP/`, Cash forecasting in `../FP_And_A/`

## Operational Notes
- Monitor cash positions daily to ensure adequate liquidity
- Maintain relationships with banking partners and review fees quarterly
- Coordinate with AP on payment runs and cash requirements
- Update cash flow forecasts weekly or as business needs dictate
- Review investment portfolio and compliance with investment policy quarterly
- Ensure proper segregation of duties for treasury operations
- Maintain treasury controls including dual authorization for payments above thresholds
- Coordinate with FP_And_A on cash flow planning and working capital optimization
- Review banking structure annually to ensure it supports business needs

## Change Log
See PR history or local `CHANGELOG.md`.

## Contributing
- For authors (human or AI) creating or updating this folder: keep this README.md concise and actionable.
- Use `Biz_Ops/IT/scripts/new_dir.sh` to scaffold new areas when appropriate.
- Link changes to any relevant spec (top-level or local), not only `business_spec/*`. If a spec governs or informs this folder, reference it explicitly.
- Avoid duplicating content that exists in parent README.md; link instead.

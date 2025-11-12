# Expense Management

## Purpose
This folder contains documentation and templates for employee expense management including expense policies, reimbursement workflows, approval routing, and integration with expense management systems. It ensures consistent expense processing, policy compliance, and timely reimbursements while maintaining proper controls.

## Current State
- Last Updated: 2025-11-07
- Status: active
- Last Agent/Owner: Accounting team

## Context & Inheritance
- Inherits scope and principles from parent `../README.md` and root `README.md`.
- Agent guidance: `AGENTS.md` and `~/.agents/README.md`.

## Scope
Contains expense policy references, reimbursement procedures, approval workflows, and expense management system documentation. Does not contain actual expense reports, receipts, employee information, or payment details. Focus is on policy documentation and process templates only.

## Inputs
- Corporate expense policies
- Approval hierarchies and thresholds
- Expense management system configurations
- Tax and compliance requirements
- Travel and entertainment policies
- Corporate card programs

## Outputs
- Expense policy documentation
- Reimbursement workflow procedures
- Approval routing matrices
- Expense categorization guidelines
- Expense report templates
- Corporate card policy and procedures
- System integration guides

## Primary Owner
- Role: Controller / Accounting Manager
- Review cadence: quarterly
- Approval: when changes to expense policies or approval workflows are made

## Contributors
- Roles/Teams: Accounting team, HR team, Finance leadership, employees
- Change process: PR/review with approval from Controller before merging

## Security & Privacy
- WARNING: This folder should contain ONLY policy documentation and templates, never actual expense data.
- Do not store employee expense reports, receipts, or any PII.
- No actual reimbursement details, payment information, or employee-specific data should be committed here.
- Keep policy references and workflow templates only; actual expense data stays in external expense management tools.
- Never commit credentials, API keys, or corporate card details; use environment variables or secure stores.
- See repo `AGENTS.md` and `~/.agents/README.md`.

## Related
- Specs: `../../../business_spec/`
- Policies: `../../Policies/` (finance policies including travel and expense policies)
- Teams: Accounting team, HR team, Finance leadership
- Runbooks/Docs: AP procedures in `../AP/`, Corporate card reconciliation

## Operational Notes
- Review and approve expense reports according to approval matrix
- Process reimbursements on regular schedule (weekly/bi-weekly)
- Reconcile corporate cards monthly
- Review expense policy annually and communicate changes to employees
- Monitor expense trends and policy compliance
- Coordinate with AP team for payment processing
- Train new employees on expense policy and system usage
- Audit expense reports for policy compliance

## Change Log
See PR history or local `CHANGELOG.md`.

## Contributing
- For authors (human or AI) creating or updating this folder: keep this README.md concise and actionable.
- Use `Biz_Ops/IT/scripts/new_dir.sh` to scaffold new areas when appropriate.
- Link changes to any relevant spec (top-level or local), not only `business_spec/*`. If a spec governs or informs this folder, reference it explicitly.
- Avoid duplicating content that exists in parent README.md; link instead.

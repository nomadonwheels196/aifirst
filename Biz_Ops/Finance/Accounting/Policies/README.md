# Accounting Policies

## Purpose
This folder contains authoritative and company-specific accounting policies including revenue recognition, capitalization, expense policy references, and other accounting standards. These policies guide financial reporting and ensure compliance with GAAP/IFRS standards. All documents are concise, versioned memos that establish accounting treatments for various transactions.

## Current State
- Last Updated: 2025-11-07
- Status: active
- Last Agent/Owner: Accounting team

## Context & Inheritance
- Inherits scope and principles from parent `../README.md` and root `README.md`.
- Agent guidance: `AGENTS.md` and `~/.agents/README.md`.

## Scope
This folder contains accounting policy documentation and reference materials. It includes policy memos, accounting treatment guidelines, and documentation of accounting decisions. Does not contain actual financial data, transactions, or customer/vendor information.

## Inputs
- Accounting standards (ASC, IFRS)
- Industry best practices
- Company-specific transaction types
- Regulatory requirements
- External auditor guidance

## Outputs
- Accounting policy memos
- Technical accounting guidance documents
- Policy version history
- Accounting treatment decision trees
- Reference materials for financial reporting

## Primary Owner
- Role: Controller / Chief Accounting Officer
- Review cadence: quarterly
- Approval: when changes require audit review or impact financial statements

## Contributors
- Roles/Teams: Accounting team, external auditors, CFO
- Change process: PR/review with approval from Controller before merging

## Security & Privacy
- WARNING: This folder should contain ONLY policy documents and templates, never actual financial data.
- Do not store transaction details, account balances, or any PII.
- No customer information, vendor details, or employee data should be stored here.
- Never commit credentials or tokens; use environment variables or secure stores.
- See repo `AGENTS.md` and `~/.agents/README.md`.

## Related
- Specs: `../../../business_spec/`
- Policies: `../../Policies/` (company-wide finance policies)
- Teams: Accounting team, Finance leadership
- Runbooks/Docs: Month-end close procedures in `../Close/`

## Operational Notes
- Review accounting policies annually or when accounting standards change
- Document significant accounting decisions with policy memos
- Coordinate with external auditors on policy changes
- Version control all policy documents with effective dates

## Change Log
See PR history or local `CHANGELOG.md`.

## Contributing
- For authors (human or AI) creating or updating this folder: keep this README.md concise and actionable.
- Use `Biz_Ops/IT/scripts/new_dir.sh` to scaffold new areas when appropriate.
- Link changes to any relevant spec (top-level or local), not only `business_spec/*`. If a spec governs or informs this folder, reference it explicitly.
- Avoid duplicating content that exists in parent README.md; link instead.

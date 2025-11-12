# Revenue Recognition

## Purpose
This folder contains documentation and templates for revenue recognition processes in accordance with ASC 606 (or IFRS 15). It includes policies for multi-element arrangements, deal memos for complex transactions, and guidance on proper revenue accounting treatment. The goal is to ensure consistent, compliant revenue recognition across all customer contracts and arrangements.

## Current State
- Last Updated: 2025-11-07
- Status: active
- Last Agent/Owner: Accounting team

## Context & Inheritance
- Inherits scope and principles from parent `../README.md` and root `README.md`.
- Agent guidance: `AGENTS.md` and `~/.agents/README.md`.

## Scope
Contains revenue recognition policies, ASC 606 framework documentation, deal memo templates for complex arrangements, and revenue accounting procedures. Does not contain actual customer contracts, deal-specific financial data, or customer PII. Focus is on policy documentation and anonymized/sanitized examples only.

## Inputs
- ASC 606 / IFRS 15 accounting standards
- Contract structures and terms
- Sales processes and deal types
- Pricing and payment terms
- Multi-element arrangement scenarios
- External audit guidance

## Outputs
- Revenue recognition policy documentation
- ASC 606 framework references and templates
- Deal memo templates (sanitized/anonymized)
- Revenue recognition decision trees
- Deferred revenue schedules (templates)
- Performance obligation analysis guides
- Complex transaction guidance

## Primary Owner
- Role: Controller / Revenue Accounting Manager
- Review cadence: quarterly
- Approval: when changes to revenue policies or significant deal structures are introduced

## Contributors
- Roles/Teams: Accounting team, Sales operations, Legal team, external auditors
- Change process: PR/review with approval from Controller before merging

## Security & Privacy
- WARNING: This folder should contain ONLY policy documentation and sanitized examples, never actual customer data.
- Do not store actual customer contracts, deal-specific financial details, or any customer PII.
- Keep anonymized examples and policy docs only; sanitize all deal memos before committing.
- No actual revenue data, customer names, or specific deal terms should be committed here.
- Never commit credentials or tokens; use environment variables or secure stores.
- See repo `AGENTS.md` and `~/.agents/README.md`.

## Related
- Specs: `../../../business_spec/`
- Policies: `../Policies/` (accounting policies)
- Teams: Accounting team, Sales operations, Legal team, FP_And_A team
- Runbooks/Docs: AR procedures in `../AR/`, Billing in `../../Billing/`

## Operational Notes
- Review revenue recognition for all new deal structures before contract execution
- Create deal memos for complex or non-standard arrangements
- Update revenue recognition policies as business model evolves
- Coordinate with Sales and Legal on contract terms that impact revenue timing
- Review deferred revenue balances monthly during close
- Provide revenue recognition training to Sales and Finance teams
- Document significant judgments and estimates for audit purposes
- Monitor changes to ASC 606 guidance and implementation

## Change Log
See PR history or local `CHANGELOG.md`.

## Contributing
- For authors (human or AI) creating or updating this folder: keep this README.md concise and actionable.
- Use `Biz_Ops/IT/scripts/new_dir.sh` to scaffold new areas when appropriate.
- Link changes to any relevant spec (top-level or local), not only `business_spec/*`. If a spec governs or informs this folder, reference it explicitly.
- Avoid duplicating content that exists in parent README.md; link instead.

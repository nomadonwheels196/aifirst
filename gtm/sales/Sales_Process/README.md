# Sales Process

Note: This folder is named `Sales_Process/` in the filesystem. Recommend renaming to `Sales_Process/` once stakeholders approve to avoid confusion.


## Current State
- Last Updated: 2025-11-07
- Status: active
- DRI: Sales Lead


## Context & Inheritance
- Inherits scope and principles from parent ../README.md and root README.md.
- Agent guidance: AGENTS.md and ~/.agents/README.md.
- Ancestors with README.md:
  - ../README.md (../README.md)
  - ../../README.md (../../README.md)
  - ../../../README.md (../../../README.md)
  - ../../../../../README.md (../../../../../README.md)


## Scope
- Stage definitions, exit criteria, artifacts, and responsibilities


## Inputs
- ICP/personas, pricing/packaging, product capabilities


## Outputs
- Playbooks, templates, proposal/SoW examples, stage guidance


## Primary Owner
- Role: Sales (DRI)
- Review cadence: quarterly
- Approval: when changes affect terms/pricing (Legal/Finance)


## Contributors
- Roles/Teams: Sales, SE/SA, Legal, Finance
- Change process: PR with Sales review


## Security & Privacy
- Do not include PII; store prospect data in CRM.
- See repo AGENTS.md and ~/.agents/README.md.


## Stages & Exit Criteria
- Lead → MQL: fits ICP; engagement threshold met
- MQL → Discovery: meeting booked; confirms business problem
- Discovery → Solution Fit: decision process mapped; technical feasibility confirmed
- Solution Fit → Proposal: pricing and scope shared; timeline aligned
- Proposal → Negotiation: redlines/terms in-flight; economic buyer engaged
- Negotiation → Closed Won: order/SoW signed; mutual close plan complete
- Negotiation → Closed Lost: loss reason captured; recycle/disqualify path set


## Operational Notes
- CRM is the source of truth for stage names and reporting; keep this aligned.


## Change Log
See PR history or local CHANGELOG.md.


## Contributing
- For authors (human or AI) creating or updating this folder: keep this README.md concise and actionable.
- Use scripts/new_dir.sh to scaffold new areas when appropriate.
- Link changes to any relevant spec (top-level or local), not only business_spec/*. If a spec governs or informs this folder, reference it explicitly.
- Avoid duplicating content that exists in parent README.md; link instead.

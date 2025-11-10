# Process Runbook — Meeting‑to‑Action (M2A)

## Audience
All employees and meeting owners.

## Prerequisites
- Transcript with timestamps and speakers (or notes if no transcript).
- Attendee list and any referenced documents/tickets.

## Steps
1. Gather: transcript/timestamps/speakers, attendees, and context.
2. Extract: draft summary, decisions, issues, actions, risks with evidence (quotes+timestamps); ensure confidence thresholds.
3. Review: auto‑approve low‑risk; require human review for high‑risk/sensitive.
4. Route: post to Slack, create issues/CRM entries, update docs; store canonical JSON and links.
5. Close loop: confirm delivery, collect corrections, feed back improvements.

## Audience Checklists (Capture as applicable)
- Cross‑cutting
  - Decisions/commitments (owner, due) and Actions (assignee, due, SLA, status)
  - Risks/blockers/dependencies (severity, likelihood, mitigation) with evidence
  - Evidence links (timestamps, docs, tickets); privacy classification
  - Meeting type/purpose/stage; follow‑up date

- Sales
  - Customer pain (business/process), key stakeholders and org map
  - Procurement steps and timeline; requirements; budget/authority/timeline signals
  - Competitive status; commercial constraints (pricing/terms)

- Product_Management
  - Feature requests; use cases; competitive info
  - JTBD and severity; acceptance criteria; persona/segment; priority/impact
  - Related roadmap/epic links; telemetry needed

- Platform_Eng
  - Bugs/support issues; repro steps, env, versions
  - Severity/impact; diagnostics/evidence; ownership/next action

- Customer_Success
  - Deployment/onboarding details and issues
  - Engagement issues; health/adoption; satisfaction signals; renewal risk

- Security/IT
  - Security concerns; compliance needs; DPA/BAA
  - Access/identity requests or changes

- Legal/Compliance
  - Contract asks/redlines; IP/usage restrictions
  - Regulatory/export concerns; licensing constraints

- RevOps/Finance
  - Deal stage/forecast; ARR/TCV; payment/billing requirements
  - Remaining approval gates (security, legal, exec)

- Exec/Leadership
  - Strategic risks/opportunities; OKR alignment
  - Cross‑team dependencies or resourcing asks

- Data/Analytics
  - Datasets referenced; metric definitions/changes
  - Tracking plan updates; data quality issues

- Docs/Enablement
  - KB/doc updates; tutorial requests; collateral gaps

## Exceptions
- No transcript: use notes; mark evidence as unavailable; require human review.
- Sensitive content: restrict routing and enforce human approval.

## Troubleshooting
- Missing attendees: verify calendar and notes; request confirmation from organizer.
- Ambiguous ownership: assign provisional owner, flag for follow‑up.

## Notes
- Run any scripts from repo root; avoid secrets; follow `AGENTS.md`.

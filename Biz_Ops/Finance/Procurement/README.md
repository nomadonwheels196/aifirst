# Procurement

## Purpose
This folder contains documentation and templates for procurement processes including vendor selection, onboarding, approval workflows, and vendor management. The goal is to ensure consistent procurement practices, maintain appropriate vendor controls, support cost optimization, and coordinate effectively with Legal and AP teams.

## Current State
- Last Updated: 2025-11-07
- Status: active
- Last Agent/Owner: Procurement team

## Context & Inheritance
- Inherits scope and principles from parent `../README.md` and root `README.md`.
- Agent guidance: `AGENTS.md` and `~/.agents/README.md`.

## Scope
Contains procurement process documentation, vendor selection criteria, onboarding checklists, approval workflows, RFP/RFQ templates, and vendor management frameworks. Does not contain actual vendor information, contracts, pricing details, or vendor PII. Focus is on process templates and operational procedures only.

## Inputs
- Vendor selection criteria and evaluation frameworks
- Procurement policies and spending thresholds
- Approval hierarchies and workflows
- Risk assessment frameworks
- Contract requirements (from Legal)
- Compliance and security requirements

## Outputs
- Vendor selection and evaluation templates
- Vendor onboarding checklists and forms (templates)
- RFP and RFQ templates
- Approval matrices and workflows
- Vendor master data templates
- Vendor risk tier classifications
- Vendor management procedures

## Primary Owner
- Role: Procurement Manager / Operations Manager
- Review cadence: quarterly
- Approval: when changes to procurement policies or approval workflows are made

## Contributors
- Roles/Teams: Procurement team, AP team, Legal team, Finance leadership, department heads
- Change process: PR/review with approval from Procurement Manager before merging

## Security & Privacy
- WARNING: This folder should contain ONLY templates and process documentation, never actual vendor data.
- Do not store vendor PII, contact information, pricing details, or confidential vendor information.
- No actual contracts, vendor agreements, or sensitive vendor data should be committed here.
- Keep checklists and RFP/RFQ templates only; actual vendor information stays in secure procurement/AP systems.
- Never commit credentials or tokens; use environment variables or secure stores.
- See repo `AGENTS.md` and `~/.agents/README.md`.

## Related
- Specs: `../../business_spec/`
- Policies: `../Policies/` (finance policies including spend policies)
- Legal: `../../legal/` (contract templates and vendor agreements)
- Teams: Procurement team, AP team, Legal team, Finance leadership
- Runbooks/Docs: AP procedures in `../Accounting/AP/`

## Operational Notes
- Follow approval matrix for all procurement activities
- Conduct vendor selection process for significant purchases or new vendor relationships
- Coordinate with Legal on contract review and negotiation
- Maintain vendor lists and risk tier classifications
- Review vendor performance periodically
- Update approval workflows when organizational changes occur
- Coordinate with AP on vendor onboarding to ensure smooth payment processing
- Track procurement metrics: cost savings, vendor performance, processing time
- Ensure proper documentation for audit and compliance purposes

## Change Log
See PR history or local `CHANGELOG.md`.

## Contributing
- For authors (human or AI) creating or updating this folder: keep this README.md concise and actionable.
- Use `Biz_Ops/IT/scripts/new_dir.sh` to scaffold new areas when appropriate.
- Link changes to any relevant spec (top-level or local), not only `business_spec/*`. If a spec governs or informs this folder, reference it explicitly.
- Avoid duplicating content that exists in parent README.md; link instead.

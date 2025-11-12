# Compliance

## Purpose
This folder contains documentation and materials for financial compliance activities including internal controls, SOC 2 readiness, audit coordination, and regulatory compliance. The goal is to maintain robust internal controls, support audit processes, achieve compliance certifications, and ensure adherence to financial regulations and standards.

## Current State
- Last Updated: 2025-11-07
- Status: active
- Last Agent/Owner: Compliance team

## Context & Inheritance
- Inherits scope and principles from parent `../README.md` and root `README.md`.
- Agent guidance: `AGENTS.md` and `~/.agents/README.md`.

## Scope
Contains compliance documentation, internal control frameworks, SOC 2 readiness materials, audit coordination procedures, and control testing templates. Does not contain actual audit workpapers, sensitive audit findings, or confidential compliance assessments. Focus is on control documentation, frameworks, and process templates only.

## Inputs
- Internal control frameworks (COSO, COBIT)
- SOC 2 Trust Services Criteria
- Audit standards and requirements
- Regulatory compliance requirements
- Company policies and procedures
- Risk assessment frameworks

## Outputs
- Internal control narratives and matrices
- Control testing plans and templates
- SOC 2 readiness artifacts and mappings
- Audit planning documentation and request lists
- Compliance checklists and calendars
- Control deficiency tracking templates
- Audit coordination procedures

## Primary Owner
- Role: Controller / Director of Compliance / CFO
- Review cadence: quarterly
- Approval: when changes to control frameworks or compliance programs are made

## Contributors
- Roles/Teams: Compliance team, Accounting team, IT/Security team, external auditors
- Change process: PR/review with approval from Controller or Director of Compliance before merging

## Security & Privacy
- WARNING: This folder should contain ONLY control documentation and frameworks, never actual audit workpapers or sensitive findings.
- Do not store actual audit findings, management letters, or confidential compliance assessments.
- No sensitive data regarding control deficiencies or remediation details should be committed here.
- Keep control matrices, test plans, and readiness checklists only; actual audit work stays with auditors or secure systems.
- Never commit credentials or tokens; use environment variables or secure stores.
- See repo `AGENTS.md` and `~/.agents/README.md`.

## Related
- Specs: `../../business_spec/`
- Policies: `../Policies/` (finance policies), `../Accounting/Policies/` (accounting policies)
- Teams: Compliance team, Accounting team, IT/Security team, Legal team, external auditors
- Runbooks/Docs: Close procedures in `../Accounting/Close/`, Internal control procedures across finance folders

## Operational Notes
- Review and update internal control documentation annually or when processes change
- Coordinate SOC 2 audit annually (Type 2) or as needed for customer requirements
- Support external financial audit (annual audit and quarterly reviews)
- Test key controls quarterly or as required by control testing plan
- Track and remediate control deficiencies with appropriate urgency
- Maintain audit readiness throughout the year
- Coordinate with IT/Security on technology controls and SOC 2 requirements
- Document control changes and update control matrices accordingly
- Provide training to process owners on control execution and documentation

## Change Log
See PR history or local `CHANGELOG.md`.

## Contributing
- For authors (human or AI) creating or updating this folder: keep this README.md concise and actionable.
- Use `Biz_Ops/IT/scripts/new_dir.sh` to scaffold new areas when appropriate.
- Link changes to any relevant spec (top-level or local), not only `business_spec/*`. If a spec governs or informs this folder, reference it explicitly.
- Avoid duplicating content that exists in parent README.md; link instead.

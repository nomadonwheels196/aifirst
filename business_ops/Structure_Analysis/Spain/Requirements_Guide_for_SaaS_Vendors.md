# Requirements Guide — Selling SaaS to the Spanish Public Sector

Purpose
- Provide a practical, English-first explanation of what a SaaS company must have in place to sell to Spanish public administrations, with Spanish terms and links to the official frameworks.

Scope Assumptions
- You will target central government first (Administración General del Estado, AGE), expanding later to regions/local. Requirements are driven by law (LCSP) and each tender’s pliegos.

High-level Summary
- Legal presence: a Spanish or EU company can bid; foreign (non‑EU) can also bid but expect extra formalities. Many tenders accept non‑Spanish companies; some require a local representative or a permanent establishment for execution.
- Registration: ROLECE (Registro de Licitadores) is recommended to simplify solvency proofs, but not universally mandatory. Alternatively, the EU Single Procurement Document (DEUC/ESPD) may be requested in the pliegos.
- Security: ENS (Esquema Nacional de Seguridad) applies when you process or host public sector data. Pliegos frequently specify the required level (Básico/Medio/Alto) and may require certification issued by an ENAC‑accredited body or allow a conformity statement.
- Interoperability: ENI (Esquema Nacional de Interoperabilidad) impacts data formats, e‑signatures, and exchange with AAPP systems when applicable.
- Accessibility: RD 1112/2018 requires EN 301 549 conformance (WCAG 2.1 AA). Pliegos often request evidence (ACR/report) that your SaaS UI meets the standard.
- Data protection: GDPR + LOPDGDD require a Data Processing Agreement (Encargo de tratamiento), records of processing, TOMs, and, where needed, SCCs for international transfers.
- E‑invoicing: invoices to AAPP must be in Facturae format and submitted via FACe (or the contracting authority’s portal).
- Operations: you must be able to sign/submit bids on PLACSP (national procurement portal) using qualified e‑signatures issued to your legal representative.

Key Legal/Platform Anchors (authoritative)
- LCSP (Procurement law): https://www.boe.es/buscar/act.php?id=BOE-A-2017-12902
- ENS (RD 311/2022): https://www.boe.es/eli/es/rd/2022/05/03/311
- ENI (RD 4/2010): https://www.boe.es/eli/es/rd/2010/01/08/4
- Accessibility (RD 1112/2018): https://www.boe.es/eli/es/rd/2018/09/07/1112
- PLACSP portal: https://contrataciondelestado.es
- ROLECE portal: https://registrodelicitadores.gob.es
- Facturae: https://www.facturae.gob.es/
- FACe: https://face.gob.es/
- ENAC (accreditation): https://www.enac.es/esquema-nacional-de-seguridad
- CCN‑CERT (ENS guidance): https://www.ccn-cert.cni.es/

Company Setup and Registration
- Entity eligibility
  - Spanish S.L./S.A., EU entity, or foreign entity. If foreign, ensure capacity to contract under your home law and be prepared to provide legalized/translated documents.
  - Representation: appoint a legal representative (apoderado) with power of attorney to sign offers and contracts.
- ROLECE (Registro Oficial de Licitadores y Empresas Clasificadas del Estado)
  - Why: speeds up procurement by pre‑recording your solvency and eligibility data.
  - What you need: corporate deeds, tax ID (NIF/NIE for the representative), financial data, and declarations (no prohibitions to contract).
  - Alternative: some procedures accept DEUC/ESPD instead of ROLECE.
- Digital certificates for PLACSP
  - Obtain a qualified electronic certificate for your legal representative (eIDAS trust list; FNMT is common in Spain). You will use it to access and sign on PLACSP.
  - Test on PLACSP well before deadlines (browser compatibility, Java applets no longer used but check signing components).

Security — ENS (Esquema Nacional de Seguridad)
- Applicability: any service that processes or hosts public sector information must align with ENS at the level set by the contracting authority (Básico/Medio/Alto) according to risk/impact.
- Evidence typically requested in pliegos
  - ENS certificate for the relevant scope (service, platform, or organization) issued by an ENAC‑accredited body; or
  - A declaration/conformity statement with an audit plan and deadlines (sometimes accepted for early contracts, but certification is increasingly expected).
- Complementary standards: ISO 27001/27017/27018, SOC 2. These are not ENS substitutes, but mappings help demonstrate maturity.
- Practical path to ENS
  1) Scope the service and assets affecting AAPP data.
  2) Perform a gap analysis against ENS controls at the intended level.
  3) Implement policies, risk management, controls, and monitoring.
  4) Run internal audit; remediate; select ENAC‑accredited auditor; certify.

Interoperability — ENI
- When applicable: integrations, signatures, archival, and data exchanges with AAPP systems must follow ENI rules (e.g., XAdES/PAdES signatures, metadata, and records management requirements).
- Delivery: provide a technical statement of conformance and sample artifacts when integration is in scope.

Accessibility — RD 1112/2018 (EN 301 549)
- Applicability: UIs used by the public sector must conform to EN 301 549 (WCAG 2.1 AA).
- Evidence: Accessibility Conformance Report (ACR) or equivalent, test reports, and remediation plan for any non‑conformities.

Data Protection — GDPR + LOPDGDD
- Roles: Public administration is typically the controller; you act as processor.
- Contractual: include an “Encargo de tratamiento” (DPA) with required clauses (subject matter, duration, nature, categories of data/subjects, TOMs, subprocessor rules, audits, breach notices).
- International transfers: if personal data leaves the EEA, include SCCs or other transfer mechanisms; many pliegos prefer EU/EEA data residency.
- Documentation: records of processing (RoPA), DPIA when relevant, security policy aligned with ENS.

Procurement Mechanics — LCSP and Pliegos
- Solvency (solvencia económica y técnica): expect turnover thresholds, insurance, reference projects, and staff CVs.
- Classification (clasificación): usually not required for standard SaaS/services but check the PCAP.
- Guarantees (garantías): expect a final (definitiva) guarantee around 5% of the award price, set in the PCAP. The provisional guarantee is generally not used under current LCSP.
- Language: proposals in Spanish; provide certified translations if documents are in other languages as required.
- Timelines: strict submission deadlines; electronic presentation on PLACSP; a questions/clarifications window opens before the deadline.

E‑invoicing and Tax
- Facturae: generate invoices in the official XML schema (Facturae) and include administrative metadata (DIR codes supplied by the contracting authority).
- FACe: submit e‑invoices through FACe or the authority’s designated portal.
- Tax compliance: maintain up‑to‑date certificates of tax and social security compliance when requested for award/formalization.

Service and Operational Requirements Common in Pliegos
- SLAs: availability targets, incident response times, penalties/bonifications.
- Support: Spanish-language support during business hours (often extended hours for critical services).
- Data location: EU/EEA data residency preferences; specify locations and subprocessors.
- Reversibility: data export formats, migration assistance, and deletion timelines.
- Audit/monitoring: audit rights, security incident notifications, and change management.

Evidence Pack — What to Prepare
- Corporate: articles/incorporation docs; powers of attorney; ROLECE certificate or DEUC; declarations of no prohibitions to contract.
- Security: ENS certificate (or plan + declaration), ISO 27001 cert, security policy, risk management process, incident response plan.
- Data protection: DPA template; TOMs summary; subprocessor list; breach procedure; SCCs if needed.
- Accessibility: ACR (EN 301 549/WCAG 2.1 AA), test snapshots, roadmap for fixes.
- Interoperability: conformance statement to ENI (if applicable), example signed documents (PAdES/XAdES), API/data exchange specs.
- Procurement ops: PLACSP account confirmed; qualified e‑signature for representative; bid assembly checklist.
- Invoicing: Facturae XML sample; FACe submission test; internal SOP for B2G invoicing.

Readiness Checklist (Quick)
- ROLECE: Submitted or ready to compile DEUC on demand.
- ENS: Target level defined; gap analysis complete; certification plan and timeline.
- Accessibility: ACR drafted; remediation plan.
- ENI: Statement prepared if integration in scope.
- PLACSP: Representative has a working qualified certificate; submission flow tested.
- E‑invoicing: Facturae generation and FACe submission validated.
- Evidence pack: Centralized, version‑controlled, and mapped to common pliego asks.

Notes
- The pliegos (PCAP + PPT) always prevail. Use them as the source of truth for each opportunity.
- Sector‑specific rules (health, defense, critical infrastructure) may impose additional requirements beyond this baseline.


# Research Plan — Spain Public Sector SaaS

Objectives
- Identify incorporation/registration statuses required to sell to Spanish public sector buyers.
- Identify mandatory security/compliance frameworks (e.g., ENS levels, accessibility, interoperability).
- Identify procurement platform and vendor registration obligations (PLACSP, ROLECE), and e-invoicing obligations (Facturae/FACe).
- Extract concrete, testable requirements from real tender documents (pliegos).

Primary Sources (authoritative)
- Law and regulations (BOE):
  - Ley 9/2017, de Contratos del Sector Público (LCSP)
  - RD 311/2022 (Esquema Nacional de Seguridad, ENS)
  - RD 4/2010 (Esquema Nacional de Interoperabilidad, ENI)
  - RD 1112/2018 (Accessibility of public sector websites and apps; EN 301 549)
- Platforms and registries:
  - Plataforma de Contratación del Sector Público (PLACSP)
  - ROLECE (Registro Oficial de Licitadores y Empresas Clasificadas del Estado)
  - FACe (public e-invoicing) and Facturae format
- Security and certification:
  - CCN-CERT (ENS guidance) and ENAC (accredited certification bodies)
- EU overlays:
  - GDPR/LOPDGDD; eIDAS trust services; NIS2/ENISA guidance

Method Steps
1) Map legal baseline (LCSP): procurement procedures, solvency criteria (economic/technical), classification rules, documentation.
2) Vendor registration: confirm ROLECE necessity/benefits; required company docs; digital certificate requirements; PLACSP account setup.
3) Security compliance: confirm ENS applicability and level (Básico/Medio/Alto) for SaaS handling AAPP data; certification vs. declaration; auditor accreditation (ENAC).
4) Interoperability and accessibility: ENI obligations for formats/APIs; accessibility per RD 1112/2018 (EN 301 549) and conformance evidence.
5) Data protection: GDPR + LOPDGDD; DPA requirements, international transfers, and data residency provisions commonly seen in pliegos.
6) E-invoicing and tax: Facturae format, FACe, and any SII obligations (if applicable).
7) Tender sampling: collect 5–10 recent SaaS/cloud pliegos from PLACSP; extract explicit requirements (ENS level, ISO 27001/20000/22301, WHT/data residency, SLAs, support hours, penalties).
8) Synthesis: build a requirements checklist and evidence matrix (what proof, who issues it, renewal cadence).

Deliverables
- Research_Log.md with links, excerpts, and notes.
- Checklist_ES_Public_Sector_SaaS.md with baseline requirements and evidence pointers.
- Optional: bid boilerplate sections (ENS statement, ISO certs, DPA, accessibility conformance report, security overview).

Assumptions
- Company can operate via Spain OpCo or EU entity as needed; registration steps will consider foreign entities selling in Spain as well.


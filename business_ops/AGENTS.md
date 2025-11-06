# Repository Guidelines

## Scope & Inheritance
- Applies to `/Users/travis/work/aifirst/business_ops/` directory
- Inherits from `~/work/aifirst/AGENTS.md` and `~/AGENTS.md`

⚠️ **SESSION PROTOCOL (REQUIRED)**

On Start:
- Run: bash ~/.agents/session-open.sh $(pwd) "[Agent Name]"
- Read: .agents/handoff.md for previous session context (if exists)

Before Finish (if you made changes):
1. Review changes: git status && git diff
2. Commit them: git add -A && git commit -m "Descriptive message"
   - Use conventional commits (docs:/chore:/etc)

On Finish:
- Run: bash ~/.agents/session-close.sh $(pwd) "[Agent Name]" "Your summary of what you did" "n"

## Multi-Agent Coordination

Multiple AI agents may work on this directory:
- **Claude Code** - Primary development and documentation
- **Gemini CLI** - Analysis, troubleshooting, research
- **Codex** - Code generation and assistance

Session scripts prevent conflicts and maintain context between agents.

## Purpose & Prime Directive
- Core business, legal, and strategy docs for Ai‑First Holdings Ltd.
- Maintain internal consistency; align with mission: "Turn AI investment into human capability and measurable ROI."
- Prime directive: build a legally resilient, founder‑protective structure across all docs.

## Project Structure
- Source docs: `ExportBlock-*` (authoritative markdown and CSV indexes).
- Index: `Document Hub.csv`/`.md`. Guide: `AGENTS.md`.
- Filenames are stable historical exports. Do not rename/move.

### Active Source Block (Batch 1 Applied)
- Current working set: `ExportBlock-8dac0805-4724-4e5c-900b-c9bfe0d0963f-Part-1`.
- Index files inside block: `Document Hub 29dfd07ed1c280fb9d36e3cc53582436.csv` and `_all.csv`.
- Changes reflect findings in `../../legal_review_batch1_incorporation_2025-10-31_23-28.md`.

## Key Documents Map (Current Structure)
- `Founder_Agreement.md` → `ExportBlock-*/Governance/Founder Agreement.md`
- `Shareholders_Agreement.md` → `ExportBlock-*/Governance/Shareholders Agreement.md`
- `Cayman_MandA.md` → `ExportBlock-*/Governance/Cayman M&A.md`
- `cayman_inc.md` → `ExportBlock-*/Governance/Cayman Inc.md`
- `delaware_inc.md` → `ExportBlock-*/Governance/Delaware Inc.md`
- `delaware_bylaws.md` → `ExportBlock-*/Governance/Delaware Bylaws.md`
- `IP_Assignment_Confidentiality.md` → `ExportBlock-*/Employment/IP Assignment Confidentiality.md`
- `Founder_Stock_Purchase_Agreement.md` → `ExportBlock-*/ESOP Equity/Founder Stock Purchase Agreement.md`
- `Equity_Incentive_Plan.md` → `ExportBlock-*/ESOP Equity/Equity Incentive Plan.md`
- `ESOP_Plan.md` → `ExportBlock-*/ESOP Equity/ESOP Plan.md`
- `esop_grant_agreement_template.md` → `ExportBlock-*/ESOP Equity/ESOP Grant Agreement Template.md`
- `esop_subplan_us.md` → `ExportBlock-*/ESOP Equity/ESOP Sub-Plan US (409A, ISOs-NSOs).md`
- `esop_subplan_spain_eu.md` → `ExportBlock-*/ESOP Equity/ESOP Sub-Plan Spain-EU (Good-Bad Leaver).md`
- `intercompany_agreement.md` → `ExportBlock-*/Intercompany Agreements/Intercompany Agreement.md`
- `intercompany_services_agreement.md` → `ExportBlock-*/Intercompany Agreements/Intercompany Services Agreement.md`
- `intercompany_ip_license_cayman_to_delaware.md` → `ExportBlock-*/Intercompany Agreements/Intercompany IP License Agreement - Cayman to Delaware.md`
- `intercompany_ip_license_cayman_to_spain.md` → `ExportBlock-*/Intercompany Agreements/Intercompany IP License Agreement - Cayman to Spain.md`
- `transfer_pricing_policy.md` → `ExportBlock-*/Intercompany Tax/Transfer Pricing Policy.md`
- `employment_contract_us.md` → `ExportBlock-*/Employment/Employment Contract USA.md`
- `employment_contract_spain.md` → `ExportBlock-*/Employment/Employment Contract Spain.md`
 - `founder_agreement_delaware.md` → `ExportBlock-*/Governance/Founder Agreement (Delaware).md`
 - `restricted_stock_purchase_agreement_delaware.md` → `ExportBlock-*/ESOP Equity/Restricted Stock Purchase Agreement (Delaware).md`
- `spain_board_regulations.md` → `ExportBlock-*/Governance/Spain Board Regulations.md`
- `spain_sl_bylaws.md` → `ExportBlock-*/Governance/Spain SL Bylaws (Estatutos).md`
- `spain_sl_incorporation_deed.md` → `ExportBlock-*/Governance/Spain SL Incorporation Deed (Escritura).md`
- `investor_side_letter_voting_covenant.md` → `ExportBlock-*/Investor Relations/Investor Side Letter - Voting Covenant template.md`
- `board_resolution_threshold_adjustment.md` → `ExportBlock-*/Governance/Board Resolution Template - Post-Series A Threshold Adjustment.md`
- `equity_issuance_procedure_appendix.md` → `ExportBlock-*/ESOP Equity/Equity Issuance Procedure Appendix.md`
- `m6_intercompany_summary.md` → `ExportBlock-*/Intercompany Agreements/M-6 Implementation Summary - Intercompany Agreements.md`
- `business_incorporation_plan.md` → `ExportBlock-*/Governance/Business Incorporation Plan.md`

## Editing Standards
- Clear business‑legal English; US style; keep section numbering.
- Headings use `#`, `##`; bullets with `- `; wrap ~100–120 chars.
- Commands/paths in backticks. Filenames follow `Title <uid>.md`.

## Search & Local Workflow
- List files: `ls -la` | `find . -maxdepth 2 -type f`.
- Search: `rg -n "keyword" ExportBlock-*/` (fallback `grep -RIn`).
- Count: `rg --files ExportBlock-*/ | wc -l`. Use editor Markdown preview.
 - Batch notes: open `../../legal_review_batch1_incorporation_2025-10-31_23-28.md` and
   `../../legal_review_batch2_founders_2025-11-01_12-21.md` for active checklists.

## Consistency & Legal Checks
Verify across relevant docs:
- Reverse vesting 4‑year/1‑year cliff, monthly after cliff (Founder, Shareholder, Stock Purchase).
- IP ownership centralized in Ai‑First Holdings (Cayman).
- Dual‑class shares: A=1 vote, B=10 votes; persists through financing/M&A.
- Confirm class labels are consistent across Articles, Shareholders Agreement,
  and Bylaws (avoid A/B role reversal). If labels cannot be unified, hard-code
  founder appointment rights until a Qualified IPO.
- Founder protections: board seats, buy‑sell, good/bad leaver definitions.
- Drag‑along: require supermajority (≥75% voting power) plus Class B
  separate consent to prevent founder loss of control; align Articles and
  Shareholders Agreement.
 - Class B anti‑dilution: add auto‑adjusting Class B voting ratio to
   maintain ≥51% total voting power (capped, e.g., 100:1), with prompt
   certification; reflect in both Shareholders Agreement and Cayman M&A.
- ESOP/incentive plans mirror vesting/options across jurisdictions.
- Intercompany + transfer pricing are arm’s‑length and auditable.
   - Execute subsidiary→Cayman IP assignments with explicit consideration, independent
     valuation, asset schedules, recordation within 90 days (USPTO/EUIPO), and TP
     documentation (Master/Local Files); file IRS Form 926 for US transfers.
   - Maintain WHT schedules for royalties and services (USA Forms 1042/1042‑S; Spain Modelos
     216/296) and a quarterly calendar; reconcile annually.
 - CbCR: If consolidated revenue ≥ €750m, prepare and file CbC Report (OECD Action 13). See
   Transfer Pricing Policy §13 and tracker: `ExportBlock-…/CbCR Notification Tracker Template 2025.md`.
- US ESOP: ISO $100k annual limit (IRC §422(d)) documented in US Sub‑Plan;
   grants specify ISO/NSO split; admin tracks calendar‑year first‑exercisable.
   Confirm 90‑day post‑termination ISO → NSO rule is stated.
 - US ESOP: Early exercise authorized (ISOs/NSOs) with repurchase at exercise
   price, escrow/legends, and §83(b) notice in sub‑plan and grant template.
 - Spain: ensure IP created by employees/contractors is properly assigned and
   moral rights acknowledged; GDPR-compliant data and DPA references included.
 - Delaware: incorporator and director/officer indemnification and exculpation
   clauses are present and consistent with DGCL §102/§145.
 - Cayman: Articles prevail over side agreements—keep governance terms aligned.

## Testing & Review
- Spell/grammar via editor plugin. Link check: `rg -n "\]\(http" ExportBlock-*/`.
- Validate CSV headers/delimiters. Preserve formatting; avoid unnecessary reflow.
- Use tables for ownership/vesting/milestones where helpful.
 - Verify indexes: open `ExportBlock-*/Document Hub *.csv` to reconcile titles,
   uids, and paths with any newly added or updated files.

## Commits & PRs
- Conventional commits (examples): `docs: unify ESOP vesting`, `chore: update document hub`.
- One logical change per PR with scope, rationale, linked issue, and before/after snippets.

## Security & Confidentiality
- Remove PII/secrets; use placeholders (e.g., `<ACCOUNT_ID>`). Mark/redact sensitive content.

## Jurisdictional Compliance
- USA: confirm employment‑at‑will or contract terms, inventions/IP assignment, and transfer pricing alignment (IRS §482); observe OFAC/EAR export/sanctions where relevant.
  - If a US non‑compete is desired, use a separate Non‑Compete Addendum with independent
    consideration, state carve‑outs (e.g., CA/OK/ND/DC), narrowed scope (competitor list),
    and blue‑pencil language. Otherwise, rely on non‑solicit + confidentiality + trade
    secret protection.
  - Attach applicable US State Addendum (CA/NY/CO/WA/OR at minimum) for remote workers; ensure wage
    statements, sick leave accruals, posting transparency, training, and venue rules align
    with local laws. Reference the addendum in the base US agreement.
- Cayman Islands: keep Ai‑First Holdings as IP owner; verify Companies Act, M&A provisions, governing‑law/venue, and economic‑substance requirements.
- Spain: comply with Estatuto de los Trabajadores (benefits/notice), acknowledge moral rights in IP, and ensure GDPR compliance + DPAs for cross‑border transfers.
   - Moral rights: no advance waivers. Use non‑assertion + perpetual license and obtain
     post‑creation written consents for significant modifications.
- Ensure governing‑law and venue clauses are consistent per document type; no contradictions across docs.
- Escalate changes to counsel when modifying law‑specific clauses or tax structures.
- ESOP/EIP governing law split: Cayman for corporate/securities; employment/leaver/data
   processing governed by participant’s local law via Sub‑Plan. Spain/EU Sub‑Plan must state
   GDPR/LOPDGDD compliance and exclusive Spanish labor court jurisdiction.
 - Employment IP chain: employee assigns to local employer (US Inc. / Spain S.L.);
   intercompany IP assignment agreement forwards to Cayman Holdings; reference and date
   these agreements in employment IP clauses.

## Agent Tasks
- `/review all` • `/align equity` • `/check ip` • `/audit legal coherence` • `/strengthen founder_control`.

## Legal Compliance Audit Runbook (7‑Batch)
- Batch 1: Incorporation & Governance (Cayman M&A, Delaware Inc/Bylaws, Spain Estatutos/Escritura)
- Batch 2: Founders (Founder Agreement(s), Stock Purchase, board/acceleration alignment)
- Batch 3: ESOP & Equity (EIP/ESOP Plan, US/EU Sub‑plans, grants, 409A)
- Batch 4: Employment (US/Spain contracts, IP/confidentiality, state addenda, GDPR Art.13)
- Batch 5: Shareholders & Investment (SA, side letters, voting covenants, buy‑sell)
- Batch 6: IP & Intercompany (Assignments, Licenses, Services, TP Policy, ESA, SCC/TIA)
- Batch 7: Cross‑Document Consistency (definitions, acceleration, governance, dispute resolution)

Checklist emphasis:
- ESA execution evidence; SCC Annex I/II/III + TIA; 409A remedy (avoid “void ab initio”); Founder departure/acceleration alignment; shotgun safeguards; intercompany EIN/CIF/office headers; WHT calendars.

Outputs:
- Per‑batch Markdown (optional), plus consolidated report at `specs/Business Docs/legal_review_consolidated_<YYYY-MM-DD_HH-MM>.md`.

## Change Propagation Policy
- Always propagate cross‑document changes in the same pass.
- When editing any of: vesting, class rights, governance, dispute resolution, IP, tax notes, or participation rights, update all relevant locations:
  - Founder Agreement(s) (Cayman + Delaware)
  - Shareholders Agreement
  - Equity Incentive Plan + ESOP Plan + US/EU Sub‑Plans
  - Grant templates (e.g., ESOP Grant Agreement)
  - Related board consents/resolutions and checklists (e.g., 409A)
  - Equity Issuance Procedure Appendix
  - Document Hub CSVs (add/rename entries as needed)
- Add subordination/sunset/definitions where a change introduces dependencies (e.g., lead/major investor terms).
- Run quick searches before/after: `rg -n "keyword" ExportBlock-*/` to catch stale references.

## Active Batches
- Batch 1 (Incorporation/Governance) applied to the active block above. See
  `../../legal_review_batch1_incorporation_2025-10-31_23-28.md` for itemized
  issues and resolutions traced into Articles, Bylaws, and Shareholders docs.
- Batch 2 (Founders) — Applied: reverse vesting (4y/1y monthly), good/bad leaver
  alignment, Founder board seat + casting vote, founders‑only shotgun, and mirror
  of “no non‑compete” stance in governance (employment handled via addendum).
- Batch 3 (ESOP) — Applied: US Sub‑Plan §422(d) $100k ISO annual limit with
  ordering/reclassification, early exercise authorization (ISOs/NSOs) with
  repurchase/escrow/§83(b) notice, and grant template alignment; Spain‑EU Sub‑Plan
  GDPR and labor court jurisdiction (Madrid).
- Batch 4 (Employment) — Applied: Spanish moral rights non‑waiver with license,
  US non‑compete moved to optional addendum with consideration; state addenda
  (CA/NY/CO/WA/OR) referenced; GDPR Art.13 disclosures; Spain probation period
  aligned to statute; H4 tracked in IP chain via intercompany references.
- Batch 5 (Shareholders) — Applied: drag‑along ≥75% + Class B separate consent;
  buy‑sell constrained to Founders; Class B anti‑dilution voting‑ratio auto‑adjust
  (capped at 100:1); explicit tag‑along/ROFR cross‑reference to Side Letter; side
  letter term set to 5 years or earlier triggers.
- Batch 6 (IP/Intercompany) — Applied: IP assignments US/Spain→Cayman; IP licenses
  Cayman→US/Spain; services agreement; TP Policy (benchmarking/DEMPE/CbCR); WHT
  schedules; ESA (Cayman) framework + annual calendar; LCIA arbitration alignment;
  SCC/TIA references and annexes.

## Current Status (Scan Summary)
- Updated Shareholders Agreement: tag‑along/ROFR cross‑references to Side Letter; investor voting covenant term aligned (5 years/Qualified IPO/<15%/mutual consent).
- Spain placeholders normalized to Madrid in Bylaws, Incorporation Deed, and Employment Contract governing venue.
- IP Assignment Agreements (US→Cayman; ES→Cayman): added detailed Schedules A–F templates; consideration placeholders remain for Finance to fill.
- Intercompany Agreement: SCC Annex I/II/III completion requirement made explicit in §6.1.1.
- Historical note: earlier logical indexes referenced `01-Governance`, `02-Employment`,
  `03-Intercompany_Tax`, and `04-ESOP_Equity`. The repository now uses physical folders as
  listed below; the old `04-ESOP_Equity` path is deprecated.

## Outstanding TODOs (to complete with counsel/finance)
- Intercompany IP Assignment (US→Cayman): fill Consideration placeholders `[X]`, `[Y]`, `[Valuation Date]`; populate Schedules A–F with actual assets and costs.
- Intercompany IP Assignment (Spain→Cayman): fill `[X]`, `[Y]`, `[Fecha Valoración]`; populate Anexos A–F with actual assets and costes.
- Intercompany IP Licenses (Cayman→US/Spain): complete registered office IDs and EIN/CIF `[TBD]` header fields.
- Intercompany Agreement §6 (SCCs/TIA): complete SCC Annex I/II/III details in Annex A and finalize TIA checklist in Annex B for Spain→US/Cayman flows.
- Spain Employment: fill CBA/professional group details in §5a; confirm weekly hours `[X]`.
- Transfer Pricing Policy: validate benchmarking medians/ranges with external study; verify WHT schedule deadlines and forms with current law.

## Folder Structure Note
- Per project policy, filenames are stable historical exports — do not rename/move.
- To provide “logical folders”, use the existing index guides under:
  - `ExportBlock-*/Governance/`
  - `ExportBlock-*/Employment/`
  - `ExportBlock-*/Intercompany Agreements/`
  - `ExportBlock-*/Intercompany Tax/`
  - `ExportBlock-*/ESOP Equity/INDEX.md`

## Folder Structure (Current)
- Governance: core corporate docs (SA, M&A, Bylaws/Inc, Board Regs, Founder docs, Board templates)
- Employment: employment agreements, state addenda, IP/confidentiality, SOWs, onboarding, DPA addendum
- Intercompany Agreements: IP licenses, IP assignments, intercompany framework, SCC/TIA annexes, M‑6 summary
- Intercompany Tax: Transfer Pricing Policy, CbCR tracker, ESA calendar
- ESOP Equity: ESOP Plan, EIP, Sub‑Plans (US/EU), Grant template, Equity Issuance Appendix, 409A/consents
- Investor Relations: Side letters and templates
- If physical moves are desired, open an explicit exception with rationale; otherwise maintain paths stable and update the Document Hub instead.

## Next Steps
- Complete the outstanding placeholders above; update Document Hub CSVs as values are finalized.
- Run cross‑document searches (`rg -n`) after each change to ensure propagation across Founder docs, SA, ESOP/EIP, grants, and intercompany.
- Align any future arbitration/governing law edits across all affected agreements in one pass.

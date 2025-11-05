# Legal Review – Ai-First (Batch 5: Shareholder & Investment Documents)
**Date**: November 2, 2025, 11:42 AM
**Scope**: Shareholders Agreement, Cayman M&A, Investor Side Letter, Spain Shareholders Addendum
**Jurisdictions**: USA (Federal/Delaware), Cayman Islands, Spain/EU

## Executive Summary
The shareholder and investment documents contain **6 Critical/High-Risk issues** that threaten founder control, create enforcement conflicts, and expose gaps in investor protections. Most critical: the 60% drag-along threshold allows investors to force a sale over founder objections if they accumulate sufficient Class A shares; the buy-sell shotgun mechanism lacks protections against hostile investor triggering; Class B voting rights have no anti-dilution protection; and multiple placeholders remain undefined creating ambiguity at critical trigger points. Spanish addendum conflicts with Cayman governance on quorum and arbitration venue.

### Risk Dashboard
- **Critical/High-Risk Issues**: 6 – Immediate attention required
- **Documents Reviewed**: 4 shareholder and investment documents

---

## CRITICAL & HIGH-RISK ISSUES

### 1. DRAG-ALONG THRESHOLD ENABLES FOUNDER LOSS OF CONTROL
**File**: `Shareholders Agreement 29dfd07ed1c281af8f32f385ea62a16d.md:33-36`
**Current Text**: "If holders of at least 60% of the voting power approve a sale of the Company, all Shareholders agree to sell on the same terms."

**Legal Problem**: This 60% voting power threshold allows investors to force founders to sell the company against their will. Since Class B has 10 votes per share, a future investor coalition holding as few as 6% of fully diluted equity (if all Class A) could accumulate 60% voting power if founders' Class B ownership dilutes below critical thresholds. This directly contradicts the protective mechanisms elsewhere in the agreement that require Class B separate consent for liquidity events.

**Founder Control Risk**: Travis Sheppard and co-founders could be forced to sell the company in a scenario where:
- Post-Series A dilution reduces founder Class B ownership to ~40% of shares
- Investors collectively hold 60% Class A shares (600,000 votes if 600,000 shares)
- Founders hold 40% split between Class A and Class B (~400,000 total votes even with 10x)
- Result: Forced sale against founder wishes, complete loss of optionality

**Potential Consequences**:
- Founders lose ultimate control over exit timing and terms despite dual-class structure
- Conflict with Section 10.2 which states liquidity events require "Class B separate consent"
- Investor-forced fire sales at suboptimal valuations
- Unable to reject hostile acquisition offers

**Recommended Fix**: Amend Section 2 to align with Class B protective provisions:

"**2. Drag-Along**
- If (i) holders of at least seventy-five percent (75%) of the voting power (calculated on a votes-cast basis) **and** (ii) holders of a majority of the outstanding Class B shares, voting as a separate class, approve a sale of the Company pursuant to Section 10.2 (Liquidity Events), all Shareholders agree to sell on the same terms, subject to customary carve-outs for tag-along rights and dissenting shareholder appraisal rights under applicable law."

**Jurisdictional Impact**: Cayman Islands, USA (enforceability), Spain (coordination with local bylaws)

---

### 2. BUY-SELL SHOTGUN MECHANISM VULNERABLE TO INVESTOR WEAPONIZATION
**File**: `Shareholders Agreement 29dfd07ed1c281af8f32f385ea62a16d.md:92-108` and `Pacto de Socios Addendum d2e3f4a5b6c7d8e9f001122334455667.md:47-56`

**Current Text**: "Any Founder (the 'Initiating Founder') may deliver a Buy–Sell Notice stating a per‑share price... Within ten (10) Business Days, the recipient Founder(s) must elect either to (i) sell all of their Shares to the Initiating Founder at the Offer Price, or (ii) purchase all of the Initiating Founder's Shares at the Offer Price."

**Legal Problem**: Section 10.3 limits shotgun triggers to founder-vs-founder deadlocks and founder departures, but the mechanism does NOT explicitly exclude investors from triggering it after they acquire shares from a departing founder. If an investor purchases shares from a founder in a secondary transaction (or via the buy-sell itself), that investor could potentially trigger the shotgun against remaining founders, forcing them to either:
1. Buy out the investor at an inflated price (potentially requiring personal financing), or
2. Sell their entire stake at an artificially depressed price

Additionally, the Spanish version permits the mechanism but states transfers "no estarán sujetas a derechos de adquisición preferente estatutarios (art. 107 LSC)" which may conflict with Spanish mandatory law provisions protecting minority shareholders.

**Founder Liability Risk**:
- Hostile investor acquires 20% stake from departing founder
- Triggers shotgun at $10M valuation
- Travis must either: (a) personally come up with $2M in 20 days to buy out investor, or (b) sell entire 100% stake to investor for $8M (possibly well below true value)
- Personal financial exposure if unable to secure financing on short timeline

**Potential Consequences**:
- Forces founders into personal financial distress or premature exit
- Circumvents Class B protective provisions by using contractual buy-sell
- Spanish law may void the waiver of statutory pre-emption rights (LSC Art. 107)
- Creates enforcement conflict between Cayman agreement and Spanish bylaws

**Recommended Fix**:

Add to Section 10.3 (Triggers):
"This Section may be invoked **only by a Founder holding Class B shares** upon: (a) a deadlock between Founders..."

Add new Section 10.9:
"**Investor Exclusion; No Assignment**: The buy–sell mechanism in this Section 10 is personal to the Founders and may not be exercised by any investor, assignee, or transferee. If an investor or third party acquires shares from a Founder (whether pursuant to this Section 10 or otherwise), such investor/transferee takes such shares subject to all transfer restrictions and agreements herein but shall have no right to trigger the buy–sell. For the avoidance of doubt, only a natural person who is a founder and holder of Class B shares as of the date hereof may invoke Section 10.4–10.5."

For Spanish addendum, add compliance language:
"Las transferencias al amparo de esta cláusula requerirán el consentimiento previo de los socios conforme al artículo 107 LSC en la medida exigida por ley imperativa, sin perjuicio del consentimiento anticipado otorgado por los firmantes en este Addendum."

**Jurisdictional Impact**: Cayman Islands, Spain (LSC Art. 107 mandatory pre-emption), USA (enforceability if involving U.S. founders)

---

### 3. CLASS B ANTI-DILUTION PROTECTION MISSING
**File**: `Shareholders Agreement 29dfd07ed1c281af8f32f385ea62a16d.md:76-78` and `Cayman M&A 29dfd07ed1c281148e90d17c98086c08.md:27`

**Current Text**:
- SHA: "In any new issuance of equity... each Founder shall have pre‑emptive rights to purchase their pro‑rata share to maintain ownership, and an additional super pro‑rata right to purchase up to an extra [•]% of the round"
- M&A: "creation or issuance of any new class or series of shares... require approval of holders of a majority of the outstanding Class B shares"

**Legal Problem**: While Class B holders have consent rights over new issuances and founders have pre-emptive/super pro-rata rights, there is **no explicit mechanism to ensure founders can maintain their Class B voting control** if they lack capital to exercise their pro-rata rights. The super pro-rata percentage is undefined ([•]%), and there's no provision for:
1. Automatic adjustment of Class A/B voting ratios if founder ownership falls below certain thresholds
2. Anti-dilution protection for Class B voting power (e.g., ratchet adjustments to 10-to-1 ratio)
3. Caps on investor Class A accumulation that could overwhelm founder voting power

**Founder Control Risk**:
- Series A raises $10M at $40M post-money (20% dilution)
- Founders don't have $2M cash to maintain 10% pro-rata ownership
- Founders dilute from 100% → 80% → 60% → 40% over rounds
- Even with Class B 10x votes, by Series C: Founders = 40% shares × 10 votes = 400 votes; Investors = 60% × 1 vote = 600 votes
- Result: Loss of voting control despite dual-class structure and protective provisions

**Potential Consequences**:
- Founders lose voting control within 2-3 financing rounds
- Class B protective provisions become useless once investors reach >50% voting power
- Reserved Matters and drag-along protections evaporate
- Dual-class structure fails to preserve founder control as intended

**Recommended Fix**:

Add new Section 8bis to Shareholders Agreement:

"**8bis. Class B Anti-Dilution Protection**
- Voting Power Maintenance: If, following any issuance of New Securities, the aggregate voting power of all outstanding Class B shares would represent less than fifty-one percent (51%) of the total voting power of all outstanding shares (calculated on a fully diluted, votes-cast basis), then the votes per share attributable to Class B shall automatically adjust upward to the minimum ratio necessary to maintain Class B voting power at fifty-one percent (51%), rounded to the nearest whole number.
- Worked Example: If founders hold 1,000,000 Class B shares and investors hold 2,000,000 Class A shares, Class B ratio adjusts from 10:1 to 21:1 (1M × 21 = 21M votes = 51.2% vs. 2M × 1 = 2M votes).
- Notice and Certification: Within five (5) Business Days of any equity issuance, the Company shall calculate and certify to all shareholders the adjusted Class B voting ratio, if any, and shall update the M&A and register accordingly.
- Cap: Notwithstanding the foregoing, the Class B voting ratio shall not exceed one hundred (100) votes per share; if adjustment would exceed this cap, the Company must seek alternative mechanisms (e.g., blocking investor participation) or obtain Class B consent to proceed with the dilutive issuance.
- Super Pro-Rata Definition: The super pro-rata right in Section 8 shall be no less than one hundred percent (100%) of each Founder's pro-rata allocation, allowing each Founder to purchase up to double their pro-rata share in any round to preserve voting control."

**Jurisdictional Impact**: Cayman Islands (M&A amendment required), USA (anti-dilution standard practice), Spain (conforming update to addendum)

---

### 4. MULTIPLE CRITICAL PLACEHOLDERS UNDEFINED
**File**: Multiple files – pervasive issue

**Undefined Placeholders**:
1. **Super pro-rata percentage** (SHA Section 8): "[•]%"
2. **Investor voting covenant duration** (Side Letter Section 4): "[•] anniversary"
3. **Founder minimum ownership threshold** (Side Letter Section 4(iii)): "[•]% of fully diluted share capital"
4. **Promissory note term** (SHA Section 10.6 and Spanish 9.4): "[•] months"
5. **Promissory note interest rate** (SHA Section 10.6 and Spanish 9.4): "[•]% per annum"
6. **Spanish qualified majority for founder removal** (Spanish Section 4bis): "[•]%"
7. **Spanish debt threshold** (Spanish Section 2): "EUR [•]"

**Legal Problem**: These are not optional nice-to-haves—these are **material economic and governance terms** that render the agreements incomplete and potentially unenforceable. Under Cayman Islands contract law, Delaware law, and Spanish civil code, agreements with essential terms left "to be agreed" are void for uncertainty. Specific issues:

- **Super pro-rata undefined**: Founders can't calculate their anti-dilution rights or financing needs
- **Voting covenant duration undefined**: Investors don't know when they regain voting freedom; may argue covenant is perpetual (illegal restraint) or illusory
- **Founder ownership threshold undefined**: Termination trigger for voting covenant is unknowable
- **Shotgun payment terms undefined**: Neither party knows the financing structure for a forced buy-out, creating practical impossibility

**Potential Consequences**:
- Entire agreement may be void for uncertainty (Cayman: *May & Butcher v The King*; Delaware: UCC § 2-204; Spain: Civil Code Art. 1261)
- Investors could refuse to honor voting covenant claiming it's unenforceable
- Shotgun provisions unusable, leaving no exit mechanism for founder disputes
- Litigation over what terms "should have been" implied

**Recommended Fix**:

Immediately specify all placeholders. Suggested values based on market standards:

1. **Super pro-rata**: "**one hundred percent (100%)** of their pro-rata allocation (i.e., each Founder may purchase up to double their pro-rata share)"
2. **Voting covenant duration**: "**fifth (5th)** anniversary" OR "until the earlier of the Series B closing or the third anniversary"
3. **Founder ownership threshold**: "**fifteen percent (15%)** of the Company's fully diluted share capital (including all outstanding shares, options, warrants, and convertible securities on an as-exercised/converted basis)"
4. **Promissory note term**: "**eighteen (18)** months"
5. **Promissory note interest rate**: "**eight percent (8%)** per annum (or the applicable statutory rate if higher under the law of the purchaser's jurisdiction)"
6. **Spanish qualified majority**: "**dos tercios (66,67%)** del capital social" (2/3 capital, consistent with Spanish corporate governance standards)
7. **Spanish debt threshold**: "EUR **500.000** (quinientos mil euros)"

Add to each document:
"The parties acknowledge that this Agreement is fully enforceable and all material terms have been agreed. Any brackets or placeholders in prior drafts have been superseded by the values set forth herein."

**Jurisdictional Impact**: All three jurisdictions—essential terms doctrine applies universally.

---

### 5. CROSS-JURISDICTIONAL GOVERNANCE CONFLICTS (SPAIN VS. CAYMAN)
**File**: `Shareholders Agreement 29dfd07ed1c281af8f32f385ea62a16d.md:142-147` and `Pacto de Socios Addendum d2e3f4a5b6c7d8e9f001122334455667.md:41-42`

**Current Text**:
- **Cayman SHA**: "Governing Law: Cayman Islands... Arbitration: LCIA Rules... Seat: London, United Kingdom"
- **Spanish Addendum**: "Ley Aplicable y Resolución de Conflictos: Este Addendum se rige por la ley española. Las controversias se someterán a... arbitraje institucional en Madrid (Corte de Arbitraje de Madrid), idioma español"

**Legal Problem**: The Spanish operating company's shareholders agreement explicitly states Spanish law governs and Madrid arbitration applies, while the Cayman shareholders agreement (which likely includes the Spanish entity as a Group Company) specifies Cayman law and London LCIA arbitration. This creates a direct conflict:

1. If a Reserved Matter requires both Cayman holdco board approval AND Spanish operating company junta approval, and a dispute arises, which forum has jurisdiction?
2. Spanish courts and arbitrators may refuse to enforce Cayman M&A provisions that conflict with Spanish *Ley de Sociedades de Capital* (LSC) mandatory provisions
3. The Spanish addendum states it complements ("complementa") the shareholders agreement but doesn't clearly subordinate to it
4. Quorum requirements differ: Cayman M&A requires "Founder Director presence" (singular); Spanish addendum requires "presencia... del Presidente/Fundador designado" but doesn't specify consequences if multiple founders disagree

**Enforcement Risk**:
- Investor sues in Madrid to block a Reserved Matter, arguing Spanish addendum governs Spanish entity
- Travis defends in London LCIA, arguing Cayman SHA controls all Group governance
- Parallel proceedings; conflicting judgments
- Spanish court refuses to recognize London arbitral award under EU/Spain public policy grounds (potentially finding Cayman law violates Spanish mandatory director duties or minority protections)

**Potential Consequences**:
- Unenforceable governance deadlock
- Investors forum-shop to weaker protections
- Increased litigation costs (dual proceedings)
- Spanish regulatory issues if Spanish entity governance doesn't comply with LSC

**Recommended Fix**:

Amend both documents to create clear hierarchy and carve-outs:

**Cayman SHA** – Add new Section 12.1:
"**Jurisdictional Carve-Out for Operating Entities**: Notwithstanding the governing law and arbitration provisions of this Agreement, disputes relating solely to the internal governance of Ai‑First Spain, S.L. (including director appointment/removal, junta voting, and matters under Spanish corporate law) shall be governed by the Pacto de Socios Addendum and resolved under Spanish law and Madrid arbitration as set forth therein. All other disputes (including interpretation of Reserved Matters, IP ownership, intercompany agreements, and founder/investor rights at the Cayman holdco level) shall be governed by this Section 12."

**Spanish Addendum** – Add new Section 7bis:
"**Relación con el Pacto de Cayman**: Este Addendum regula la gobernanza interna de Ai‑First Spain, S.L. conforme a la ley española. En caso de conflicto entre este Addendum y el Shareholders Agreement de Ai‑First Holdings Ltd. (Cayman), prevalecerá (i) este Addendum para cuestiones de derecho societario español (juntas, consejos, LSC), y (ii) el Shareholders Agreement para Materias Reservadas de nivel grupo, titularidad de IP, relaciones intergrupo, y derechos económicos de fundadores e inversores. Cualquier controversia sobre el ámbito de aplicación se someterá primero a mediación conjunta (Madrid y Londres) antes de arbitraje."

**Jurisdictional Impact**: Spain (LSC compliance), Cayman Islands (enforceability of foreign choice-of-law), EU (recognition of arbitral awards under New York Convention)

---

### 6. INVESTOR SIDE LETTER LACKS INVESTOR PROTECTIVE PROVISIONS
**File**: `Investor Side Letter - Voting Covenant template 11223344556677889900aabbccddeeff.md`

**Current Text**: The entire side letter is one-way: investor commits to vote for founder slate and preserve founder governance, but there are **zero reciprocal protections for the investor** (no information rights, inspection rights, financial reporting, anti-dilution, liquidation preferences, or participation rights).

**Legal Problem**: While founder-friendly governance is appropriate for early-stage companies, a completely one-sided voting covenant with no investor protections creates several risks:

1. **Illusory Contract Risk**: Under Cayman and Delaware law, a contract where one party receives no consideration or benefit may be unenforceable for lack of mutuality of obligation. The investor receives only "the right to participate in the investment" which may not be adequate consideration if the investment terms themselves provide no protections.

2. **Unconscionability**: If the investor is sophisticated (institutional), this may be fine; but if the investor is a less sophisticated angel or individual, courts in some jurisdictions may find the covenant unconscionable and refuse enforcement.

3. **Practical Enforceability**: Even with the specific performance clause (Section 5), investors may challenge enforcement claiming they were never properly informed of the governance implications or that the covenant is an unreasonable restraint (particularly if the duration is long or indefinite).

4. **GDPR/Data Transfer Issues** (Spain/EU): The side letter contains no provisions addressing:
   - Investor's right to access shareholder data under GDPR Art. 15
   - How investor data will be processed across Cayman/USA/Spain entities
   - Legal basis for cross-border data transfers (SCCs, adequacy decisions)

**Recommended Fix**:

Add new Section 2.5 to Side Letter:

"**Investor Protections and Information Rights**: In consideration for Investor's voting covenant herein, the Company shall:
- (a) Deliver to Investor, within thirty (30) days after the end of each fiscal quarter, unaudited quarterly financial statements (balance sheet, income statement, cash flow statement), and within ninety (90) days after fiscal year-end, audited annual financials;
- (b) Provide Investor with at least ten (10) Business Days' advance written notice of any meeting or written consent at which Reserved Matters will be considered, together with all materials to be considered;
- (c) Grant Investor reasonable inspection rights (upon five (5) Business Days' notice, during business hours, no more than twice per year) to the Company's books and records, subject to customary confidentiality;
- (d) Include customary tag-along and ROFR protections consistent with the Shareholders Agreement;
- (e) Provide Investor with written notice within five (5) Business Days of any breach or potential breach of the Shareholders Agreement or M&A that could materially affect Investor's rights hereunder."

Add new Section 7 (GDPR Compliance):
"**Data Protection**: The Company shall process Investor's personal data (including name, contact information, shareholding data) in accordance with its privacy policy and applicable data protection law (including GDPR where applicable). Investor consents to such processing for the purposes of shareholder administration and corporate governance. Cross-border data transfers shall be conducted pursuant to Standard Contractual Clauses or other lawful mechanisms."

**Jurisdictional Impact**: Cayman Islands (contract law—consideration), USA/Delaware (unconscionability), Spain/EU (GDPR compliance for investor data)

---

## RECOMMENDED IMMEDIATE ACTIONS

**Priority 1 (This Week)**:
1. Define all [•] placeholders with specific numeric/temporal values
2. Amend drag-along to require Class B consent (Section 2)
3. Add investor exclusion to buy-sell shotgun (Section 10.9)

**Priority 2 (Before Any Financing Round)**:
4. Implement Class B anti-dilution voting power adjustment mechanism
5. Add investor protections to Side Letter template
6. Reconcile Spain/Cayman governance conflicts with jurisdictional carve-outs

**Priority 3 (Before Series A)**:
7. Engage Spanish counsel to validate LSC compliance of shotgun/pre-emption waivers
8. Add GDPR data processing provisions to all investor-facing documents
9. Create consolidated governance matrix showing which entity/forum governs each Reserved Matter

---

## JURISDICTIONAL NOTES

### USA (Federal/Delaware)
- **Anti-dilution mechanisms**: Dual-class structures with auto-adjusting voting ratios are permissible under Delaware law (*Williams v. Geier*, Del. 2012) if clearly documented in certificate of incorporation.
- **Shotgun provisions**: Enforceable in Delaware but must be clearly limited to intended parties; third-party assignment risks triggering unconscionability review.
- **Consideration for voting covenants**: Delaware requires mutuality; investor must receive something of value beyond mere participation rights.

### Cayman Islands
- **Protective provisions**: Class B separate consent is enforceable under Cayman Companies Act (2024 Revision), Section 8(3) and Section 36, provided clearly documented in M&A.
- **Buy-sell mechanisms**: Enforceable but must comply with statutory share transfer procedures (Companies Act Sections 39-42); failure to follow formalities may void transfers.
- **Incomplete agreements**: Cayman courts follow English common law—agreements "to agree" on essential terms are void for uncertainty (*May & Butcher v The King* [1934] 2 KB 17).

### Spain/EU
- **Statutory pre-emption (LSC Art. 107)**: Spanish law grants shareholders mandatory first refusal rights on share transfers; contractual waivers are valid only if properly documented in bylaws and shareholders approve by qualified majority.
- **Casting vote (voto de calidad)**: Permitted under Spanish law if expressly provided in bylaws, but cannot override mandatory quorum requirements or LSC protective provisions.
- **Arbitrability**: Corporate governance disputes are arbitrable in Spain (*Ley de Arbitraje* 60/2003) but awards must respect LSC mandatory provisions or courts may refuse enforcement under public policy grounds.
- **GDPR**: Investor data processing requires lawful basis (Art. 6) and compliance with cross-border transfer requirements (Art. 44-50); Standard Contractual Clauses required for Cayman/USA transfers.

---

**END OF BATCH 5 REVIEW**

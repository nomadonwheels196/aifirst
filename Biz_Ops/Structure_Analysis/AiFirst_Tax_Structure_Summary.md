# 🧭 The Ai‑First Incorporation & Tax Strategy Summary

### 🎯 Purpose
This framework explains **how your corporate structure, equity, and residency interact** — showing when and where you (Travis) will owe tax and how to legally minimize it through planning.  
It draws on:
- U.S. tax rules (QSBS, 83(b), ISO/NSO, AMT, etc.)  
- Portugal’s NHR regime  
- Spanish and Irish operating company obligations  
- Cayman, Ireland, Andorra, and Dubai holding options  

> Assumptions: You and your co‑founder are currently Spanish tax residents. References to Portugal’s NHR apply only if you later elect Portuguese residency; treat them as optional planning notes, not current assumptions.

---

## 🏗️ Structure Snapshot (Current Plan)

Goal: keep a simple, defensible structure for operations and QSBS eligibility, while evaluating whether an IP holding subsidiary adds net benefit.

```
US HoldCo (Delaware C‑Corp)  ← Parent/issuer (QSBS)
├─ US OpCo (Delaware C‑Corp) ← Contracts/revenue; hires US staff
├─ Spain OpCo (S.L./S.L.U.)  ← Local employment/payroll in ES
└─ IP HoldCo (TBD)           ← Option A: Ireland Ltd; Option B: Cayman Exempt Co.; Option C: None
```

- Roles
  - `US HoldCo`: parent/issuer, board, equity plan, financing, QSBS qualification.
  - `US OpCo`: customer contracts, commercial activities in the U.S., potential employer of record for U.S. team.
  - `Spain OpCo`: employs founders/staff located in Spain; local compliance and payroll.
  - `IP HoldCo` (under evaluation): owns core IP and licenses to OpCos.

- IP HoldCo options (decision pending)
  - Ireland: 12.5% trading rate (6.25% KDB possible), R&D credit, strong treaty network; requires real substance (staff/management in IE).
  - Cayman: 0% local tax; requires economic substance (director/office); perception and U.S. anti‑deferral rules may limit benefit.
  - None: keep IP at US HoldCo or relevant OpCo until scale justifies a move.

Decision status: IP HoldCo is not yet selected. Proceed with HoldCo + US/ES OpCos now; revisit IP entity after product/market fit and initial revenue.

---

## 📒 Spain Tax Residency (Current Default)

What this assumes: You and your co‑founder are currently Spanish tax residents; Spain OpCo exists to employ Spain‑based staff and handle local compliance. If you later consider relocating to Portugal, see the section “Optional: Portugal’s NHR (Non‑Habitual Resident) Rules” below for planning differences.

### 🧑‍💼 Personal Residency & Income
- Residency triggers: generally >183 days in Spain or center of vital interests. Tax on worldwide income once resident.
- Employment income: progressive rates by region; employer and employee social security apply. Explore local incentives for startups/innovators.
- Savings income (dividends/capital gains): taxed under Spain’s savings schedule; treaty relief may apply on cross‑border payments.
- Special regime: consider the inbound expatriate regime (“Beckham Law”) if eligible; it can simplify treatment of employment income but has strict conditions and trade‑offs. Obtain local advice.
- Wealth/solidarity taxes: assess exposure based on region and net worth; planning may be warranted for founder shares.

### 🏢 Spain OpCo (Corporate)
- Corporate income tax: standard 25% (startup reductions may apply initially). VAT registration if applicable to services.
- Withholding on outbound payments: reduced rates may apply under Spain’s treaties; ensure correct forms and beneficial ownership tests.
- Transfer pricing: intercompany services and IP licenses must be documented at arm’s length (Master/Local file where required).
- Permanent establishment risk: keep management/mind‑and‑management of non‑ES entities outside Spain to avoid unintended Spanish taxation.
- CFC/anti‑avoidance: Spain has CFC rules; low‑taxed passive income in foreign subs may be attributed to Spanish residents. Design structure and substance accordingly.

---

## 🧮 IP HoldCo Options — Decision Matrix

Use this as a live checkpoint while you assess whether to set up an IP subsidiary now or defer.

| Option | Treaty/WHT | Substance & Cost | Incentives | Optics/Compliance | U.S. Anti‑Deferral | Setup/Complexity | When It Shines |
|---|---|---|---|---|---|---|---|
| Ireland Ltd | Strong treaty network; generally low WHT with filings | Requires real team/management in IE; higher ongoing cost | 12.5% trading rate; 6.25% KDB; 25% R&D credit | High credibility with investors/partners | Subject to U.S. GILTI/Subpart F; planning available | Medium | When you will hire in IE and have material R&D/IP activity |
| Cayman Exempt Co. | Limited treaty network; WHT often higher | Economic substance tests (director/office); service fees | No corporate tax; no local incentives | Optics can be sensitive; bank/KYC hurdles | U.S. GILTI/Subpart F concerns; watch anti‑hybrid | Medium | Capital‑light IP holding with clear commercial rationale and strong compliance |
| No IP HoldCo (status quo) | Use parent/opcos + existing treaties | No new entity; lowest cost | N/A | Simple and defensible | U.S. rules as per HoldCo/OpCos | Low | Early stage; until scale justifies added complexity |

Guidance: Default to “no IP HoldCo” until there is a clear commercial need (customers, hiring locale, R&D footprint, or measurable WHT savings). If/when you choose one, ensure governance, transfer pricing, and real substance are in place before IP migration.

---

## 📘 1. Key Definitions & Core Concepts

| Term | Meaning / Importance |
|------|-----------------------|
| **Grant / Grant Date** | A *grant* gives you the right to shares (restricted stock, options, or RSUs). The *grant date* is when the board approves it — triggering tax rules like the 30‑day 83(b) filing window. |
| **Vesting** | Shares or options vest over time (or milestones). Unvested shares revert to the company if you leave. |
| **Exercise / Exercise Price** | *Exercise* means buying shares under an option. *Exercise price* (strike) is what you pay per share. |
| **RSU (Restricted Stock Unit)** | You receive shares automatically upon vesting — no purchase price, but you pay tax at vesting on FMV. |
| **Stock Options (ISO / NSO)** | Give you the right (not obligation) to buy shares. ISOs get favorable capital-gains treatment if held long enough. NSOs are taxed as income at exercise. |
| **Qualified vs. Non-Qualified Options** | ISOs = “qualified” for special tax treatment (long-term capital gains). NSOs = ordinary income at exercise. |
| **Accelerated Tax (83(b) Election)** | Lets you pay ordinary income tax now (on low FMV at grant) instead of later (when shares are valuable). Locks in a small tax bill and starts capital-gains clock early. |
| **AMT (Alternative Minimum Tax)** | A secondary U.S. tax system. Exercising ISOs can trigger AMT on the “spread” (FMV – strike). |
| **Convert to Shares / Delivery** | The moment RSUs or phantom shares actually convert into shares (taxable event). |
| **Arm’s-Length Transaction** | A transaction between unrelated parties acting independently; determines “fair market value” (FMV) for private equity. |
| **Foreign-Sourced Income** | Income originating outside your country of residence. Under NHR, foreign-sourced dividends and gains *may be exempt* in Portugal if they can be taxed at source. |
| **Dividends / Passive Royalties / Non-Trading Income** | Income from ownership or IP licensing, not operations. Often taxed differently from active income. |
| **Asset Sale vs. Share Sale** | *Asset sale*: buyer purchases company assets → double taxation. *Share sale*: buyer buys shares → usually single level of tax (preferred). |

---

## 📗 2. Valuation & 83(b) Logic

### Determining FMV
- Public: market price at vesting/exercise.
- Private: determined by a **409A valuation** (U.S.) or **arm’s-length standard** (EU/Portugal).
- At incorporation: FMV ≈ par value if no funding or revenue, but must be *defensible* (document rationale).

### 83(b) Example
| Variable | Example |
|-----------|----------|
| Shares | 1,000,000 |
| Par Value | $0.0001 |
| FMV at Grant | $0.01 |
| FMV at Vesting | $1.00 |
| Without 83(b) | $900 K taxable ordinary income at vesting |
| With 83(b) | $10 K taxable at grant (tiny) |
| **Result** | Pay a small amount now, avoid huge income tax later, and qualify for long-term capital gains. |

---

## 📙 3. Key Formulas

| Formula | Description |
|----------|--------------|
| **Pre-tax Proceeds** | `Exit_Valuation × Founder_Share` |
| **After Corporate Tax** | `Pre_tax × (1 − Corporate_Tax_Rate)` |
| **After Withholding (Dividends/Royalties)** | `After_Corp × (1 − Withholding_Tax_Rate)` |
| **After Personal CG Tax** | `After_Wh × (1 − Personal_CG_Tax_Rate)` |
| **Final Net Proceeds** | = post-tax cash at exit |

**QSBS Exclusion Formula:**
```
Taxable Gain = Sale_Price − Basis − 10,000,000 (QSBS Exclusion)
Tax = Taxable_Gain × 23.8%
```

**Example (Your Case):**
- Sale: $130 M  
- Basis: $41 K  
- QSBS Exclusion: $10 M  
- Taxable Gain ≈ $119.96 M  
- U.S. Tax ≈ $28.55 M (≈ 23.8 %)  
- 83(b) Tax ≈ $15 K upfront  
- **Total ≈ $28.6 M U.S. tax**

---

## 📕 Optional: Portugal’s NHR (Non-Habitual Resident) Rules

| Income Type | When It’s Foreign-Sourced (Exempt) | When It’s Portuguese-Sourced (Taxable) |
|--------------|-----------------------------------|-----------------------------------------|
| **Dividends / Interest / Royalties** | If paid by non-Portuguese company *and* may be taxed at source country under DTA. | If company is managed from Portugal or in a blacklisted jurisdiction. |
| **Capital Gains** | If the company is foreign and DTA allows taxation in source country (U.S. counts). | If company effectively managed from Portugal or >50 % value is Portuguese real estate. |
| **Employment Income** | Only exempt if taxed in source country under DTA (e.g., you physically work outside Portugal). | If work performed in Portugal → taxed at 20 % (eligible professions) or progressive rates (up to 54.5 %). |
| **Self-Employment / Consulting** | Exempt if performed outside Portugal and taxed abroad. | Work done in Portugal → taxed same as employment. |

✅ **Effective management** = where decisions happen:
- Board meetings, signatures, contracts → if in Portugal, company may be re-classified as Portuguese and lose NHR exemptions.  
Maintain **board meetings, directors, and decision-making outside Portugal**.

---

## 📓 5. Jurisdictional Scenarios (Summarized)

| Scenario | Corporate Tax | Personal Tax (U.S.) | Portugal NHR Treatment | Net Result |
|-----------|----------------|---------------------|------------------------|-------------|
| **A. Delaware C-Corp + QSBS** | 21 % corporate; 0 % on share sale | First $10 M excluded, remainder 23.8 % | Exempt (U.S. = source country) | ~ $28.6 M tax on $130 M exit |
| **B. Cayman HoldCo → Delaware Flip** | 0 % | 23.8 % | Exempt | ~ $99 M net |
| **C. Ireland HoldCo + NHR** | 0 % on share sale; 12.5 %–25 % on trading/royalty income | 23.8 % | Usually exempt | ~ $99 M net |
| **D. Dubai HoldCo** | 0–9 % | 23.8 % | Exempt | ~ $99 M net |
| **E. Andorra HoldCo** | 0 % corp; 0–10 % personal | 23.8 % | Exempt | ~ $99 M net |

---

## 📈 6. Employment & Payroll Obligations

| Country | Employer Burden | Notes |
|----------|------------------|-------|
| **U.S.** | ~ 16 % (FICA/Medicare combined employer + employee) | Simpler if you’re paid from U.S. entity; NHR still taxes you 20 %. |
| **Spain** | ~ 30 % employer + 6 % employee + potential 14-month pay | Must register as Spanish employer, pay social security, comply with labour law. |
| **Portugal** | NHR personal tax = 20 % on salary (eligible roles) | No corporate obligations unless company managed from Portugal. |

---

## 💡 7. Key Recommendations

### 🌍 Corporate Structure
1. **Keep the U.S. and Spain as OpCos.**  
   Spain for employees, U.S. for QSBS and main contracts.
2. **Add a Cayman or Irish HoldCo only if:**  
   - You plan to license IP globally, or  
   - You expect significant non-U.S. investors or acquisitions.  
3. **Maintain effective management outside Portugal.**  
   Board meetings, IP control, and strategic decisions should occur abroad.

### 💵 Salary Strategy
- Paying yourself from the **U.S. entity** is cheapest (16 % FICA vs 30 % Spain).  
- Regardless, your **salary is taxed in Portugal** at 20 % NHR rate because you work there.
- Claim **FEIE** (~$130 K exclusion) + **foreign tax credit** on your U.S. return.

### 💰 83(b) + QSBS
- File 83(b) **within 30 days of grant**.  
- Pay small U.S. tax at low FMV.  
- Hold shares ≥ 5 years to qualify for full QSBS exclusion.  
- Keep detailed records (grant docs, FMV rationale).

### 📦 IP & Royalty Optimization (Ireland or Cayman)
- **Ireland route:**  
  - Move IP into Irish subsidiary with staff → qualify for 12.5 % trading rate or 6.25 % KDB.  
  - Apply for 25 % R&D credit.  
  - With proper filings (Form V2A), **0–5 % withholding** to U.S. HoldCo.  
- **Cayman route:**  
  - 0 % tax, but maintain *substance* (local director, office).  
  - U.S. tax still applies personally.

### 🇵🇹 NHR Optimization
- Keep your **residency under NHR for 10 years**.  
- Avoid “effective management” in Portugal.  
- Ensure dividends and capital gains are **foreign-sourced**.  
- Portugal won’t tax exit gains as long as:  
  - The company isn’t Portuguese-managed.  
  - The gain is taxable in the source country (U.S.).

---

## 📄 8. Example: Year-by-Year Tax Timeline (Restricted Stock + 83(b))

| Year | Event | Portugal (NHR) | U.S. | Notes |
|------|--------|----------------|------|-------|
| 1 | File 83(b); $200 K salary | 20 % on salary (≈ $40 K) | ~$7 K on $41 K 83(b); FEIE + credit offset salary tax | QSBS clock starts |
| 2–4 | Vesting continues | 20 % on salary | Same as Year 1 | No equity tax yet |
| 5 | Fully vested + ready to exit | 20 % on salary | No extra tax | |
| Exit | Share sale ($130 M) | **0 % Portugal** (foreign-sourced) | 23.8 % on ~$120 M ≈ $28.6 M U.S. tax | QSBS saves ≈ $10 M tax |

---

## 📊 9. Cayman Profit Flow Model (structure)

| Year | OpCo Profit | OpCo Tax Rate | Cayman Tax Rate | Tax at OpCo | Tax at Cayman | Tax Saved | Cumulative Tax Saved |
|------|--------------|----------------|------------------|--------------|---------------|------------|----------------------|
| 1–5 | Variable inputs | 25 % | 0 % | Profit×25 % | Profit×0 % | Difference | Running sum |

Purpose: illustrate benefit of **routing profits or royalties** to Cayman for tax-free accumulation before U.S. repatriation.

---

## 🧩 10. Overall Takeaways

| Principle | Why It Matters |
|------------|----------------|
| **1. Start early (83(b))** | Locks in low taxable value and starts QSBS timer. |
| **2. Separate OpCos** | Spain → employees; U.S. → contracts, QSBS; HoldCo → tax optimization. |
| **3. NHR + QSBS combo** | Portugal = 0 % on exit; U.S. = QSBS exclusion on first $10 M. |
| **4. Maintain substance abroad** | Avoid Portuguese CFC classification. |
| **5. IP strategy** | Ireland for R&D credits (6.25–12.5 %), Cayman for deferral. |
| **6. Salary strategy** | Pay from U.S. OpCo → simpler and cheaper; Portugal tax = 20 %. |
| **7. Documentation** | Keep 409A appraisals, board minutes, and 83(b) proof for audit trail. |

---

**Disclaimer:** This is an educational summary based on your notes and guide content. Always confirm specifics with cross‑border tax counsel (U.S., PT, ES, IE, KY) before executing.

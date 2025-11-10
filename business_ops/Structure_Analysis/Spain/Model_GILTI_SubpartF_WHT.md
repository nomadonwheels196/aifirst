# Quick Model — GILTI / Subpart F / WHT on Royalties

Purpose
- Compare cash tax impact on a simple intercompany royalty (Spain OpCo → IP owner) under three structures.

Assumptions (edit as needed)
- Royalty base from Spain OpCo: €5,000,000 per year.
- Spain corporate income tax (CIT): 25% (savings when royalty deducted).
- Spain WHT on royalties: to US 5% (treaty, conservative), to IE 0% (EU directive/treaty; use 5% if not eligible), to Cayman 24% (non‑treaty).
- US corporate tax rate: 21%.
- GILTI baseline rate: ~10.5% on tested income (pre‑2026 rules; rounded for simplicity).
- Ireland corporation tax on trading IP income: 12.5% (non‑trading IP income may be 25% — not modeled here); KDB not assumed.
- Cayman corporate tax: 0% (economic substance not modeled financially).
- FTC/credit mechanics simplified to illustrate “global cash taxes” on the €5M slice; real outcomes depend on baskets/limits.

Formulas
- Spain CIT saved = Royalty × 25%.
- Global cash taxes ≈ Recipient taxes + Spain WHT + US residual (GILTI/Subpart F) − Spain CIT saved.
- Reported effective rate = Global cash taxes ÷ Royalty.

Scenario A — No IP HoldCo (US Parent owns IP)
- Spain WHT (to US, 5%): €250,000.
- US corporate tax on royalty: 21% × €5,000,000 = €1,050,000; less FTC for Spain WHT (simplified) → residual ≈ €800,000.
- Spain CIT saved: 25% × €5,000,000 = €1,250,000.
- Global cash taxes ≈ €250,000 + €800,000 − €1,250,000 = −€200,000.
- Effective rate vs Spain‑only baseline: ~21% on the €5M slice (i.e., 4% lower than leaving profit in Spain at 25%).

Scenario B — Ireland IP HoldCo (owned by US Parent)
Option B1 (0% WHT; high‑tax exception used):
- Spain WHT: €0.
- IE corp tax: 12.5% × €5,000,000 = €625,000.
- US residual under GILTI: 0% (assumes high‑tax exception applies).
- Spain CIT saved: €1,250,000.
- Global cash taxes ≈ €625,000 − €1,250,000 = −€625,000.
- Effective rate on €5M slice: 12.5% (i.e., 12.5 points lower than Spain 25%).

Option B2 (5% WHT; no high‑tax exception, residual ≈3%):
- Spain WHT: 5% × €5,000,000 = €250,000.
- IE corp tax: €625,000.
- US residual GILTI (est.): 3% × €5,000,000 = €150,000.
- Spain CIT saved: €1,250,000.
- Global cash taxes ≈ €250,000 + €625,000 + €150,000 − €1,250,000 = −€225,000.
- Effective rate on €5M slice: ~17.5%.

Scenario C — Cayman IP HoldCo (owned by US Parent)
Option C1 (GILTI treatment):
- Spain WHT: 24% × €5,000,000 = €1,200,000.
- Cayman corp tax: €0.
- US residual GILTI: 10.5% × €5,000,000 = €525,000.
- Spain CIT saved: €1,250,000.
- Global cash taxes ≈ €1,200,000 + €525,000 − €1,250,000 = €475,000.
- Effective rate on €5M slice: 34.5% (higher than Spain‑only 25%).

Option C2 (Subpart F characterization — passive royalties):
- Spain WHT: €1,200,000.
- US Subpart F at 21% less limited FTC (simplified residual ≈ 21% of €5M − €1.2M = €1,050,000 − €1,200,000 → floor at €0; practical residual often >€0 due to limits): assume residual ≈ €400,000.
- Spain CIT saved: €1,250,000.
- Global cash taxes ≈ €1,200,000 + €400,000 − €1,250,000 = €350,000.
- Effective rate on €5M slice: ~27%+ (directionally worse than Spain‑only).

Summary (with these inputs)
- US Parent (no IP HoldCo): ~21% effective on the royalty slice (wins vs Spain 25%).
- Ireland: best case 12.5% (0% WHT + high‑tax exception), or ~17.5% with 5% WHT and modest US residual — both beat Spain 25% and US 21%.
- Cayman: materially worse (≈34.5% under GILTI; worse under Subpart F), plus optics/anti‑haven risks.

Caveats
- Real outcomes hinge on: treaty eligibility, EU Interest & Royalties Directive conditions, DEMPE/substance (IE), transfer pricing, FTC baskets/limits, GILTI high‑tax exception elections, and characterization (active vs passive).
- Spain anti‑haven/CFC rules and EU blacklists can change rates and deductibility.

Next Steps
- Replace assumptions with your actual volumes and entity facts.
- Run a formal tax model (quarterly) once you pick a path; include Spain/US/IE/Cayman advisors.

CLI Calculator
- Use `Business_Ops/Structure_Analysis/Spain/royalty_tax_calculator.py` to vary inputs.
- Examples:
  - `python3 Business_Ops/Structure_Analysis/Spain/royalty_tax_calculator.py`
  - `python3 Business_Ops/Structure_Analysis/Spain/royalty_tax_calculator.py --royalty 8000000 --wht-us 0.05 --wht-ie 0.00 --wht-cayman 0.24 --ie-rate 0.125 --gilti-rate 0.105`

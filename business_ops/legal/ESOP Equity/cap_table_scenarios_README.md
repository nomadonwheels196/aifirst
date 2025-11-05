# Cap Table Scenarios — Quick Instructions

Inputs (yellow columns in your model)
- PreMoneyUSD, InvestmentUSD → r = InvestmentUSD / PreMoneyUSD
- TargetPoolType: "Unallocated" or "Total"
- TargetPoolPct: e.g., 0.0705 for 7.05% (unallocated) or 0.12 for 12% (total)
- FoundersShares (pre‑round outstanding), OutstandingGrants (O_out), PoolRemaining (P_rem)
- YourSharesPost initially equals your existing shares unless you buy your super pro‑rata slice

Formulas
- A = FoundersShares + OutstandingGrants + PoolRemaining
- If TargetPoolType = Unallocated:
  - SP = [ p × (1 + r) × A − P_rem ] ÷ [ 1 − p × (1 + r) ]
- If TargetPoolType = Total (p_total includes grants + remaining + SP):
  - SP = [ p × (1 + r) × A − (O_out + P_rem) ] ÷ [ 1 − p × (1 + r) ]
- InvestorShares = r × (A + SP)
- PostMoneyShares = (A + SP) × (1 + r)
- YourPctPost = YourSharesPost / PostMoneyShares

Founder Super Pro‑Rata
- If you take fraction f of the round: add f × InvestorShares to YourSharesPost (investor share count reduces accordingly).

Notes
- Use as‑converted 1:1 shares; dual‑class voting does not affect FD math.
- If SP computes negative under "Total" target, you need no top‑up (you may already exceed investor’s total pool ask).

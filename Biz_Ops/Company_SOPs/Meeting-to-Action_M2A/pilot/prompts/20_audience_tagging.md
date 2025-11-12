# Step 20 — Audience Tagging (Draft)

Fill audience sections with concise, atomic items suitable for routing.
- Sales: pain, stakeholders, procurement steps/timeline, requirements, budget/authority, competitive status, commercial constraints.
- Product_Management: feature requests, use cases, competitive info, JTBD/severity, acceptance criteria, persona/segment, priority/impact, roadmap links.
- Platform_Eng: bugs/support, repro/env/versions, severity/impact, diagnostics, ownership/next action.
- Customer_Success: deployment/onboarding, engagement issues, satisfaction signals, health/adoption, renewal risk.
- Security/IT; Legal/Compliance; RevOps/Finance; Exec/Leadership; Data/Analytics; Docs/Enablement.

Output JSON ONLY (no prose). Use EXACTLY one top-level key: audiences. Do not add any other keys.
{
  "audiences": {
    "Sales": {"pain": ["..."], "stakeholders": ["..."], "procurement": {"steps": ["..."], "timeline": "..."}, "requirements": ["..."], "competitive": "...", "commercial": "..."},
    "Product_Management": {"feature_requests": ["..."], "use_cases": ["..."], "competitive": "...", "jtbd": "...", "acceptance": ["..."], "persona": "...", "priority": "P1", "roadmap_links": ["..."]},
    "Platform_Eng": {"bugs": ["..."], "support": ["..."], "repro": "...", "env": "...", "versions": "...", "severity": "S2"},
    "Customer_Success": {"deployment": "...", "engagement_issues": ["..."], "satisfaction": {"positive": ["..."], "negative": ["..."]}, "health": "...", "renewal_risk": "low|med|high"},
    "Security_IT": {"concerns": ["..."], "compliance": ["..."], "agreements": ["DPA","BAA"], "access_requests": ["..."]},
    "Legal_Compliance": {"contract": ["..."], "ip_usage": ["..."], "regulatory": ["..."], "licensing": ["..."]},
    "RevOps_Finance": {"stage": "...", "forecast": "...", "arr_tcv": "...", "payment_terms": "...", "gates": ["security","legal"]},
    "Exec_Leadership": {"strategic": ["..."], "okr_alignment": ["..."], "dependencies": ["..."], "resourcing": ["..."]},
    "Data_Analytics": {"datasets": ["..."], "metrics": ["..."], "tracking": ["..."], "data_quality": ["..."]},
    "Docs_Enablement": {"kb_updates": ["..."], "tutorials": ["..."], "collateral_gaps": ["..."]}
  }
}

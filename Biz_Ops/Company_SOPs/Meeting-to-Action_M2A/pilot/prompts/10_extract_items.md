# Step 10 — Extract Items (Draft)

Extract summary, actions (assignee, due, SLA), decisions/commitments (owner, due), risks/blockers (severity, likelihood, mitigation) with extractive evidence (quote + timestamp + speaker_id).

Output JSON ONLY (no prose). Use EXACTLY these top-level keys: summary, actions, decisions, risks, evidence. Do not add any other keys.
{
  "summary": "...",
  "actions": [{"title":"...","assignee":"...","due":"...","sla":"...","status":"open","evidence_id":"ev1"}],
  "decisions": [{"title":"...","owner":"...","due":"...","evidence_id":"ev2"}],
  "risks": [{"title":"...","severity":"high","likelihood":"med","mitigation":"...","evidence_id":"ev3"}],
  "evidence": [{"id":"ev1","quote":"...","timestamp":"00:12:34","speaker_id":"SPEAKER_1"}]
}

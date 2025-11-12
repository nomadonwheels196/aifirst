# Step 30 — Routing Instructions (Draft)

Produce destination payloads (dry run) per `configs/routing.yaml`. Include links to evidence and canonical IDs.

Output JSON ONLY (no prose):
{
  "routing": [
    {"type": "slack", "channel": "#sales", "audience": "Sales", "summary": "...", "links": ["..."]},
    {"type": "issue", "tracker": "product_eng_backlog", "title": "...", "body": "...", "labels": ["M2A","P1"]}
  ]
}

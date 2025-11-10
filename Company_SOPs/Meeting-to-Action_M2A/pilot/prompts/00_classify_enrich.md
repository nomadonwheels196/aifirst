# Step 00 — Classify & Enrich (Draft)

Goal: Determine internal vs external; map speakers → participants; capture names, roles/titles; company name if external. Use calendar/CRM metadata when provided; otherwise infer from transcript with confidence.

Output JSON ONLY (no prose, no code fences). Use EXACTLY these top-level keys: meeting, participants. Do not add any other keys. If unknown, set null or [] as appropriate.
{
  "meeting": { "classification": "internal|external|unknown", "company": "..." },
  "participants": [
    { "name": "...", "email": "?", "role": "...", "title": "...", "company": "...", "speaker_ids": ["SPEAKER_1"], "confidence": 0.8 }
  ]
}

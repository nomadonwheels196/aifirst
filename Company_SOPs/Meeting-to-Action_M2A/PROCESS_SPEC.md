# PROCESS SPEC — Meeting‑to‑Action (M2A)

## Purpose & Outcomes
Convert meeting content into actionable, routed knowledge: concise summary, attendees, decisions, issues, processes, actions, risks, and intended audiences.

## Scope
All internal and external meetings where the company participates.

## Definitions
- Transcript: text/audio transcript with timestamps and speakers.
- Evidence: extractive quotes with timestamps linking back to the transcript.

## Roles & Ownership
- Process Owner: Operations (primary), with support from meeting organizers.
- Quarterly Review: Owner reviews metrics, routing rules, and risk thresholds; logs changes in Change Control.

## Inputs
- Meeting transcript (timestamps, speakers), agenda/notes, attendee list, related tickets/docs.
- Calendar event details (title, start/end, organizer, attendees/emails) — if available.
- CRM context (account/company, opportunity/deal, contacts/roles) — if available.

## Outputs
- Canonical JSON record including:
  - Cross‑cutting: summary, actions (assignee, due, SLA, status), decisions/commitments (owner, due), risks/blockers/dependencies (severity, likelihood, mitigation), evidence links (timestamps/docs/tickets) with confidence, privacy classification.
  - Participants: names, roles/titles, emails (if available), speaker mapping, company/account (for external).
  - By audience:
    - Sales: customer pain (business/process), key stakeholders, procurement steps/timeline, requirements, budget/authority/timeline signals, competitive status, commercial constraints.
    - Product_Management: feature requests, use cases, competitive info, JTBD and severity, acceptance criteria, target persona/segment, priority/impact, related roadmap links.
    - Platform_Eng: bugs and support issues, repro/env/versions, severity/impact, diagnostics, ownership/next action.
    - Customer_Success: deployment/onboarding details and issues, engagement issues, satisfaction signals (positive/negative), health/adoption and renewal risk.
    - Security/IT: security concerns, compliance needs, DPA/BAA requirements, access/identity requests.
    - Legal/Compliance: contract asks/redlines, IP/usage restrictions, regulatory/export concerns, licensing constraints.
    - RevOps/Finance: stage/forecast, ARR/TCV, payment/billing requirements, remaining approval gates.
    - Exec/Leadership: strategic risks/opportunities, OKR alignment, cross‑team dependencies/resourcing.
    - Data/Analytics: datasets referenced, metric definitions/changes, tracking plan updates, data quality issues.
    - Docs/Enablement: KB/doc updates, tutorial requests, collateral gaps.
- Routed artifacts: Slack posts, issue tracker items, CRM updates, docs/KB updates, and links back to the canonical record.

## Procedure (High-Level)
1. Classify & enrich meeting (Future automation):
   - Attempt to auto‑collect details from calendar and/or CRM (title, time, organizer, attendees/emails, company/account, roles/titles, opportunity).
   - If calendar/CRM are unavailable, analyze the transcript to infer: internal vs external; capture participant names and roles/titles; associate them with speakers; for customer/partner‑facing calls, capture the company name.
   - Until automated, operators may enter these fields manually and mark any inferences with confidence and evidence.
2. Ingest transcript and metadata (if not done as part of step 1); normalize formats.
3. Segment and extract key items with evidence.
4. Classify audiences and determine routing.
5. Apply review thresholds (auto vs. human review based on risk/sensitivity).
6. Deliver to destinations (Slack/issues/CRM/docs).
7. Store canonical JSON and artifact links.
8. Track metrics and feedback.

## Quality & Evidence
- Every action/decision includes extractive evidence (quote+timestamp) where available.
- Speaker ↔ participant mapping and meeting classification note confidence and evidence when inferred from transcript.
- Confidence thresholds guide auto‑approve vs. review.
- Human review required for high‑risk items (legal/privacy/security).

## Privacy & Security
- No secrets or customer credentials in artifacts.
- Handle sensitive meetings with restricted routing and mandatory human review.
- Follow repo `AGENTS.md` and company privacy policies.

## Routing Rules (Examples)
- Sales: update CRM opportunity/account and notify Sales/AM channel; attach evidence links.
- Product bug: file issue in `Product_Eng` backlog, tag severity, link transcript evidence.
- Platform incident/support: create/route ticket to `Platform_Eng`; include repro/env and logs.
- Customer issue/CSAT: open/augment `Customer_Success` case/board; notify CSM channel; update success plan.
- Feature request/use case: create Product_Management ticket/idea; link to roadmap/epic if applicable.
- Security/IT: open security/IT ticket; restrict visibility; flag for mandatory review.
- Legal/Compliance: create task for Business_Ops/Legal; attach necessary context; track redlines.
- RevOps/Finance: update forecast/stage and notify RevOps; include commercial constraints.
- Exec/Leadership: include in weekly leadership digest; flag high‑risk decisions or cross‑team asks.
- Data/Analytics: create analytics task to update tracking/metrics.
- Docs/Enablement: open docs/KB or collateral ticket with clear acceptance criteria.

## Metrics & SLAs
- Coverage: % meetings processed.
- Latency: time from meeting end to routed artifacts.
- Quality: % items with evidence; rework rate from feedback.
- Satisfaction: stakeholder feedback on usefulness.

## Canonical JSON (Draft Schema)
Small sketch to standardize fields; evolve as needed.

```
{
  "$schema": "https://json-schema.org/draft/2020-12/schema",
  "title": "M2A Canonical Record (Draft)",
  "type": "object",
  "required": ["meeting", "summary", "participants", "outputs"],
  "properties": {
    "id": {"type": "string", "description": "uuid or ULID"},
    "meeting": {
      "type": "object",
      "properties": {
        "classification": {"type": "string", "enum": ["internal", "external", "unknown"]},
        "title": {"type": "string"},
        "start_time": {"type": "string", "format": "date-time"},
        "end_time": {"type": "string", "format": "date-time"},
        "organizer": {"type": "string"},
        "company": {"type": "string", "description": "customer/partner when external"}
      }
    },
    "participants": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "name": {"type": "string"},
          "email": {"type": "string"},
          "role": {"type": "string"},
          "title": {"type": "string"},
          "company": {"type": "string"},
          "speaker_ids": {"type": "array", "items": {"type": "string"}},
          "confidence": {"type": "number", "minimum": 0, "maximum": 1}
        }
      }
    },
    "summary": {"type": "string"},
    "evidence": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "id": {"type": "string"},
          "quote": {"type": "string"},
          "timestamp": {"type": "string"},
          "speaker_id": {"type": "string"},
          "link": {"type": "string"}
        }
      }
    },
    "outputs": {
      "type": "object",
      "properties": {
        "actions": {"type": "array"},
        "decisions": {"type": "array"},
        "risks": {"type": "array"},
        "audiences": {"type": "object"},
        "routing": {"type": "array"}
      }
    },
    "privacy": {"type": "object", "properties": {"classification": {"type": "string"}}}
  }
}
```

## Change Control
- Changes reviewed quarterly by Owner; high‑impact changes require leadership sign‑off.
- Log changes in this section with date, summary, and rationale.

## References
- Template: `Company_SOPs/_TEMPLATE`
- Repo guidance: `AGENTS.md`
- Source of truth: `business_spec/`

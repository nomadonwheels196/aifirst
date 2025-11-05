# 🧠 Ai-First MVP Product Spec  
**Version:** v0.1  
**Owner:** Travis Sheppard  
**Target MVP Release:** End of 2025  

---

## 1. Product Overview  
Ai-First is a **proactive AI coaching platform** that lives where people work — not in a course, but in their daily workflow.  
It measures how users think, act, and engage with AI, then **guides them through personalized enablement journeys** to turn curiosity into capability and capability into productivity.  

This MVP focuses on:
1. Assessing AI maturity (Level 0–4 framework)  
2. Building adaptive user profiles  
3. Delivering personalized enablement paths  

---

## 2. Problem Statement  
AI adoption inside organizations is **fragmented and shallow**.  
Tools are abundant; habits are not.  
Employees “experiment” with AI but rarely integrate it into workflows.  
The result: lots of licenses, little transformation.  

**Ai-First bridges that gap** by embedding behavioral coaching directly into work — helping people evolve from “AI curious” to “AI-first.”

---

## 3. MVP Objectives  
| Goal | Description | Success Metric |
|------|--------------|----------------|
| Assess | Identify a user’s current AI maturity level (0–4) | 80% of users complete the baseline self-assessment |
| Personalize | Build a contextual profile from role, goals, and work patterns | Personalized plan generated for each user |
| Enable | Deliver a guided enablement path with 2–3 curated nudges or challenges per week | ≥60% weekly engagement |
| Measure | Track behavioral change and workflow adoption | 10%+ improvement in AI engagement score after 30 days |

---

## 4. Core MVP Features  

### **1️⃣ AI Maturity Assessment**
- Interactive quiz and real-time observation (optional plugin)  
- Maps users to Levels 0–4 using your framework (Skeptic → Visionary)  
- Delivers instant feedback and reflection prompts  
- Ties to persona-based content and examples  

👉 *Purpose:* Establish a baseline; spark insight and motivation.  

---

### **2️⃣ User Profile Engine**
- Collects:
  - Role & industry  
  - Common tasks (e.g., reports, meetings, customer service)  
  - AI comfort level & tool exposure  
  - Personality/learning style (optional)  
- Generates:
  - AI Skill Graph (visual)  
  - Motivators and blockers (from behavioral cues)  
  - “AI in your world” examples personalized to role  

👉 *Purpose:* Make AI relatable and actionable.  

---

### **3️⃣ Personalized Enablement Path**
- Algorithmic journey builder that:
  - Suggests 3–5 bite-sized challenges based on level  
  - Includes role-specific examples (“Try using AI to…”)  
  - Measures progress via small wins  
- Example:  
  - Level 1 → Level 2 = “Prompt Better” micro-lessons  
  - Level 3 → Level 4 = “Design Your AI Workflow” sprints  
- Optional leaderboard or peer challenge  

👉 *Purpose:* Turn awareness into behavior change.  

---

### **4️⃣ Coaching Layer (Phase 2 of MVP)**
- Light-touch chatbot or “coach” persona (not general-purpose AI)
- Contextual prompts like:
  - “Want me to show you how to automate that email follow-up?”
  - “Here’s how your last workflow could use AI next time.”
- Focused on coaching, not conversation  

👉 *Purpose:* Reinforce adoption habits with real-time nudges.  

---

## 5. Non-Goals / Boundaries  
- ❌ Not another chatbot platform  
- ❌ Not training or certification  
- ❌ Not replacing human creativity  
- ✅ Focused on real-world behavioral change  
- ✅ Measured by outcomes, not hype  

---

## 6. Success Metrics  
| Category | Metric | Target |
|-----------|---------|--------|
| Adoption | % of users who complete onboarding | >80% |
| Engagement | Weekly active users / total | >60% |
| Behavioral Change | % users improving by 1+ level | >50% |
| Productivity Impact | Self-reported or workflow-tracked | +10–20% efficiency |
| Renewal Intent | “Would recommend Ai-First to a colleague” | ≥8/10 |

---

## 7. Technical Scope (MVP)
| Component | Description |
|------------|--------------|
| **Frontend (Web)** | Lightweight progressive web app (PWA) with dashboard + assessment UI |
| **Backend** | Python/Node service for assessment logic and profile generation |
| **Database** | User profiles, assessment responses, progress tracking |
| **Integration Layer** | OAuth/SSO for enterprise identity + optional plug-ins for Microsoft 365, Slack, etc. |
| **Analytics** | Behavioral metrics pipeline → dashboard |
| **AI Engine (Phase 2)** | Contextual guidance powered by fine-tuned LLM or rules engine |

---

## 8. Ai-First Alignment
| Principle | In MVP |
|------------|---------|
| Serve people first | Personalized coaching focuses on human growth |
| Habits over hacks | Nudges drive sustained change, not one-time training |
| Communication over complexity | Explains AI in relatable, non-technical language |
| We use what we build | Internal team onboarded through same assessment and path |

---

## 9. Future Iterations (Post-MVP)
- Real-time workflow observation (via browser extension or app plugin)
- Peer benchmarking + org-wide adoption analytics
- Manager dashboards and ROI visibility
- Integration with enterprise systems (Teams, Slack, Notion)
- AI-powered “Coach Mode” for real-time guidance

---

## 10. Open Questions / Decisions
1. Should Level assessments be **self-reported** or **behaviorally inferred**?  
2. How do we balance **privacy vs. visibility** in workflow data?  
3. Should the enablement path be **static (rules-based)** or **adaptive (AI-driven)** in MVP?  
4. What minimum viable integrations (e.g., Gmail, Slack, Notion) unlock the most value?  
5. Should users see **team-level benchmarking** or only personal growth?  

# Occupational Ontology & Use Case Mapping Strategy for Ai First

**Version:** 1.0
**Date:** 2025-11-14
**Status:** Planning / Pre-Implementation

---

## 1. Executive Overview

Ai First is building an operating system for human-Ai productivity by embedding an Ai coach into existing workplace tools. To deliver relevant, personalized coaching at the moment of work, we need a structured way to understand *who* our users are (personas with roles, functions, motivations, behaviors), *what* they do (tasks, Ai opportunities, workflows), and *how* Ai can augment their work (Ai use cases, Ai skills, Ai knowledge, Ai tools, recommendations, nudges).

This document outlines a strategy to build a knowledge graph and ontology that maps global occupational taxonomies (O\*NET, ESCO, ISCO) to Ai First's proprietary Ai-focused constructs—**personas** (role + function + motivations + behaviors), **Ai opportunities** (where Ai creates leverage), **Ai use cases** (smallest units of Ai-enabled work), **Ai workflows** (chains of Ai-enabled steps), **Ai skills** (prompting, evaluation, retrieval), **Ai knowledge** (LLM behavior, safety, prompt design), **Ai tools** (text generation, summarization, RAG), and **behavioral signals** (triggers for recommendations). Rather than building everything from scratch, we'll leverage established taxonomies as our foundation for roles and tasks, then layer on a proprietary Ai-focused behavioral intelligence system that observes real work patterns, measures Ai adoption, and refines recommendations over time.

### Concrete Outcomes

- **Relevant Ai use case targeting:** Recommend **Ai use cases** (smallest units of Ai-enabled work) tailored to a user's **persona** (role + function + motivations + behaviors), tasks, and observed behavior—not generic "AI tips."
- **Individualized Ai learning paths:** Build personalized coaching plans based on persona profile, **Ai skill gaps**, **Ai knowledge gaps**, and behavioral readiness for specific **Ai tools** and **Ai use cases**.
- **Measurable ROI:** Aggregate Ai adoption, Ai competency, and impact metrics at individual, team, and org levels using a shared persona/task/Ai skills taxonomy.
- **Global compatibility:** Support US and European organizations from day one by mapping O\*NET ↔ ESCO ↔ ISCO for roles and tasks (as taxonomic reference layer).
- **Behavioral intelligence:** Capture and analyze screen-level activity, Ai tool usage, and Ai workflow patterns to infer needs, friction points, and readiness for specific **Ai use cases**.
- **Dynamic Ai recommendations:** Deliver real-time nudges based on observed context (e.g., "You're writing a cold email—would you like help drafting with an LLM?" → links to **Ai use case**: "Draft first-pass cold email with LLM").
- **Scalable Ai-focused ontology:** Start with 10–20 key **personas**, 50–100 **Ai opportunities**, and hundreds of **Ai use cases**, then scale to support the full spectrum of knowledge work.
- **Future-proof architecture:** Design a system that can evolve as new personas emerge, new **Ai tools** are adopted, and our proprietary **Ai First Behavior Graph** becomes more sophisticated.

---

## 2. Background & Problem Framing

### Why We Need a Structured Ontology

Most AI transformation efforts fail because they treat "AI adoption" as a single, undifferentiated capability. In reality, the way a sales account executive uses Ai is radically different from how a financial analyst, customer success manager, or HR business partner uses it.

To deliver coaching that actually sticks, we need a structured way to understand **who the person is**, **what they need to do**, and **what Ai skills and Ai capabilities they need to succeed**. At Ai First, this works as a layered model:

#### 1. Understand each user's Persona

A persona is not just a job title. It combines:

- **Role** – What they are hired to do (mapped to O\*NET ↔ ESCO ↔ ISCO).
- **Function** – The broader business domain they operate in (Sales, CS, HR, Finance, Ops, etc.).
- **Motivations** – What they care about (speed, accuracy, creativity, autonomy, recognition).
- **Behaviors** – How they currently work (patterns, habits, friction points, readiness for Ai).

This gives us a true picture of the human behind the job.

#### 2. Map personas to the tasks they need to complete

Tasks define the real work: what they actually do every day.

(Example: "Prepare QBR slides," "Draft outreach emails," "Analyze budget variance.")

#### 3. Identify the Ai tools required for each task

Our focus is **not** generic productivity tools or deep domain expertise.

We focus only on **Ai tools, Ai capabilities, and Ai-augmented workflows** that improve the outcome of the task.

(Example: LLM prompting patterns, spreadsheet automations powered by Ai, meeting transcription analysis, retrieval workflows.)

#### 4. Determine the Ai skills required to use those Ai tools effectively

These are the human competencies needed to get value from Ai, such as:

- Prompting fundamentals
- Retrieval workflows
- Evaluating model quality
- Asking the right questions
- Structuring inputs/outputs
- Iterative refinement
- Light data transformation for Ai consumption

These are **Ai skills**, not job-specific skills (e.g., financial modeling or medical expertise).

#### 5. Identify only the Ai-relevant knowledge required to apply those skills

This is not domain knowledge.

This is **Ai-operational knowledge** — the minimum conceptual understanding people need to use Ai well:

- How LLMs behave (strengths, limitations, hallucinations)
- What kinds of tasks Ai is good at
- How to give Ai context without oversharing data
- How to safely use Ai with sensitive information
- How to structure a good input
- How to check and validate Ai output
- How to combine Ai + human judgment

**If knowledge is not directly related to using Ai effectively, it is out of scope.**

#### 6. Combine the task + Ai tools + Ai skills + Ai knowledge + persona → a single Ai Use Case

A "use case" is *not* a domain workflow.

It is the **smallest unit of Ai-enabled work** we can coach in context.

Example:

- "Draft a first-pass cold email"
- "Summarize a dense document into bullet points"
- "Generate 3 options for an executive slide"
- "Analyze a spreadsheet trend and propose insights"

#### 7. Multiple use cases form a workflow

Workflows = **chains of Ai-enabled steps** that support the user's larger process.

We are not defining the entire business workflow — only the Ai-augmented components inside it.

---

**From that starting point:**

- Map role → tasks
- Map tasks → Ai opportunities
- Map Ai opportunities → use cases
- Map use cases → workflows
- Support everything with Ai-specific skills/tools/knowledge

Without this Ai-focused taxonomy, we're guessing. With it, we can be precise, measurable, and scalable.

### Limits of Industry Codes (NAICS, NACE)

Industry classification systems like NAICS (North American Industry Classification System) and NACE (European equivalent) are designed for economic statistics and regulatory reporting. They categorize *organizations* (e.g., "Software Publishers," "Management Consulting"), not *individuals* or *job functions*.

**Why they're insufficient for our use case:**
- **Too coarse-grained:** Knowing someone works in "Professional Services" doesn't tell us if they're a consultant, analyst, recruiter, or executive assistant.
- **No task/skill data:** Industry codes don't describe what people *do* or what competencies they need.
- **Poor fit for multi-function orgs:** A tech company has engineers, marketers, salespeople, finance analysts, and HR—all in the same NAICS code but with radically different Ai needs.

**When they're useful:** As a bridging layer to integrate with HR/ERP systems that use industry codes for reporting, or to provide market-level insights (e.g., "SaaS companies adopt Ai faster than manufacturing").

### Limits of SOC (Standard Occupational Classification)

SOC is better than industry codes—it classifies *occupations* (e.g., "Sales Representatives, Wholesale and Manufacturing," "Financial Analysts"). But it's still too high-level for our product:

- **Broad categories:** SOC has ~1,000 detailed occupations. That's useful for labor statistics, but a "Marketing Manager" in a startup vs. an enterprise behaves very differently.
- **No task detail:** SOC tells you the occupation exists, but not what tasks they perform daily, what tools they use, or what skills matter most.
- **Static snapshots:** SOC is updated every 10 years. Emerging roles (e.g., "Growth Product Manager," "Revenue Operations Analyst") lag behind reality.

**When it's useful:** As a top-level grouping or for linking to government data (e.g., salary benchmarks, labor market trends).

### Why This Matters for Ai First

Ai First is a **behavioral change product**, not a software tool. We're not just providing features—we're coaching people to change how they work with Ai. That requires:

- **Understanding who the person is:** Beyond job title, we need to know their motivations, behaviors, and readiness for Ai adoption.
- **Understanding what they need to do:** What tasks consume time? Where can Ai create leverage? What Ai-augmented workflows fit naturally into their day?
- **Matching Ai use cases to readiness:** Some use cases are easy wins (e.g., "summarize this email thread"); others require Ai skill-building (e.g., "iteratively refine a complex prompt to generate executive insights").
- **Teaching Ai skills, not domain skills:** We're not teaching financial modeling or sales techniques—we're teaching prompting, retrieval, output evaluation, and Ai-human collaboration.
- **Measuring Ai adoption over time:** We need to track not just "did they use Ai?" but "did they get better at *using Ai*? Did they save time? Did they produce higher-quality output?"

To do this, we need **task-level granularity** (what work needs to be done), **Ai tool mapping** (what Ai capabilities apply), and **Ai skill/knowledge tracking** (what competencies are needed to use Ai effectively).

O\*NET provides the task-level foundation. We layer on the Ai-specific capabilities.

---

## 3. System Recommendation (High Level)

### Recommended Taxonomy Stack

We propose a **three-layer taxonomy architecture**:

1. **O\*NET (Primary Foundation)**
   - **What it provides:** Detailed occupational data including tasks, skills, work activities, tools & technology, work context, and knowledge requirements.
   - **Why it's primary:** O\*NET is the most granular, publicly available occupational database. It describes not just *what* occupations exist, but *what people in those occupations do every day*. This is exactly what we need to map Ai use cases to real work.
   - **Coverage:** US-focused, ~1,000 occupations, updated regularly.

2. **ESCO (European Complement)**
   - **What it provides:** Occupations, skills/competencies, and qualifications used across the EU. Includes explicit mappings to ISCO.
   - **Why it's critical:** For European customers, ESCO is the standard. It's also more granular on *skills* than O\*NET in some areas (especially soft skills and competencies).
   - **Coverage:** EU-focused, multilingual, ~3,000 occupations, ~13,000 skills.

3. **ISCO (Global Bridge)**
   - **What it provides:** International Standard Classification of Occupations (maintained by ILO). High-level categories used worldwide.
   - **Why it's useful:** ISCO serves as a "bridge" between O\*NET and ESCO, enabling us to map across geographies.
   - **Coverage:** Global, ~400 unit groups.

4. **SOC/NAICS/NACE (Optional Bridging Layers)**
   - **Use sparingly:** Only when integrating with HR systems, ERP platforms, or reporting dashboards that require these codes.

### Architecture Overview

```
┌─────────────────────────────────────────────────────────────────┐
│                     Ai First Product Layer                      │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐          │
│  │ Onboarding   │  │ Observation  │  │ Coaching UI  │          │
│  │ Interview    │  │ Engine       │  │ & Nudges     │          │
│  └──────┬───────┘  └──────┬───────┘  └──────┬───────┘          │
│         │                  │                  │                  │
│         └──────────────────┼──────────────────┘                  │
│                            │                                     │
│                   ┌────────▼─────────┐                           │
│                   │ Recommendation   │                           │
│                   │ API / Ontology   │                           │
│                   │ Service          │                           │
│                   └────────┬─────────┘                           │
└────────────────────────────┼───────────────────────────────────┘
                             │
        ┌────────────────────┼────────────────────┐
        │     Ai First Knowledge Graph            │
        │  ┌──────────────────────────────────┐   │
        │  │  Personas                        │   │
        │  │    (Role + Function + Motivations│   │
        │  │     + Behaviors)                 │   │
        │  │  ↓                               │   │
        │  │  Tasks (daily work)              │   │
        │  │  ↓                               │   │
        │  │  Ai Opportunities                │   │
        │  │  ↓                               │   │
        │  │  Ai Skills + Ai Knowledge        │   │
        │  │  ↓                               │   │
        │  │  Ai Tools / Capabilities         │   │
        │  │  ↓                               │   │
        │  │  Ai Use Cases                    │   │
        │  │    (smallest unit of Ai work)    │   │
        │  │  ↓                               │   │
        │  │  Ai Workflows                    │   │
        │  │    (chains of Ai-enabled steps)  │   │
        │  │  ↓                               │   │
        │  │  Behavioral Signals / Patterns   │   │
        │  └──────────────────────────────────┘   │
        └────────────────────┬────────────────────┘
                             │
        ┌────────────────────┼────────────────────┐
        │  Global Taxonomy Foundations            │
        │  ┌────────────┐  ┌────────────┐         │
        │  │  O*NET     │  │   ESCO     │         │
        │  │  - Tasks   │  │  - Roles   │         │
        │  │  - Roles   │  │  - Occup.  │         │
        │  └─────┬──────┘  └─────┬──────┘         │
        │        │                │                │
        │        └────────┬───────┘                │
        │                 │                        │
        │          ┌──────▼───────┐                │
        │          │     ISCO     │                │
        │          │  (Bridge)    │                │
        │          └──────────────┘                │
        └─────────────────────────────────────────┘

Note: O*NET/ESCO provide roles and tasks. Ai First adds the
Ai-specific layer: Ai skills, Ai tools, Ai knowledge, Ai workflows.
```

### How the Layers Connect

| Ai First Entity          | Maps To                                  | Example                                                                 |
|--------------------------|------------------------------------------|-------------------------------------------------------------------------|
| **Persona**              | O\*NET Occupation → ESCO Occupation → ISCO (for Role) + Ai First proprietary (for Function, Motivations, Behaviors) | Role: "Sales Account Executive" → O\*NET 41-3031.00 → ESCO 5244 → ISCO 2433<br>Function: Sales<br>Motivations: Speed, autonomy<br>Behaviors: Uses ChatGPT frequently, resists new tools |
| **Task**                 | O\*NET Task Statement / Work Activity     | "Prepare and deliver sales presentations" → O\*NET Task ID 12345       |
| **Ai Opportunity**       | Ai First Proprietary (task + Ai potential) | "Sales presentation" task → Ai opportunities: outline generation, slide drafting, data visualization |
| **Ai Skill**             | Ai First Proprietary (not O\*NET skills) | "Prompting fundamentals," "Iterative refinement," "Output evaluation"  |
| **Ai Knowledge**         | Ai First Proprietary (Ai-operational knowledge) | "Understanding LLM hallucinations," "Prompt structure best practices," "Safe Ai usage with sensitive data" |
| **Ai Tool / Capability** | Ai First Proprietary (not generic software) | "LLM text generation," "Meeting transcription + summary," "Retrieval-augmented generation" |
| **Ai Use Case**          | Ai First Proprietary (smallest unit of Ai work) | "Draft first-pass cold email," "Summarize meeting into action items," "Generate 3 slide options" |
| **Ai Workflow**          | Ai First Proprietary (chain of Ai use cases) | "End-to-end outbound sales email workflow": Research prospect → Draft email → Refine tone → Schedule send |
| **Behavioral Signal**    | Ai First Proprietary (observed behavior) | Screen time in Gmail, prompts to ChatGPT, time to complete task, tool-switching patterns |

---

## 4. Data Sources & Access

### 4.1 O\*NET (Occupational Information Network)

**Maintained by:** U.S. Department of Labor / Employment and Training Administration
**Website:** [https://www.onetcenter.org/](https://www.onetcenter.org/)

#### What It Provides (Relevant to Us)

- **Occupations:** ~1,000 detailed occupations with standardized codes (e.g., 13-2051.00 = Financial Analysts).
- **Tasks:** Specific task statements describing what people in each occupation do (e.g., "Analyze financial data to forecast business, industry, and economic conditions").
- **Skills:** 35 standardized skills (e.g., Active Listening, Critical Thinking, Mathematics) with importance and level ratings.
- **Work Activities:** Generalized work activities (e.g., "Analyzing Data or Information," "Interacting with Computers").
- **Tools & Technology:** Lists of software, hardware, and tools commonly used (e.g., "Microsoft Excel," "CRM software").
- **Work Context:** Environmental and situational factors (e.g., "Work with external customers," "Frequency of decision-making").
- **Knowledge:** Subject areas required (e.g., "Economics and Accounting," "Sales and Marketing").

#### Data Format & Access

- **Format:** Relational database exported as **tab-delimited text files** (CSV-like). Also available as **XML** and via **web services API** (limited).
- **Download:** Bulk download from [https://www.onetcenter.org/database.html](https://www.onetcenter.org/database.html). Files updated 2x per year.
- **Key Files:**
  - `Occupation Data.txt` – Occupation titles and codes.
  - `Task Statements.txt` – Task descriptions per occupation.
  - `Skills.txt` – Skill importance/level per occupation.
  - `Tools and Technology.txt` – Tools used per occupation.
  - `Work Activities.txt` – Generalized activities per occupation.

#### Ingestion Strategy

1. **Download bulk datasets** (quarterly or bi-annually).
2. **Load into relational database** (PostgreSQL or similar). Each file becomes a table or set of tables.
3. **Index by occupation code** to enable fast lookups.
4. **Normalize tool/technology names** (e.g., "Salesforce.com" → "Salesforce") using fuzzy matching or manual curation.

#### Licensing & Usage

- **Public domain.** Free to use, no restrictions for commercial products.
- **Attribution appreciated** but not required.

---

### 4.2 ESCO (European Skills, Competences, Qualifications and Occupations)

**Maintained by:** European Commission
**Website:** [https://esco.ec.europa.eu/](https://esco.ec.europa.eu/)

#### What It Provides (Relevant to Us)

- **Occupations:** ~3,000 occupations with multilingual labels (25 EU languages).
- **Skills/Competences:** ~13,000 skills organized into a hierarchy (e.g., "Communication skills" → "Active listening").
- **Knowledge:** Domain knowledge areas (similar to O\*NET's knowledge categories).
- **Relations:** Explicit mappings between occupations and skills (many-to-many). Also includes ISCO mappings.

#### Data Format & Access

- **Format:** **RDF/SKOS** (semantic web standard), also available as **CSV exports**.
- **Download:** Bulk download from [https://esco.ec.europa.eu/en/use-esco/download](https://esco.ec.europa.eu/en/use-esco/download).
- **API:** ESCO offers a **REST API** for querying occupations, skills, and relations programmatically.

#### Ingestion Strategy

1. **Download CSV exports** or consume via API.
2. **Load into relational database** (occupations table, skills table, junction tables for relationships).
3. **Map ESCO occupations to ISCO codes** (provided in the dataset).
4. **Map ESCO skills to O\*NET skills** where overlap exists (requires manual curation or ML-assisted matching).

#### Licensing & Usage

- **Open license.** Free to use, including for commercial purposes.
- **Attribution required** (e.g., "This product uses ESCO, © European Union").

---

### 4.3 ISCO (International Standard Classification of Occupations)

**Maintained by:** International Labour Organization (ILO)
**Website:** [https://www.ilo.org/public/english/bureau/stat/isco/](https://www.ilo.org/public/english/bureau/stat/isco/)

#### What It Provides (Relevant to Us)

- **Occupation categories:** Hierarchical structure (10 major groups → 43 sub-major groups → 130 minor groups → ~436 unit groups).
- **Mappings:** ESCO and many national systems (including SOC) provide explicit or implied mappings to ISCO.
- **Global coverage:** Used by most countries for labor statistics.

#### Data Format & Access

- **Format:** Typically published as **PDFs** or **Excel spreadsheets**. Some national statistical agencies provide machine-readable versions.
- **Download:** ILO website or national statistics portals (e.g., Eurostat).

#### Ingestion Strategy

1. **Extract ISCO codes and descriptions** from published documents.
2. **Load into a reference table** in the database.
3. **Use as a bridge:** Map O\*NET → ISCO and ESCO → ISCO to enable cross-system queries.

#### Licensing & Usage

- **Open for non-commercial and commercial use** with attribution.

---

### 4.4 SOC, NAICS, NACE (Optional)

**Use only as bridging layers:**

- **SOC (Standard Occupational Classification):** U.S. Census Bureau. Use to map O\*NET → SOC for integration with HR systems that report using SOC codes.
- **NAICS (North American Industry Classification System):** Industry codes. Use for market segmentation or integrating with company databases.
- **NACE (European equivalent of NAICS):** Same purpose as NAICS, but for EU.

**Ingestion:** Download code lists from Census Bureau (SOC, NAICS) or Eurostat (NACE). Load into reference tables.

---

### Summary Table: Data Sources

| Source   | What We Use It For                         | Format         | Update Frequency | License          |
|----------|---------------------------------------------|----------------|------------------|------------------|
| O\*NET   | Tasks, skills, tools, work activities       | CSV, XML       | 2x/year          | Public domain    |
| ESCO     | Occupations, skills, EU compatibility       | CSV, RDF, API  | Annual           | Open (attribution required) |
| ISCO     | Global occupation bridge                   | PDF, Excel     | Every 10 years   | Open (attribution required) |
| SOC      | U.S. HR system integration (optional)       | CSV            | Every 10 years   | Public domain    |
| NAICS/NACE | Industry segmentation (optional)          | CSV            | Every 5 years    | Public domain    |

---

## 5. Mapping Strategy & Ontology Design

### 5.1 Conceptual Model

The core idea: **Ai First maintains a proprietary knowledge graph that links standard taxonomies (O\*NET, ESCO, ISCO) to our internal constructs (personas, workflows, use cases, behavioral signals).**

#### Key Entities

1. **Persona**
   - **Definition:** A rich profile combining role, function, motivations, and behaviors. Not just a job title.
   - **Components:**
     - **Role:** What they're hired to do (mapped to O\*NET ↔ ESCO ↔ ISCO).
     - **Function:** Broader business domain (Sales, CS, HR, Finance, Ops, etc.).
     - **Motivations:** What they care about (speed, accuracy, creativity, autonomy, recognition).
     - **Behaviors:** How they currently work (patterns, habits, friction points, Ai readiness).
   - **Examples:** "Sales AE who values speed and autonomy, frequently uses ChatGPT, resists complex tools."
   - **Attributes:** role_title, onet_code, esco_uri, isco_code, function, seniority, motivations (JSON), observed_behaviors (JSON).

2. **Task**
   - **Definition:** Daily work activities. What the person actually does. Sourced from O\*NET task statements.
   - **Examples:** "Prepare QBR slides," "Draft outreach emails," "Analyze budget variance."
   - **Attributes:** title, description, onet_task_id, frequency, importance.

3. **Ai Opportunity**
   - **Definition:** Where Ai can create leverage within a task. Links tasks to potential Ai augmentation.
   - **Examples:** For "Prepare QBR slides" → Ai opportunities: outline generation, data visualization, insight synthesis.
   - **Attributes:** task_id, opportunity_description, ai_capability_type.

4. **Ai Skill**
   - **Definition:** Human competencies needed to get value from Ai. **NOT job-specific skills** (e.g., not "financial modeling"). **ONLY Ai skills.**
   - **Examples:** "Prompting fundamentals," "Retrieval workflows," "Evaluating model quality," "Iterative refinement," "Output validation."
   - **Attributes:** skill_id, name, description, category (e.g., prompting, evaluation, workflow design), proficiency_levels (beginner/intermediate/advanced).

5. **Ai Knowledge**
   - **Definition:** Ai-operational knowledge—conceptual understanding needed to use Ai well. **NOT domain knowledge.**
   - **Examples:** "How LLMs behave (hallucinations, limitations)," "What tasks Ai is good/bad at," "How to structure inputs," "Safe Ai usage with sensitive data."
   - **Attributes:** knowledge_id, name, description, category (e.g., LLM behavior, safety, prompt design).

6. **Ai Tool / Capability**
   - **Definition:** Ai tools, Ai capabilities, and Ai-augmented workflows. **NOT generic software** (e.g., not "Excel" unless it's "Excel with Ai formulas").
   - **Examples:** "LLM text generation," "Meeting transcription + summary," "Retrieval-augmented generation," "Ai-powered spreadsheet automation."
   - **Attributes:** tool_id, name, description, capability_type (e.g., generation, summarization, analysis, retrieval).

7. **Ai Use Case**
   - **Definition:** The **smallest unit of Ai-enabled work** we can coach in context. **NOT a domain workflow.**
   - **Examples:** "Draft first-pass cold email," "Summarize dense document into bullets," "Generate 3 slide options," "Analyze spreadsheet trend and propose insights."
   - **Attributes:** use_case_id, title, description, difficulty (beginner/intermediate/advanced), impact_time_saved, impact_quality_score, prerequisites (ai_skills, ai_tools), trigger_patterns (behavioral signals).

8. **Ai Workflow**
   - **Definition:** **Chains of Ai-enabled steps** that support a larger process. **NOT the entire business workflow**—only the Ai-augmented components.
   - **Examples:** "End-to-end outbound email workflow": Research prospect (Ai) → Draft email (Ai) → Refine tone (Ai) → Human review → Send.
   - **Attributes:** workflow_id, name, description, use_cases (ordered sequence), typical_duration.

9. **Behavioral Signal / Pattern**
   - **Definition:** Observable user behavior captured via OS APIs, screen capture, or application telemetry. Used to infer context and recommend use cases.
   - **Examples:** "User spent 20 minutes drafting email," "User idle in Gmail for 30 seconds," "User typed prompt 'help me summarize this document' in ChatGPT."
   - **Attributes:** signal_type, timestamp, context (JSONB), inferred_intent, confidence.

---

### 5.2 Data Model (Relational Schema)

Below is a simplified relational model. In production, this would be normalized and optimized.

#### Core Tables

```sql
-- Personas (rich user profiles: role + function + motivations + behaviors)
CREATE TABLE personas (
    persona_id UUID PRIMARY KEY,
    role_title VARCHAR(255) NOT NULL,
    description TEXT,
    onet_code VARCHAR(10),         -- Maps to O*NET occupation
    esco_uri VARCHAR(255),          -- Maps to ESCO occupation
    isco_code VARCHAR(10),          -- Maps to ISCO unit group
    function VARCHAR(50),           -- e.g., Sales, Finance, CS, HR, Ops
    seniority VARCHAR(50),          -- e.g., IC, Manager, Director, Executive
    motivations JSONB,              -- e.g., ["speed", "autonomy", "recognition"]
    observed_behaviors JSONB,       -- e.g., {"chatgpt_frequency": "daily", "tool_resistance": "high"}
    created_at TIMESTAMP DEFAULT NOW()
);

-- Tasks (daily work activities from O*NET)
CREATE TABLE tasks (
    task_id UUID PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    onet_task_id VARCHAR(50),
    frequency VARCHAR(50),          -- e.g., Daily, Weekly, Monthly
    importance INT,                 -- 1-5 scale
    created_at TIMESTAMP DEFAULT NOW()
);

-- Ai Opportunities (where Ai can create leverage within tasks)
CREATE TABLE ai_opportunities (
    opportunity_id UUID PRIMARY KEY,
    task_id UUID REFERENCES tasks(task_id),
    description TEXT,               -- e.g., "Outline generation," "Data visualization"
    ai_capability_type VARCHAR(100), -- e.g., generation, summarization, analysis
    created_at TIMESTAMP DEFAULT NOW()
);

-- Ai Skills (human competencies needed to use Ai effectively - NOT job skills)
CREATE TABLE ai_skills (
    skill_id UUID PRIMARY KEY,
    name VARCHAR(255) NOT NULL,     -- e.g., "Prompting fundamentals," "Output evaluation"
    description TEXT,
    category VARCHAR(100),          -- e.g., prompting, evaluation, workflow_design, retrieval
    proficiency_levels JSONB,       -- e.g., ["beginner", "intermediate", "advanced"]
    created_at TIMESTAMP DEFAULT NOW()
);

-- Ai Knowledge (Ai-operational knowledge - NOT domain knowledge)
CREATE TABLE ai_knowledge (
    knowledge_id UUID PRIMARY KEY,
    name VARCHAR(255) NOT NULL,     -- e.g., "Understanding LLM hallucinations"
    description TEXT,
    category VARCHAR(100),          -- e.g., llm_behavior, safety, prompt_design, ethics
    created_at TIMESTAMP DEFAULT NOW()
);

-- Ai Tools / Capabilities (Ai tools and capabilities - NOT generic software)
CREATE TABLE ai_tools (
    tool_id UUID PRIMARY KEY,
    name VARCHAR(255) NOT NULL,     -- e.g., "LLM text generation," "RAG retrieval"
    description TEXT,
    capability_type VARCHAR(100),   -- e.g., generation, summarization, analysis, retrieval
    created_at TIMESTAMP DEFAULT NOW()
);

-- Ai Use Cases (smallest unit of Ai-enabled work)
CREATE TABLE ai_use_cases (
    use_case_id UUID PRIMARY KEY,
    title VARCHAR(255) NOT NULL,    -- e.g., "Draft first-pass cold email"
    description TEXT,
    difficulty VARCHAR(50),         -- e.g., Beginner, Intermediate, Advanced
    impact_time_saved_minutes INT,
    impact_quality_score INT,       -- 1-5
    prerequisites JSONB,            -- e.g., {"ai_skills": [...], "ai_tools": [...]}
    trigger_patterns JSONB,         -- Behavioral patterns that trigger this use case
    created_at TIMESTAMP DEFAULT NOW()
);

-- Ai Workflows (chains of Ai-enabled steps - NOT entire business workflows)
CREATE TABLE ai_workflows (
    workflow_id UUID PRIMARY KEY,
    name VARCHAR(255) NOT NULL,     -- e.g., "End-to-end outbound email workflow"
    description TEXT,
    use_case_sequence JSONB,        -- Ordered array of use_case_ids
    typical_duration_minutes INT,
    created_at TIMESTAMP DEFAULT NOW()
);

-- Behavioral Signals (observed user behavior)
CREATE TABLE behavioral_signals (
    signal_id UUID PRIMARY KEY,
    user_id UUID NOT NULL,
    signal_type VARCHAR(100),       -- e.g., screen_time, app_switch, prompt_entered
    context JSONB,                  -- e.g., { "app": "Gmail", "window_title": "Draft Email", ... }
    inferred_intent VARCHAR(255),
    confidence FLOAT,               -- 0-1
    timestamp TIMESTAMP DEFAULT NOW()
);
```

#### Junction Tables (Many-to-Many Relationships)

```sql
-- Personas ↔ Tasks
CREATE TABLE persona_tasks (
    persona_id UUID REFERENCES personas(persona_id),
    task_id UUID REFERENCES tasks(task_id),
    frequency VARCHAR(50),
    importance INT,              -- 1-5
    PRIMARY KEY (persona_id, task_id)
);

-- Personas ↔ Ai Skills (which Ai skills does this persona need?)
CREATE TABLE persona_ai_skills (
    persona_id UUID REFERENCES personas(persona_id),
    skill_id UUID REFERENCES ai_skills(skill_id),
    importance INT,              -- 1-5
    required_level VARCHAR(50),  -- beginner, intermediate, advanced
    PRIMARY KEY (persona_id, skill_id)
);

-- Personas ↔ Ai Knowledge
CREATE TABLE persona_ai_knowledge (
    persona_id UUID REFERENCES personas(persona_id),
    knowledge_id UUID REFERENCES ai_knowledge(knowledge_id),
    importance INT,              -- 1-5
    PRIMARY KEY (persona_id, knowledge_id)
);

-- Tasks ↔ Ai Opportunities (which Ai opportunities exist for each task?)
-- Note: This is actually a 1-to-many, handled by FK in ai_opportunities table

-- Ai Opportunities ↔ Ai Tools
CREATE TABLE opportunity_ai_tools (
    opportunity_id UUID REFERENCES ai_opportunities(opportunity_id),
    tool_id UUID REFERENCES ai_tools(tool_id),
    PRIMARY KEY (opportunity_id, tool_id)
);

-- Ai Use Cases ↔ Tasks (which tasks does this use case support?)
CREATE TABLE ai_use_case_tasks (
    use_case_id UUID REFERENCES ai_use_cases(use_case_id),
    task_id UUID REFERENCES tasks(task_id),
    PRIMARY KEY (use_case_id, task_id)
);

-- Ai Use Cases ↔ Ai Skills (which Ai skills are required for this use case?)
CREATE TABLE ai_use_case_ai_skills (
    use_case_id UUID REFERENCES ai_use_cases(use_case_id),
    skill_id UUID REFERENCES ai_skills(skill_id),
    importance INT,              -- 1-5
    PRIMARY KEY (use_case_id, skill_id)
);

-- Ai Use Cases ↔ Ai Knowledge
CREATE TABLE ai_use_case_ai_knowledge (
    use_case_id UUID REFERENCES ai_use_cases(use_case_id),
    knowledge_id UUID REFERENCES ai_knowledge(knowledge_id),
    importance INT,              -- 1-5
    PRIMARY KEY (use_case_id, knowledge_id)
);

-- Ai Use Cases ↔ Ai Tools (which Ai tools are used in this use case?)
CREATE TABLE ai_use_case_ai_tools (
    use_case_id UUID REFERENCES ai_use_cases(use_case_id),
    tool_id UUID REFERENCES ai_tools(tool_id),
    PRIMARY KEY (use_case_id, tool_id)
);

-- Ai Use Cases ↔ Personas (which personas is this use case relevant for?)
CREATE TABLE ai_use_case_personas (
    use_case_id UUID REFERENCES ai_use_cases(use_case_id),
    persona_id UUID REFERENCES personas(persona_id),
    relevance_score INT,         -- 1-5
    PRIMARY KEY (use_case_id, persona_id)
);

-- Ai Workflows ↔ Ai Use Cases
-- Note: This is handled by use_case_sequence JSONB array in ai_workflows table
-- Alternative if you prefer explicit junction table:
CREATE TABLE ai_workflow_use_cases (
    workflow_id UUID REFERENCES ai_workflows(workflow_id),
    use_case_id UUID REFERENCES ai_use_cases(use_case_id),
    sequence_order INT,
    PRIMARY KEY (workflow_id, use_case_id)
);
```

#### User-Specific Tables

```sql
-- Users
CREATE TABLE users (
    user_id UUID PRIMARY KEY,
    email VARCHAR(255) NOT NULL,
    persona_id UUID REFERENCES personas(persona_id),  -- User's persona
    onboarding_completed BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT NOW()
);

-- User Ai Skills (self-reported, observed, or inferred Ai skill levels)
CREATE TABLE user_ai_skills (
    user_id UUID REFERENCES users(user_id),
    skill_id UUID REFERENCES ai_skills(skill_id),
    current_level VARCHAR(50),    -- beginner, intermediate, advanced
    target_level VARCHAR(50),
    last_assessed TIMESTAMP,
    PRIMARY KEY (user_id, skill_id)
);

-- User Ai Knowledge (what Ai-operational knowledge does the user have?)
CREATE TABLE user_ai_knowledge (
    user_id UUID REFERENCES users(user_id),
    knowledge_id UUID REFERENCES ai_knowledge(knowledge_id),
    proficiency VARCHAR(50),      -- basic, proficient, expert
    last_assessed TIMESTAMP,
    PRIMARY KEY (user_id, knowledge_id)
);

-- User Ai Use Cases (recommended, in progress, completed)
CREATE TABLE user_ai_use_cases (
    user_id UUID REFERENCES users(user_id),
    use_case_id UUID REFERENCES ai_use_cases(use_case_id),
    status VARCHAR(50),           -- recommended, in_progress, completed, skipped
    times_used INT DEFAULT 0,
    last_used TIMESTAMP,
    feedback VARCHAR(50),         -- helpful, not_helpful, too_complex, etc.
    PRIMARY KEY (user_id, use_case_id)
);

-- User Ai Workflows (which workflows has the user adopted?)
CREATE TABLE user_ai_workflows (
    user_id UUID REFERENCES users(user_id),
    workflow_id UUID REFERENCES ai_workflows(workflow_id),
    status VARCHAR(50),           -- learning, active, mastered
    times_completed INT DEFAULT 0,
    last_completed TIMESTAMP,
    PRIMARY KEY (user_id, workflow_id)
);
```

---

### 5.3 Data Model (JSON Example)

Here's how a single Ai Use Case might be represented in JSON (useful for APIs or document stores):

```json
{
  "use_case_id": "aiuc_001",
  "title": "Draft First-Pass Cold Email",
  "description": "Use an LLM to generate a first draft of a cold outreach email based on prospect research and value proposition inputs. User provides key points; Ai generates structured email.",
  "difficulty": "Beginner",
  "impact": {
    "time_saved_minutes": 10,
    "quality_score": 4
  },
  "prerequisites": {
    "ai_skills": [
      "ai_skill_prompting_fundamentals",
      "ai_skill_output_evaluation"
    ],
    "ai_knowledge": [
      "ai_knowledge_llm_limitations",
      "ai_knowledge_prompt_structure"
    ],
    "ai_tools": [
      "ai_tool_llm_text_generation"
    ]
  },
  "trigger_patterns": [
    {
      "signal_type": "keyboard_idle",
      "context": { "app": "Gmail", "action": "compose_email" },
      "threshold": "30 seconds idle"
    },
    {
      "signal_type": "prompt_entered",
      "context": { "keywords": ["help", "write", "email", "prospect", "draft"] }
    },
    {
      "signal_type": "app_switch",
      "context": { "from": "Salesforce", "to": "Gmail", "frequency": "multiple" }
    }
  ],
  "mapped_to": {
    "personas": [
      "persona_sales_ae_speed_focused",
      "persona_bdr_high_volume"
    ],
    "tasks": [
      "task_cold_outreach",
      "task_prospect_research"
    ],
    "ai_opportunities": [
      "ai_opp_email_drafting",
      "ai_opp_personalization"
    ]
  },
  "taxonomy_references": {
    "onet": {
      "occupation": "41-3031.00",
      "tasks": ["12345", "67890"]
    },
    "esco": {
      "occupation": "http://data.europa.eu/esco/occupation/5244"
    }
  },
  "coaching_guidance": {
    "beginner_tips": "Start with bullet points of key information; let Ai structure the email",
    "common_mistakes": "Forgetting to review for accuracy; using generic prompts without context",
    "iteration_suggestion": "Try 2-3 variations by adjusting tone (formal vs casual)"
  }
}
```

---

### 5.4 Mapping Strategy

Our mapping strategy follows the new Ai-focused hierarchy: **Persona → Tasks → Ai Opportunities → Ai Use Cases → Ai Workflows**, supported by **Ai Skills**, **Ai Knowledge**, and **Ai Tools**.

#### Step 1: Build Personas (Not Just Roles)

Start with 10–20 key personas combining role, function, motivations, and behaviors.

For each persona:

1. **Map role to O\*NET occupation(s):**
   - Example: "Sales Account Executive" → O\*NET 41-3031.00 (Sales Representatives, Services)
   - Pull O\*NET data: tasks, work activities, work context

2. **Map to ESCO → ISCO for global compatibility:**
   - Example: O\*NET 41-3031.00 → ESCO 5244 → ISCO 2433

3. **Assign function:**
   - Example: Sales

4. **Identify motivations (via onboarding interview or behavioral observation):**
   - Example: ["speed", "autonomy", "recognition"]

5. **Capture behaviors (observed or self-reported):**
   - Example: {"chatgpt_usage": "daily", "tool_adoption": "fast", "learning_style": "hands-on"}

**Output:** Rich persona profile that's more than just a job title.

#### Step 2: Map Personas → Tasks

For each persona, identify the top 10–20 tasks they perform daily (sourced from O\*NET task statements).

**Example for Sales AE:**
- "Draft outbound emails"
- "Research prospects"
- "Prepare sales presentations"
- "Follow up with leads"
- "Update CRM records"

**Tag each task** with frequency (daily/weekly/monthly) and importance (1-5).

#### Step 3: Map Tasks → Ai Opportunities

For each task, identify **where Ai can create leverage**. This is where we diverge from O\*NET and add Ai First's proprietary layer.

**Example: "Draft outbound emails" task:**

Ai Opportunities:
- Email outline generation
- Personalization at scale
- Tone adjustment (formal ↔ casual)
- Grammar/clarity improvement

**Tag each opportunity** with:
- Ai capability type (generation, summarization, analysis, retrieval)
- Potential impact (time saved, quality improvement)

#### Step 4: Map Ai Opportunities → Ai Use Cases

For each Ai opportunity, define the **smallest unit of Ai-enabled work** (use case).

**Example: "Email outline generation" opportunity:**

Ai Use Case: **"Draft First-Pass Cold Email"**
- **Prerequisites:**
  - Ai Skills: Prompting fundamentals, output evaluation
  - Ai Knowledge: LLM limitations, prompt structure
  - Ai Tools: LLM text generation
- **Trigger Patterns:**
  - Keyboard idle >30s in Gmail compose
  - App switch from Salesforce → Gmail
  - Prompt entered: "help me write email"
- **Coaching Guidance:**
  - Beginner tip: "Start with bullet points, let Ai structure"
  - Common mistake: "Forgetting to fact-check output"

**Assign difficulty** (beginner/intermediate/advanced) and **impact** (time saved, quality score).

#### Step 5: Map Ai Use Cases → Ai Workflows

Group related use cases into **chains of Ai-enabled steps** that form a workflow.

**Example: "End-to-End Outbound Sales Email Workflow":**

1. Research prospect (Ai use case: "Summarize LinkedIn profile + company news")
2. Draft email (Ai use case: "Draft first-pass cold email")
3. Refine tone (Ai use case: "Adjust email tone for urgency")
4. Human review
5. Schedule send

**Tag workflow** with typical duration and completion criteria.

#### Step 6: Define Behavioral Signals for Real-Time Triggers

For each use case, define observable patterns that trigger a recommendation or nudge:

**Time-based signals:**
- User idle >30 seconds in email compose window

**Context-based signals:**
- User has Salesforce contact open + Gmail compose open simultaneously
- User switched apps 3+ times in last 5 minutes (indicates friction)

**Prompt-based signals:**
- User typed keywords: ["help", "write", "email", "draft", "suggest"]
- User copy-pasted content between apps (manual workflow that could be automated)

**Behavioral pattern signals:**
- User previously completed similar use case successfully (suggest next step)
- User abandoned similar use case (offer simplified version or coaching)

Store these as structured JSON so the recommendation engine can evaluate in real time.

---

**Summary of Mapping Flow:**

```
Persona (role + function + motivations + behaviors)
  ↓
Tasks (from O*NET, filtered for relevance)
  ↓
Ai Opportunities (where Ai creates leverage - Ai First proprietary)
  ↓
Ai Use Cases (smallest unit of Ai work - Ai First proprietary)
  ↓
Ai Workflows (chains of use cases - Ai First proprietary)

Supported by:
- Ai Skills (prompting, evaluation, etc.)
- Ai Knowledge (LLM behavior, safety, etc.)
- Ai Tools (LLM generation, RAG, etc.)
- Behavioral Signals (trigger recommendations)
```

---

### 5.5 Handling Edge Cases

#### Multi-Functional Personas

- **Reality:** A single person may wear multiple hats (e.g., "Sales Engineer" = part sales, part technical consultant).
- **Solution:** Personas can reference multiple O\*NET occupations. Aggregate tasks and Ai opportunities from all mapped occupations. Weight recommendations by which function the user is currently performing (inferred from behavioral signals).

#### Blended or Hybrid Roles

- **Reality:** A startup employee might be "Head of Sales + Head of Marketing."
- **Solution:** Create hybrid personas that combine tasks from multiple functions. In the data model, a user can have a persona that references multiple O\*NET occupations. Recommendations consider the union of tasks/Ai opportunities from all functions, ranked by relevance and recent activity.

#### Ambiguous or Emerging Roles

- **Reality:** New roles emerge faster than taxonomies update (e.g., "Growth Product Manager," "Ai Ops Engineer," "Revenue Operations Analyst").
- **Solution:**
  - **Short-term:** Map to the *closest* O\*NET occupation(s) and manually curate task deltas. Add Ai opportunities based on observed behavior.
  - **Long-term:** Build an "Ai First proprietary persona taxonomy" that extends O\*NET. Use behavioral data to define new personas empirically (e.g., "users who perform tasks X, Y, Z and use Ai tools A, B, C cluster into a new persona type").

#### Evolving Personas Over Time

- **Reality:** People's motivations, behaviors, and Ai readiness change as they adopt Ai.
- **Solution:** Treat personas as **dynamic, not static**. Update motivations and behaviors based on:
  - Observed Ai usage patterns
  - Self-reported changes (e.g., "I'm more comfortable with Ai now")
  - Skill progression (beginner → intermediate → advanced)
  - Workflow adoption (number of Ai use cases mastered)

Example: A user starts as "Sales AE - Ai Skeptic, Low Adoption" and evolves to "Sales AE - Ai Power User, High Automation."

---

## 6. Implementation Plan (Phased)

### Phase 1: Exploration & Data Load (Months 1–2)

#### Objectives

- Understand O\*NET and ESCO structure.
- Load datasets into a working database.
- Manually map 10–20 priority personas.
- Define initial Ai skills, Ai knowledge, and Ai tools taxonomies.

#### Key Deliverables

1. **Database Setup**
   - Provision PostgreSQL (or similar) on cloud infrastructure (AWS RDS, Google Cloud SQL, Azure Database).
   - Create schema (tables from Section 5.2).

2. **Data Ingestion**
   - Download O\*NET bulk files. Write ETL scripts (Python, dbt, or similar) to load into database.
   - Download ESCO CSV exports. Load occupations and relations.
   - Create crosswalk table: O\*NET ↔ ESCO ↔ ISCO.

3. **Persona Mapping (Pilot)**
   - Identify 10–20 critical personas based on early customer conversations (e.g., Sales AE - Speed Focused, CSM - Relationship Builder, FP&A Analyst - Detail Oriented, HRBP - Compliance Focused, Marketing Manager - Creative, Product Manager - Data Driven, Operations Analyst - Process Optimizer).
   - For each persona:
     - Map **role** to O\*NET occupation(s) and ESCO/ISCO equivalents.
     - Identify **function** (Sales, CS, Finance, HR, Marketing, Product, Ops).
     - Document **motivations** (speed, accuracy, creativity, autonomy, recognition, etc.).
     - Document **observed behaviors** (current Ai usage patterns, tool preferences, friction points).
     - Pull top 10–20 **tasks** from O\*NET.
     - Document in a spreadsheet or Notion page.

4. **Ai Taxonomy Definition**
   - Define initial **Ai Skills** taxonomy (20–30 skills):
     - Examples: Prompting fundamentals, Output evaluation, Retrieval workflow design, Model selection, Prompt iteration, Quality assessment.
   - Define initial **Ai Knowledge** taxonomy (15–25 knowledge areas):
     - Examples: LLM behavior and limitations, Prompt structure best practices, Safe Ai usage with sensitive data, Hallucination detection, Context window management.
   - Define initial **Ai Tools** taxonomy (10–15 capabilities):
     - Examples: LLM text generation, Document summarization, Meeting transcription, Code generation, Image analysis, RAG (retrieval-augmented generation).

5. **Validation Workshop**
   - Review mappings with internal team + friendly customer contacts.
   - Refine based on feedback ("This task isn't relevant," "These motivations don't match our users," "This Ai skill is actually critical").

#### Prioritization

- **Must-Have:** O\*NET data loaded, 5 personas fully mapped, initial Ai skills/knowledge/tools taxonomies defined, database operational.
- **Nice-to-Have:** ESCO data loaded, ISCO crosswalk complete, 20 personas mapped.

---

### Phase 2: Ontology & Use Case Library (Months 2–4)

#### Objectives

- Design and build the internal knowledge graph.
- Create a library of 50–100 **Ai use cases** (smallest units of Ai-enabled work).
- Map personas → tasks → **Ai opportunities** → Ai use cases.
- Map Ai use cases to required Ai skills, Ai knowledge, and Ai tools.

#### Key Deliverables

1. **Schema Finalization**
   - Implement full schema (Section 5.2).
   - Add indexes for common queries (e.g., "get all Ai use cases for persona X", "get Ai opportunities for task Y").

2. **Ai Opportunities Mapping**
   - For each task (from Phase 1), identify **Ai opportunities** — where Ai creates leverage.
   - Document 50–100 Ai opportunities across functions.
   - Examples:
     - Task: "Draft outbound emails" → Ai Opportunities: "Email outline generation", "Tone adjustment", "Personalization at scale".
     - Task: "Analyze financial data" → Ai Opportunities: "Trend summarization", "Anomaly detection explanation", "Narrative generation from numbers".

3. **Ai Use Case Library**
   - Brainstorm 100+ potential **Ai use cases** (smallest units of Ai-enabled work) across functions (Sales, CS, Finance, HR, Marketing, Ops, Product).
   - For each Ai use case, document:
     - **Title & description** (focus on the Ai-enabled action, not the entire domain workflow).
     - **Difficulty** (Beginner / Intermediate / Advanced).
     - **Impact** (time saved in minutes, quality improvement score).
     - **Prerequisites** (required Ai skills, required Ai knowledge, required Ai tools).
     - **Triggering patterns** (behavioral signals that suggest this use case is relevant).
     - **Coaching guidance** (beginner tips, common mistakes, iteration suggestions).
   - Map each Ai use case to:
     - 1–5 **tasks** (from O\*NET).
     - 1–3 **Ai opportunities**.
     - 2–5 **Ai skills**.
     - 1–3 **Ai knowledge** areas.
     - 1–2 **Ai tools**.
     - 1–10 **personas**.

4. **Behavioral Signal Taxonomy**
   - Define 20–30 signal types (see Appendix A for details).
   - Build data capture plan (what to log, where, how often).

5. **API Design**
   - Design internal API endpoints:
     - `GET /api/personas/{persona_id}` – Get persona details + tasks + Ai opportunities.
     - `GET /api/ai_use_cases?persona_id={id}` – Get recommended Ai use cases for a persona.
     - `GET /api/ai_opportunities?task_id={id}` – Get Ai opportunities for a specific task.
     - `POST /api/recommendations` – Given user context (persona, observed behavior), return ranked Ai use case recommendations.

#### Prioritization

- **Must-Have:** 50 Ai opportunities mapped, 50 Ai use cases fully documented and mapped, API design complete, signal taxonomy defined.
- **Nice-to-Have:** 100+ Ai use cases, automated ETL pipeline for O\*NET updates, Ai workflows defined (chains of use cases).

---

### Phase 3: Product Integration (Months 4–6)

#### Objectives

- Integrate ontology into product surfaces (onboarding, observation, coaching UI).
- Build recommendation engine MVP.
- Launch with early customers.

#### Key Deliverables

1. **Onboarding Flow**
   - **User selects role** from a dropdown (populated from `personas` table, showing role titles).
   - **User answers questions** to build their full persona profile:
     - Function (Sales, CS, Finance, etc.).
     - Motivations (speed, accuracy, creativity, autonomy, recognition, etc.).
     - Current Ai usage patterns (tools used, frequency, comfort level).
     - Key tasks they perform (from O\*NET task list, user selects top 5–10).
   - System maps user → **persona** (role + function + motivations + behaviors) → tasks → Ai opportunities → recommended Ai use cases.

2. **Observation Engine**
   - Capture behavioral signals via:
     - OS APIs (active window, app usage, keyboard/mouse idle time).
     - Screen capture (OCR to extract text, detect UI elements).
     - Integration APIs (e.g., ChatGPT Enterprise API to log prompts).
   - Log signals to `behavioral_signals` table.

3. **Recommendation Engine**
   - **Input:** User profile (persona, current Ai skills, current Ai knowledge) + recent behavioral signals.
   - **Logic:**
     - Query `ai_use_cases` table for matches on persona, tasks, Ai opportunities.
     - Filter by prerequisites (user must have required **Ai skills** and **Ai knowledge** or be close).
     - Rank by:
       - Relevance (how well signals match trigger patterns).
       - Impact (time saved, quality improvement).
       - Difficulty (prefer beginner Ai use cases for new users).
   - **Output:** Ranked list of 3–5 Ai use case recommendations.

4. **Coaching UI / Nudges**
   - When a trigger pattern is detected (e.g., user idle in Gmail for 30 seconds), surface a nudge:
     - "Looks like you're drafting an email. Want help making it more persuasive?" → links to **Ai use case**: "Draft first-pass cold email with LLM".
   - Link to Ai use case detail page with:
     - Step-by-step instructions.
     - Required Ai skills and Ai knowledge (with links to learn more).
     - Coaching guidance (beginner tips, common mistakes, iteration suggestions).

5. **Dashboard / Analytics**
   - Show admins:
     - Adoption rates by persona, team, Ai use case.
     - ROI estimates (time saved, quality improvements).
     - **Ai skill gap analysis** (which Ai skills are blocking adoption of high-value Ai use cases?).
     - Persona evolution tracking (how users' motivations and behaviors change over time).

#### Prioritization

- **Must-Have:** Onboarding flow with persona building, basic signal capture, recommendation engine MVP, 1 nudge type.
- **Nice-to-Have:** Full analytics dashboard, multiple nudge types, A/B testing framework, persona evolution tracking.

---

### Phase 4: Refinement & Feedback Loops (Months 6+)

#### Objectives

- Iterate based on real user behavior.
- Improve recommendation accuracy.
- Expand Ai use case library and persona coverage.
- Evolve the proprietary "Ai First Behavior Graph."

#### Key Deliverables

1. **User Feedback Integration**
   - After each nudge, ask: "Was this helpful?" (thumbs up/down).
   - Log feedback to refine trigger patterns and ranking logic.
   - Track which Ai use cases have highest/lowest adoption by persona.

2. **Behavioral Pattern Mining**
   - Analyze signal data to discover new patterns:
     - "Users with persona P who do X, Y, Z often struggle with task A → new **Ai opportunity** or **Ai use case** needed."
     - "Users with persona P rarely use Ai use case U → maybe it's not relevant, prerequisites are too high, or coaching guidance is unclear."
     - "Users who master Ai skill S tend to adopt 3x more Ai use cases → prioritize teaching skill S."

3. **Persona Evolution Tracking**
   - Monitor how user motivations and behaviors change over time.
   - Update persona profiles dynamically based on observed Ai usage patterns.
   - Examples:
     - "Sales AE - Ai Skeptic, Low Adoption" → after 3 months → "Sales AE - Ai Curious, Medium Adoption" → after 6 months → "Sales AE - Ai Power User, High Adoption."
   - Use evolution data to refine onboarding and coaching strategies.

4. **LLM-Assisted Mapping**
   - Use GPT-4 (or similar) to propose mappings:
     - Input: Job title, self-reported tasks, motivations.
     - Output: Suggested **persona** (role + function + motivations), relevant **Ai opportunities**, recommended **Ai use cases**.
   - Human-in-the-loop validation.

5. **Ontology Evolution**
   - Add new **personas**, tasks, **Ai opportunities**, **Ai skills**, **Ai knowledge**, **Ai tools**, **Ai use cases** as needed.
   - Refine existing mappings based on observed behavior.
   - Build and continuously evolve the proprietary **"Ai First Behavior Graph"** that layers on top of O\*NET/ESCO:
     - Persona → Tasks → Ai Opportunities → Ai Use Cases → Ai Workflows.
     - Ai Skills progression pathways (e.g., "Prompting fundamentals" → "Advanced prompt engineering" → "Retrieval workflow design").
     - Behavioral triggers for each Ai use case (refined from real usage data).

#### Prioritization

- **Must-Have:** Feedback loop operational, monthly review of mappings, persona evolution tracking, quarterly Ai use case library expansion.
- **Nice-to-Have:** LLM-assisted mapping, automated pattern discovery, predictive analytics (which users will become Ai power users?).

---

## 7. Technical Recommendations

### Option 1: Relational Database (PostgreSQL) + Application Layer

#### Architecture

- **Database:** PostgreSQL (hosted on AWS RDS, Google Cloud SQL, or Azure Database).
- **Schema:** Normalized tables (Section 5.2).
- **Query Layer:** RESTful API (Node.js/Express, Python/FastAPI, or similar).
- **Search/Ranking:** Application logic + SQL joins. Use `ARRAY` types and `JSONB` columns for flexible attributes.

#### Pros

- **Mature, well-understood technology.** Easy to hire for.
- **Strong transactional guarantees.** Good for user-facing product.
- **Cloud-managed options** reduce operational overhead (automatic backups, scaling, etc.).
- **Cost-effective** for early-stage product.

#### Cons

- **Many-to-many joins can be expensive** at scale. Will need careful indexing.
- **Graph queries** (e.g., "find all use cases connected to a role via tasks AND skills") require multiple joins and can be slow.
- **Limited native support for semantic search** (e.g., "find use cases similar to this behavior pattern"). Would need to add vector embeddings + pgvector extension.

#### When to Use

- **Phase 1–3:** Best choice for MVP. Simple, reliable, well-supported.
- **Phase 4+:** May need to augment with vector store (see below) or migrate to graph DB if query complexity grows.

---

### Option 2: Graph Database (Neo4j, Amazon Neptune)

#### Architecture

- **Database:** Neo4j (self-hosted or Aura cloud) or Amazon Neptune (AWS-managed).
- **Schema:** Nodes (personas, tasks, ai_opportunities, ai_skills, ai_knowledge, ai_tools, ai_use_cases, ai_workflows, users) + Edges (relationships).
- **Query Language:** Cypher (Neo4j) or Gremlin (Neptune).

#### Pros

- **Optimized for relationship queries.** Traversing "persona → tasks → ai_opportunities → ai_use_cases" is fast and natural.
- **Flexible schema.** Easy to add new node/edge types without migrations.
- **Graph algorithms** (e.g., PageRank, community detection) can surface unexpected insights (e.g., "which Ai skills are most central to high-performing personas?").

#### Cons

- **Steeper learning curve.** Cypher/Gremlin are less familiar than SQL.
- **Operational complexity.** Self-hosted Neo4j requires DevOps expertise. Managed options (Aura, Neptune) are more expensive.
- **Transactional workloads** (e.g., updating user progress) are less optimized than in relational DBs.

#### When to Use

- **Phase 4+:** If you find yourself writing complex multi-join queries in PostgreSQL, consider migrating hot paths to a graph DB.
- **Advanced analytics:** If you want to run graph algorithms (e.g., "which use cases are most influential in driving adoption?"), graph DB is ideal.

---

### Option 3: Hybrid (PostgreSQL + Vector Store + Graph Layer)

#### Architecture

- **Relational DB (PostgreSQL):** Store core entities (personas, tasks, ai_opportunities, ai_skills, ai_knowledge, ai_tools, ai_use_cases, ai_workflows, users). Handle transactional workloads.
- **Vector Store (Pinecone, Weaviate, pgvector):** Store embeddings of Ai use cases, tasks, and behavioral signals. Enable semantic search ("find Ai use cases similar to this observed behavior").
- **Graph DB (Neo4j) or Graph Overlay:** Store only the relationship graph. Query for exploration and analytics.

#### Pros

- **Best of all worlds.** Relational for transactions, vector for semantic search, graph for exploration.
- **Scalable.** Each component optimized for its workload.

#### Cons

- **Complexity.** Three systems to maintain, sync, and monitor.
- **Cost.** Managed services for all three can add up.

#### When to Use

- **Phase 4+:** Once you have proven product-market fit and need to scale to thousands of users and hundreds of use cases.

---

### Recommendation: Start with Option 1, Evolve to Option 3

**Phase 1–3:** Use PostgreSQL + RESTful API. This is the fastest path to a working MVP.

**Phase 4+:** Add pgvector extension to PostgreSQL for semantic search (use case embeddings, behavior pattern matching). If graph queries become a bottleneck, add Neo4j for analytics.

---

### API Design

#### Core Endpoints

1. **`GET /api/personas`**
   - Returns list of all personas (for onboarding dropdown, showing role titles).

2. **`GET /api/personas/{persona_id}`**
   - Returns persona details (role, function, typical motivations, typical behaviors) + associated tasks, Ai opportunities, Ai skills, Ai knowledge, Ai tools.

3. **`GET /api/ai_use_cases?persona_id={id}&difficulty={level}`**
   - Returns Ai use cases relevant to a persona, optionally filtered by difficulty.

4. **`POST /api/recommendations`**
   - **Input:** User context (user_id, persona_id, current_app, recent_signals).
   - **Output:** Ranked list of Ai use case recommendations with confidence scores.

5. **`POST /api/behavioral_signals`**
   - Ingest a batch of behavioral signals from the observation engine.

6. **`POST /api/feedback`**
   - Log user feedback on a recommendation (helpful / not helpful).

#### Example Request/Response

```http
POST /api/recommendations
Content-Type: application/json

{
  "user_id": "user_123",
  "context": {
    "current_app": "Gmail",
    "action": "compose_email",
    "time_idle_seconds": 35,
    "recent_signals": [
      { "type": "app_switch", "from": "Salesforce", "to": "Gmail" }
    ]
  }
}
```

```json
{
  "recommendations": [
    {
      "use_case_id": "uc_001",
      "title": "Draft Personalized Cold Email",
      "description": "Use Ai to generate a first draft...",
      "confidence": 0.87,
      "impact": {
        "time_saved_minutes": 10,
        "quality_score": 4
      }
    },
    {
      "use_case_id": "uc_042",
      "title": "Improve Email Tone for Urgency",
      "description": "Adjust phrasing to convey urgency...",
      "confidence": 0.65,
      "impact": {
        "time_saved_minutes": 5,
        "quality_score": 3
      }
    }
  ]
}
```

---

## 8. Risks, Tradeoffs, and Future Extensions

### Risks

1. **Taxonomy Staleness**
   - **Risk:** O\*NET updates 2x/year, ESCO annually. Emerging roles (e.g., "AI Ops Engineer") may not exist in either taxonomy.
   - **Mitigation:** Maintain an "Ai First Extended Taxonomy" that layers on top of standard systems. Use behavioral data to empirically define new **personas** with emerging role types.

2. **Mapping Accuracy**
   - **Risk:** Manual mappings (persona → O\*NET occupation, Ai use case → tasks, Ai opportunities) are time-consuming and error-prone.
   - **Mitigation:** Start with a small, curated set (10–20 personas, 50 Ai use cases, 50 Ai opportunities). Use LLMs to propose mappings, human-in-the-loop to validate. Iterate based on user feedback.

3. **Complexity Overhead**
   - **Risk:** Maintaining a multi-layered ontology (O\*NET + ESCO + Ai First) is complex. Risk of schema bloat.
   - **Mitigation:** Keep schema simple in Phase 1–2. Only add complexity when proven necessary. Use versioned migrations.

4. **Privacy & Data Capture**
   - **Risk:** Capturing screen data, OS events, and prompts raises privacy concerns. Must comply with GDPR, CCPA, and enterprise security policies.
   - **Mitigation:** Anonymize/encrypt sensitive data. Provide transparency & control (users can see what's captured, opt out). Get explicit consent during onboarding.

5. **Recommendation Quality**
   - **Risk:** Poor recommendations erode trust. If users see irrelevant nudges, they'll ignore or disable the coach.
   - **Mitigation:** Start conservative (only high-confidence recommendations). Collect feedback aggressively. Iterate rapidly.

---

### Tradeoffs

1. **Standardization vs. Flexibility**
   - **Tradeoff:** O\*NET/ESCO provide structure but may not fit every customer's internal job architecture.
   - **Decision:** Use O\*NET/ESCO as a *foundation*, not a constraint. Allow customers to define custom **personas** and mappings.

2. **Granularity vs. Simplicity**
   - **Tradeoff:** More granular mappings (e.g., 1,000 tasks, 500 Ai skills) improve precision but increase maintenance burden.
   - **Decision:** Start with top 10–20 tasks per persona, 20–30 Ai skills total, 15–25 Ai knowledge areas, 10–15 Ai tools. Expand only when data shows users need more specificity.

3. **Real-Time vs. Batch Processing**
   - **Tradeoff:** Real-time recommendations (< 1 second) require more infrastructure (caching, fast DB queries) vs. batch processing (analyze daily, recommend tomorrow) is simpler.
   - **Decision:** Hybrid approach. Batch process for initial recommendations (after onboarding + 2 weeks observation). Real-time inference for nudges (pattern matching against pre-computed triggers).

---

### Future Extensions

#### 1. LLM-Assisted Mapping

- **Vision:** Use GPT-4 (or fine-tuned model) to automate mappings.
- **Example Workflow:**
  - User enters job title + self-reported motivations/behaviors: "Growth Product Manager, values data-driven decisions, uses LLMs daily."
  - LLM proposes: "Closest O\*NET occupation: Product Managers (11-2021.00) + Market Research Analysts (13-1161.00). Suggested persona: Product Manager - Data Driven. Suggested tasks: A, B, C. Suggested Ai opportunities: X, Y. Suggested Ai use cases: Z1, Z2, Z3."
  - Human reviews and approves.
- **Benefit:** Dramatically speeds up onboarding for new personas.

#### 2. Proprietary Ai First Behavior Graph

- **Vision:** Over time, Ai First accumulates millions of behavioral signals across thousands of users. This becomes a proprietary dataset that extends O\*NET/ESCO with Ai-specific insights.
- **Example Insights:**
  - "Sales AEs who adopt Ai use case 'Draft first-pass cold email with LLM' see 20% higher response rates."
  - "FP&A analysts who master Ai skill 'Prompting fundamentals' adopt 3x more Ai use cases within 6 months."
  - "Users who struggle with prompt iteration cluster into a distinct persona → opportunity for targeted coaching on Ai skill 'Iterative refinement.'"
- **Benefit:** Differentiated IP. Competitors using only O\*NET can't match our Ai-behavioral insights.

#### 3. Ai Skill Trajectory Modeling

- **Vision:** Model how Ai skills evolve over time. Predict which Ai skills and Ai use cases a user needs to develop next based on their persona evolution.
- **Example:** "Sales AE - Ai Skeptic" → "Sales AE - Ai Curious" → "Sales AE - Ai Power User." As they progress, shift recommendations from beginner Ai use cases ("Summarize email thread") → intermediate ("Draft personalized outreach at scale") → advanced ("Build custom Ai workflow for entire sales cycle").
- **Benefit:** Lifelong Ai learning journey, not just one-time Ai use case library.

#### 4. Team & Org-Level Ontology

- **Vision:** Extend beyond individuals. Map teams (e.g., "Sales Team at Acme Corp") and orgs to collective Ai skill profiles, shared Ai workflows, and aggregate ROI.
- **Example:** "Your sales team has strong Ai skills in 'Prompting fundamentals' but weak in 'Output evaluation.' Focus adoption on Ai use cases that build evaluation competency and reduce hallucination risk."
- **Benefit:** Executive dashboards, team Ai coaching, org-wide Ai transformation tracking.

#### 5. Multi-Taxonomy Support

- **Vision:** Some customers may use other taxonomies (e.g., custom competency frameworks, industry-specific skill models like FinTech or Healthcare).
- **Example:** Integrate with customer's existing HR system (Workday, SuccessFactors) and map their internal job codes → Ai First ontology.
- **Benefit:** Easier sales into large enterprises with established HR infrastructure.

#### 6. Semantic Search & Embeddings

- **Vision:** Embed use cases, tasks, and behavioral signals into a vector space. Use semantic search to find matches.
- **Example:** User exhibits a novel behavior pattern (e.g., "repeatedly copying data from Salesforce into Excel"). Semantic search finds similar patterns → recommend "automate CRM data export" use case.
- **Benefit:** Handle long-tail, ambiguous, or emergent use cases that don't have explicit mappings.

---

## Appendix A: Behavioral Signals & Data Capture

To deliver real-time, contextual coaching, Ai First must capture rich behavioral data. Below are recommended signal types and capture methods.

### Signal Categories

#### 1. Application & Window Activity

- **Signals:**
  - Active application (e.g., "Gmail," "Salesforce," "Excel").
  - Window title (e.g., "Draft Email – Sales Prospect," "Q4 Budget Model.xlsx").
  - App switches (frequency, duration).
  - Time spent per app/window.

- **Capture Method:**
  - **OS APIs:**
    - macOS: Accessibility API, `NSWorkspace`.
    - Windows: Win32 API (`GetForegroundWindow`, `GetWindowText`).
    - Linux: X11 or Wayland APIs.
  - **Frequency:** Poll every 1–5 seconds. Log state changes only (reduce data volume).

- **Privacy Consideration:** Window titles may contain PII (e.g., customer names). Optionally redact or hash.

#### 2. Keyboard & Mouse Activity

- **Signals:**
  - Keyboard idle time (seconds since last keystroke).
  - Mouse idle time (seconds since last movement).
  - Typing speed (characters per minute).
  - Backspace frequency (indicator of struggle or uncertainty).

- **Capture Method:**
  - **OS APIs:** Hook into keyboard/mouse event streams.
  - **Frequency:** Aggregate into 30-second windows. Log averages, not every keystroke (privacy + performance).

- **Privacy Consideration:** Do NOT log actual keystrokes (potential to capture passwords). Only log metadata (idle time, speed, backspace count).

#### 3. Screen Content (OCR & Computer Vision)

- **Signals:**
  - UI elements detected (buttons, text fields, dropdowns).
  - Text extracted from screen regions (e.g., email subject line, spreadsheet headers).
  - Application state (e.g., "composing email" vs. "reading inbox").

- **Capture Method:**
  - **Screen Capture:** Periodic screenshots (every 10–30 seconds).
  - **OCR:** Use Tesseract, Google Vision API, or Azure Computer Vision to extract text.
  - **UI Detection:** Use ML models (YOLO, Detectron) to identify UI elements.

- **Privacy Consideration:**
  - **High risk.** Screen captures can contain sensitive data (financials, PII, proprietary info).
  - **Mitigation:** Capture only if user consents. Encrypt at rest. Redact known PII patterns (SSNs, credit cards). Optionally, process locally on-device and only send derived signals (not raw screenshots).

#### 4. Prompt & Chat Logs (Integration APIs)

- **Signals:**
  - Prompts entered into ChatGPT, Claude, Copilot, or other LLMs.
  - Responses received.
  - Conversation context (what task was user trying to accomplish?).

- **Capture Method:**
  - **APIs:**
    - ChatGPT Enterprise: Admin API for usage logs.
    - Microsoft 365 Copilot: Compliance/audit logs.
    - Custom integrations: Browser extension or proxy to intercept requests.
  - **Frequency:** Real-time or near-real-time.

- **Privacy Consideration:** Prompts may contain sensitive business info. Require enterprise agreement. Encrypt in transit and at rest.

#### 5. Workflow Milestones & Events

- **Signals:**
  - Task started/completed (e.g., "Email sent," "Report exported," "Meeting scheduled").
  - Errors encountered (e.g., "Excel formula error," "CRM sync failed").
  - Time to completion (how long did a task take?).

- **Capture Method:**
  - **Application integrations:** Hooks into Gmail API (email sent events), Salesforce API (record created), Slack API (message posted).
  - **OS events:** File saved, browser tab closed, etc.

- **Privacy Consideration:** Lower risk. Most events are metadata, not content.

#### 6. User Intent & Context (Self-Reported)

- **Signals:**
  - User explicitly asks for help (e.g., "How do I write a persuasive email?").
  - User rates recommendations (thumbs up/down).
  - User sets goals (e.g., "I want to get better at data analysis").

- **Capture Method:**
  - **In-app prompts:** Chatbot, survey modals, feedback buttons.
  - **Frequency:** On-demand (when user initiates).

- **Privacy Consideration:** Low risk. User knowingly shares this data.

---

### Data Capture Architecture

```
┌─────────────────────────────────────────────────────────────┐
│  User Device (macOS, Windows, Linux)                        │
│  ┌──────────────────────────────────────────────────────┐   │
│  │  Ai First Agent (Background Process)                 │   │
│  │  - OS API Hooks (app activity, keyboard/mouse)      │   │
│  │  - Screen Capture Module (optional, with consent)   │   │
│  │  - Integration Hooks (Gmail, Salesforce, Slack)     │   │
│  └────────────────────┬─────────────────────────────────┘   │
│                       │                                      │
│                       │ Encrypted HTTPS                      │
│                       ▼                                      │
└───────────────────────────────────────────────────────────────┘
                        │
                        │
┌───────────────────────▼─────────────────────────────────────┐
│  Ai First Cloud (AWS, GCP, Azure)                           │
│  ┌──────────────────────────────────────────────────────┐   │
│  │  Ingestion API                                       │   │
│  │  - Validate, sanitize, enrich signals               │   │
│  │  - Write to message queue (Kafka, SQS, Pub/Sub)     │   │
│  └────────────────────┬─────────────────────────────────┘   │
│                       │                                      │
│                       ▼                                      │
│  ┌──────────────────────────────────────────────────────┐   │
│  │  Stream Processing (Flink, Dataflow, Lambda)        │   │
│  │  - Aggregate into sessions (e.g., 30-min windows)   │   │
│  │  - Detect patterns (trigger rules)                  │   │
│  │  - Enrich with ontology data (roles, tasks, etc.)   │   │
│  └────────────────────┬─────────────────────────────────┘   │
│                       │                                      │
│                       ▼                                      │
│  ┌──────────────────────────────────────────────────────┐   │
│  │  Data Lake (S3, Cloud Storage, Blob Storage)        │   │
│  │  - Raw signals (long-term retention)                │   │
│  │  - Aggregated sessions (for analytics)              │   │
│  └──────────────────────────────────────────────────────┘   │
│                                                              │
│  ┌──────────────────────────────────────────────────────┐   │
│  │  Recommendation Engine                               │   │
│  │  - Query ontology DB (PostgreSQL)                   │   │
│  │  - Match signals → use cases (rule-based + ML)      │   │
│  │  - Return ranked recommendations                    │   │
│  └────────────────────┬─────────────────────────────────┘   │
│                       │                                      │
│                       │ REST API                             │
│                       ▼                                      │
└───────────────────────────────────────────────────────────────┘
                        │
                        │
┌───────────────────────▼─────────────────────────────────────┐
│  Ai First Coach UI (Web App, Browser Extension, Slack Bot)  │
│  - Display recommendations                                   │
│  - Deliver nudges                                            │
│  - Collect feedback                                          │
└─────────────────────────────────────────────────────────────┘
```

---

### Recommended Signal Schema (JSON)

```json
{
  "signal_id": "sig_abc123",
  "user_id": "user_456",
  "timestamp": "2025-11-14T15:32:18Z",
  "signal_type": "app_activity",
  "context": {
    "app": "Gmail",
    "window_title": "Compose: Re: Q4 Proposal",
    "duration_seconds": 45,
    "action": "compose_email"
  },
  "derived_intent": "writing_email",
  "confidence": 0.92
}
```

```json
{
  "signal_id": "sig_def789",
  "user_id": "user_456",
  "timestamp": "2025-11-14T15:33:02Z",
  "signal_type": "keyboard_idle",
  "context": {
    "app": "Gmail",
    "idle_seconds": 38
  },
  "derived_intent": "stuck_or_hesitating",
  "confidence": 0.78
}
```

```json
{
  "signal_id": "sig_ghi012",
  "user_id": "user_456",
  "timestamp": "2025-11-14T15:34:15Z",
  "signal_type": "prompt_entered",
  "context": {
    "app": "ChatGPT",
    "prompt": "help me write a persuasive follow-up email to a prospect",
    "response_summary": "generated email template"
  },
  "derived_intent": "seeking_ai_help_for_email",
  "confidence": 1.0
}
```

---

## Appendix B: Example Ai Use Case Library Structure

Below is a template for documenting **Ai use cases** (smallest units of Ai-enabled work) in the library. Aim for hundreds of these, organized by function, difficulty, and persona.

### Ai Use Case Template

```markdown
# Ai Use Case: [Title]

**ID:** `aiuc_[###]`
**Function:** Sales / Customer Success / Finance / HR / Marketing / Ops / Product
**Difficulty:** Beginner / Intermediate / Advanced
**Impact:** [Time saved: X minutes] [Quality improvement: X/5]

## Description

[1-2 sentences explaining what Ai-enabled action this use case performs and why it matters.]

## Prerequisites

- **Ai Skills:** [List 1–3 required Ai competencies, e.g., "Prompting fundamentals", "Output evaluation"]
- **Ai Knowledge:** [List 1–2 required Ai-operational knowledge areas, e.g., "LLM behavior and limitations", "Prompt structure best practices"]
- **Ai Tools:** [List 1–2 required Ai capabilities, e.g., "LLM text generation", "Document summarization"]

## Step-by-Step Instructions

1. [Step 1]
2. [Step 2]
3. [Step 3]

## Coaching Guidance

- **Beginner Tips:** [Advice for first-time users]
- **Common Mistakes:** [What to watch out for]
- **Iteration Suggestions:** [How to improve results]

## Example

[Concrete example showing input and Ai-generated output]

## Trigger Patterns (for Recommendation Engine)

- **Signal Type:** [e.g., keyboard_idle, app_switch, prompt_entered]
- **Context:** [e.g., app=Gmail, action=compose_email, idle>30s]
- **Confidence Threshold:** [e.g., 0.8]

## Mappings

- **Personas:** [List persona IDs, e.g., `persona_sales_ae_speed_focused`, `persona_bdr_high_volume`]
- **Tasks:** [List O*NET task IDs, e.g., `task_cold_outreach`, `task_follow_up_email`]
- **Ai Opportunities:** [List Ai opportunity IDs, e.g., `ai_opp_email_drafting`, `ai_opp_personalization`]
- **Ai Skills:** [List Ai skill IDs, e.g., `ai_skill_prompting_fundamentals`, `ai_skill_output_evaluation`]
- **Ai Knowledge:** [List Ai knowledge IDs, e.g., `ai_knowledge_llm_limitations`, `ai_knowledge_prompt_structure`]
- **Ai Tools:** [List Ai tool IDs, e.g., `ai_tool_llm_text_generation`]
- **O*NET References:** [Occupation code, task IDs for taxonomic reference only]
- **ESCO References:** [Occupation URI for taxonomic reference only]
```

### Example: Draft First-Pass Cold Email with LLM

```markdown
# Ai Use Case: Draft First-Pass Cold Email with LLM

**ID:** `aiuc_001`
**Function:** Sales
**Difficulty:** Beginner
**Impact:** Time saved: 10 minutes | Quality improvement: 4/5

## Description

Use an LLM to generate a first draft of a cold outreach email tailored to a prospect's industry, role, and pain points. The user provides bullet points or a rough outline; the LLM writes a polished, persuasive email. This is the **smallest unit of Ai-enabled work** — not the entire sales workflow, just the email drafting step.

## Prerequisites

- **Ai Skills:**
  - Prompting fundamentals (how to structure a clear request)
  - Output evaluation (how to assess quality and accuracy)
- **Ai Knowledge:**
  - LLM behavior and limitations (understanding that LLMs may hallucinate or miss context)
  - Prompt structure best practices (clear instructions, examples, constraints)
- **Ai Tools:**
  - LLM text generation (via ChatGPT, Claude, or integrated Ai tool)

## Step-by-Step Instructions

1. Open a new email in Gmail (or your preferred email client).
2. In a separate note or directly in the LLM interface, jot down:
   - Prospect's name, title, company, industry.
   - 2–3 key pain points you think they face.
   - Your value proposition (1 sentence).
3. **Craft your prompt:** "Write a personalized cold email to [prospect] at [company]. Highlight [pain points]. Keep it under 150 words. Use a professional but friendly tone."
4. **Review the LLM output:** Check for accuracy (no hallucinations), tone, and relevance.
5. **Edit as needed:** Adjust for personalization, fix any errors, ensure it matches your voice.
6. Paste into email and send.

## Coaching Guidance

- **Beginner Tips:** Start by listing 3–5 bullet points of key information before asking the LLM to draft. This gives the model clear structure.
- **Common Mistakes:** Forgetting to review for accuracy. LLMs can confidently state incorrect information. Always verify claims.
- **Iteration Suggestions:** Try 2–3 variations by adjusting tone in your prompt (e.g., "formal tone", "casual tone", "urgent tone") and compare outputs.

## Example

**Input (User Prompt to LLM):**
```
Write a personalized cold email to Jane Doe, VP of Sales at Acme Corp (a SaaS company). Highlight these pain points: low win rates, long sales cycles, inconsistent follow-up. Our value prop: Ai First helps sales teams close deals faster by coaching them in real time. Keep it under 150 words. Professional but friendly tone.
```

**Output (LLM-Generated):**

> Subject: Helping Acme's sales team close faster
>
> Hi Jane,
>
> I noticed Acme has been scaling rapidly—congrats on the growth! As you scale, maintaining high win rates and short sales cycles becomes critical. Many SaaS sales leaders we work with struggle with inconsistent follow-up and coaching at scale.
>
> Ai First embeds an Ai coach directly into Salesforce and Gmail, providing real-time guidance to reps as they work. We've helped similar teams reduce time-to-close by 20% and increase win rates by 15%.
>
> Would you be open to a 15-minute call next week to explore whether this could help Acme?
>
> Best,
> [Your Name]

## Trigger Patterns

- **Signal Type:** `keyboard_idle`
- **Context:** `{ "app": "Gmail", "action": "compose_email", "idle_seconds": 30 }`
- **Confidence Threshold:** 0.80

OR

- **Signal Type:** `prompt_entered`
- **Context:** `{ "keywords": ["help", "write", "email", "prospect", "cold"] }`
- **Confidence Threshold:** 0.95

## Mappings

- **Personas:** `persona_sales_ae_speed_focused`, `persona_bdr_high_volume`, `persona_sales_manager_coaching_team`
- **Tasks (O*NET):** `task_cold_outreach` (from O*NET 41-3031.00: "Contact customers to explain products or services"), `task_prospect_research`
- **Ai Opportunities:** `ai_opp_email_drafting`, `ai_opp_personalization_at_scale`
- **Ai Skills:** `ai_skill_prompting_fundamentals`, `ai_skill_output_evaluation`
- **Ai Knowledge:** `ai_knowledge_llm_limitations`, `ai_knowledge_prompt_structure`
- **Ai Tools:** `ai_tool_llm_text_generation`
- **O*NET References (Taxonomic Only):** Occupation: 41-3031.00 (Sales Representatives, Services). Task: "Contact customers to explain products or services."
- **ESCO References (Taxonomic Only):** Occupation: http://data.europa.eu/esco/occupation/5244 (Sales Representative).
```

---

## Summary & Next Steps

This document provides a comprehensive strategy for building an occupational ontology and Ai use case mapping system for Ai First. By anchoring in O\*NET and ESCO for role/task taxonomies, then layering on proprietary Ai-focused constructs (personas, Ai opportunities, Ai skills, Ai knowledge, Ai tools, Ai use cases, Ai workflows) and behavioral intelligence, Ai First can deliver personalized, contextual coaching that drives measurable ROI.

### Immediate Next Steps

1. **Validate with stakeholders:** Review this plan with product, engineering, and early customers. Refine priorities.
2. **Provision infrastructure:** Set up PostgreSQL database on cloud provider (AWS RDS, Google Cloud SQL, etc.).
3. **Download O\*NET data:** Obtain bulk files from onetcenter.org. Begin ETL pipeline.
4. **Map 5 pilot personas:** Start with Sales AE - Speed Focused, CSM - Relationship Builder, FP&A Analyst - Detail Oriented, HRBP - Compliance Focused, Marketing Manager - Creative. Document role, function, motivations, behaviors, and top tasks.
5. **Define initial Ai taxonomies:**
   - 20–30 Ai skills (prompting, evaluation, retrieval, etc.)
   - 15–25 Ai knowledge areas (LLM behavior, safety, prompt design, etc.)
   - 10–15 Ai tools (text generation, summarization, transcription, etc.)
6. **Map 20 Ai use cases:** Draft Ai use case templates (smallest units of Ai-enabled work) for high-impact, beginner-level scenarios.
7. **Identify Ai opportunities:** For each task, map where Ai creates leverage (50–100 Ai opportunities).
8. **Design data capture:** Finalize behavioral signal taxonomy and privacy protocols.

### Long-Term Vision

Over time, Ai First's ontology will evolve from a static mapping of standard taxonomies into a dynamic, proprietary **Ai First Behavior Graph** that captures the reality of how knowledge workers use Ai. This will become a defensible moat—a dataset and intelligence layer that competitors cannot replicate.

By grounding in open standards (O\*NET, ESCO) for role/task reference while building differentiated IP on top (personas, Ai opportunities, behavioral signals, Ai use case library, Ai skill progression pathways, recommendation engine), Ai First can scale globally, serve diverse industries, and continuously improve as more users adopt the platform.

---

**Document Version:** 1.0
**Last Updated:** 2025-11-14
**Author:** Product Strategy & Ontology Team
**Status:** Planning / Pre-Implementation

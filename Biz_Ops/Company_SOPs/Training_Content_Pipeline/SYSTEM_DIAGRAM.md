# Training Content Pipeline - System Diagram

## High-Level Architecture

```mermaid
graph TB
    User[Team Member] -->|1. Finds Content| URL[Video/Article URL]
    URL -->|2. Runs Atlas Prompt| ChatGPT[ChatGPT Atlas]
    ChatGPT -->|3. Fetches & Analyzes| Content[Web Content + Transcript]
    Content -->|4. Generates| JSON[Structured JSON Metadata]
    JSON -->|5. Submits via Form| Form[Web Form]
    Form -->|6. HTTP POST| Webhook[N8n Webhook]
    Webhook -->|7. Validates| N8n[N8n Workflow]
    N8n -->|8. Creates Entry| Notion[Notion Training Library]
    N8n -->|9. If High Value| Slack[Slack Notification]
    N8n -->|10. Confirms| User

    style ChatGPT fill:#10a37f
    style N8n fill:#ea4b71
    style Notion fill:#000000,color:#ffffff
    style Slack fill:#4a154b,color:#ffffff
```

## Detailed Data Flow

```mermaid
sequenceDiagram
    participant U as Team Member
    participant C as ChatGPT Atlas
    participant F as Web Form
    participant N as N8n Workflow
    participant DB as Notion Database
    participant S as Slack

    U->>U: 1. Find valuable content
    U->>C: 2. Submit URL with prompt
    C->>C: 3. Fetch content + transcript
    C->>C: 4. Analyze relevance
    C->>C: 5. Extract metadata
    C->>C: 6. Generate key takeaways
    C->>C: 7. Categorize by role/topic
    C->>U: 8. Return JSON output
    U->>U: 9. Validate output
    U->>F: 10. Paste JSON
    F->>F: 11. Validate JSON structure
    F->>N: 12. POST to webhook
    N->>N: 13. Validate required fields
    N->>DB: 14. Create database entry
    DB->>N: 15. Return entry ID

    alt High Value Content
        N->>S: 16a. Post notification
        S->>Team: 17a. Alert in channel
    end

    N->>F: 18. Success response
    F->>U: 19. Show confirmation + link
```

## N8n Workflow Logic

```mermaid
flowchart TD
    Start[Webhook Receives JSON] --> Validate{Valid JSON?}
    Validate -->|No| ErrorResponse[Return 400 Error]
    Validate -->|Yes| CheckFields{Required Fields Present?}
    CheckFields -->|No| ErrorResponse
    CheckFields -->|Yes| CreateNotion[Create Notion Entry]
    CreateNotion --> CheckValue{Business Value = High?}
    CheckValue -->|Yes| Slack[Send Slack Notification]
    CheckValue -->|No| Success[Return Success]
    Slack --> Success
    Success --> End[Return 200 OK + Notion URL]

    style Start fill:#667eea
    style End fill:#44ff88
    style ErrorResponse fill:#ff4444
```

## Component Relationships

```mermaid
graph LR
    subgraph "Team Member Tools"
        Browser[Web Browser]
        ChatGPT[ChatGPT Plus]
    end

    subgraph "Automation Layer"
        Form[Submission Form]
        N8n[N8n Workflow]
    end

    subgraph "Data Layer"
        Notion[Training Library DB]
        Slack[Slack Workspace]
    end

    Browser --> ChatGPT
    ChatGPT --> Browser
    Browser --> Form
    Form --> N8n
    N8n --> Notion
    N8n --> Slack

    style ChatGPT fill:#10a37f
    style N8n fill:#ea4b71
    style Notion fill:#000000,color:#ffffff
    style Slack fill:#4a154b,color:#ffffff
```

## Data Schema Mapping

```mermaid
graph LR
    subgraph "Atlas JSON Output"
        A1[resource_name]
        A2[file_link]
        A3[platform]
        A4[duration_minutes]
        A5[type]
        A6[tags_category]
        A7[path]
        A8[key_takeaways]
        A9[business_value]
    end

    subgraph "Notion Database Fields"
        N1[Resource Name - title]
        N2[File/Link - url]
        N3[Platform - select]
        N4[Duration min - number]
        N5[Type - select]
        N6[Tags/Category - multi_select]
        N7[Path - multi_select]
        N8[Key Take-Aways - rich_text]
        N9[Status - select]
    end

    A1 --> N1
    A2 --> N2
    A3 --> N3
    A4 --> N4
    A5 --> N5
    A6 --> N6
    A7 --> N7
    A8 --> N8
    A9 -.->|determines notification| N9
```

## User Journey

```mermaid
journey
    title Training Content Addition Journey
    section Discovery
      Find valuable content: 5: User
      Decide to share: 4: User
    section Curation
      Open Training Library: 3: User
      Copy Atlas prompt: 5: User
      Run in ChatGPT: 4: User
      Wait for analysis: 3: User
    section Validation
      Review JSON output: 4: User
      Check key takeaways: 5: User
      Adjust if needed: 3: User
    section Submission
      Open web form: 5: User
      Paste JSON: 5: User
      Submit: 5: User
      See confirmation: 5: User
    section Impact
      Content appears in Notion: 5: Team
      High-value content shared: 4: Team
      Team discovers resource: 5: Team
```

## System Integration Overview

```
┌─────────────────────────────────────────────────────────────┐
│                     Training Content Pipeline                │
└─────────────────────────────────────────────────────────────┘
                              │
        ┌─────────────────────┼─────────────────────┐
        │                     │                     │
        ▼                     ▼                     ▼
┌───────────────┐     ┌───────────────┐    ┌───────────────┐
│   ChatGPT     │     │     N8n       │    │    Notion     │
│    Atlas      │     │  Automation   │    │   Database    │
│               │     │               │    │               │
│ • Fetch URL   │────▶│ • Webhook     │───▶│ • Training    │
│ • Analyze     │     │ • Validate    │    │   Library     │
│ • Categorize  │     │ • Transform   │    │ • Employee    │
│ • Extract     │     │ • Notify      │    │   Progress    │
└───────────────┘     └───────────────┘    │   Tracker     │
                              │             └───────────────┘
                              │                     │
                              ▼                     │
                      ┌───────────────┐            │
                      │     Slack     │◀───────────┘
                      │               │
                      │ • Alerts      │
                      │ • Updates     │
                      └───────────────┘
```

## Future Integration Paths

```mermaid
graph TB
    Pipeline[Training Content Pipeline]

    Pipeline --> Current[Current Integrations]
    Pipeline --> Phase2[Phase 2 Enhancements]
    Pipeline --> Phase3[Phase 3 Vision]

    Current --> ChatGPT[ChatGPT Atlas]
    Current --> N8n[N8n Automation]
    Current --> Notion[Notion Database]
    Current --> Slack[Slack Notifications]

    Phase2 --> Progress[Employee Progress Tracker]
    Phase2 --> UseCases[Use Case Library]
    Phase2 --> Completion[Completion Tracking]

    Phase3 --> Odoo[Odoo LMS]
    Phase3 --> AiCoach[Ai First Coach]
    Phase3 --> Analytics[Analytics Dashboard]
    Phase3 --> Chrome[Chrome Extension]

    style Pipeline fill:#667eea,color:#ffffff
    style Current fill:#44ff88
    style Phase2 fill:#ffeb3b
    style Phase3 fill:#ff9800
```

---

## Legend

**Colors in Diagrams:**
- 🟢 Green: Success states / Completed actions
- 🔵 Blue: Active processing / User actions
- 🔴 Red: Error states / Warnings
- 🟣 Purple: External services
- ⚫ Black: Data stores

**Symbols:**
- →  Direct connection
- ⇢  Data flow
- ↔  Bi-directional
- ⋯  Optional/future

---

**Version:** 1.0
**Last Updated:** 2025-11-14

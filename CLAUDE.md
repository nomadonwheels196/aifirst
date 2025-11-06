# CLAUDE.md

⚠️ **SESSION PROTOCOL:**
- **On Start:** Run `bash ~/.agents/session-open.sh $(pwd) "Claude Code"`
- **Before Finish:** If you made changes to files:
  1. Review changes: `git status` and `git diff`
  2. **Check what you're committing** - Verify no credentials, secrets, or PII are being added
  3. Commit them: `git add -A && git commit -m "Descriptive message"`
  4. Reference related spec docs in commit messages when applicable
- **On Finish:** Run `bash ~/.agents/session-close.sh $(pwd) "Claude Code" "Your summary of what you did" "n"`
  - Write a concise summary of what you accomplished
  - Set last parameter to "y" if README.md needs updating

**Scope:**
- Applies to `~/work/aifirst/` directory
- Inherits from `~/AGENTS.md` for user profile and general preferences
- See `AGENTS.md` in this directory for project-specific agent guidance

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is the **Ai First** company repository containing company specifications, business documentation, and the company website. Ai First is building a proactive AI coaching platform that embeds behavioral coaching into daily workflows to drive AI adoption and transformation.

**Location**: `~/work/aifirst/` (part of life-as-code system)
**Git Repository**: https://github.com/nomadonwheels196/aifirst (public, team-shared)

**Mission**: Turn AI investment into human capability and measurable ROI by changing the way people think and work with AI.

## Repository Structure

```
~/work/aifirst/
├── business_ops/               # Business operations documentation
│   ├── Structure Analysis/     # Business structure planning and templates
│   └── legal/                  # Legal documents and templates (SENSITIVE)
│       ├── ESOP Equity/       # Equity plans and grant agreements
│       ├── Employment/        # Employment contracts and agreements
│       ├── Governance/        # Incorporation, bylaws, shareholder agreements
│       ├── Intercompany Agreements/  # Cross-entity agreements and IP assignments
│       ├── Intercompany Tax/  # Transfer pricing and tax documentation
│       ├── Investor Relations/  # Investor-related documents
│       ├── Legal Reviews/     # Compliance audit reports
│       ├── NDAs/              # Non-disclosure agreements
│       └── Sales/             # Terms of service
├── business_spec/              # Company specifications (SOURCE OF TRUTH)
│   ├── Ai First Company Spec.md
│   ├── Ai First Framework.md
│   ├── Mission.md
│   ├── Product Strategy.md
│   └── ... (other core specs)
├── gtm/                        # Go-to-market materials
│   ├── customer_success/
│   ├── marketing/
│   │   └── ai-first-site/     # Company website (static HTML + Docker)
│   └── sales/
├── people/                     # People and HR documentation
│   └── recruiting/
│       └── job_descriptions/
├── product_management/         # Product specifications and research
│   ├── Training Content/
│   ├── competition/
│   ├── mvp/                   # MVP product spec
│   └── research/
├── platform_eng/               # Platform engineering documentation
├── product_eng/                # Product engineering documentation
├── it/                         # IT infrastructure documentation
├── .claude/                    # Claude Code agents configuration
│   └── agents/
│       ├── clarity-review.md
│       └── legal-compliance-auditor.md
├── CLAUDE.md                   # This file - Claude Code guidance
└── AGENTS.md                   # Agent-specific guidance (supplements CLAUDE.md)
```

## Core Company Specs Location

The definitive source of truth for company strategy is in `business_spec/`. Key files:
- `Ai First Company Spec.md` - Consolidated company specification
- `Mission.md` - Company mission and long-term impact
- `Product Strategy.md` - Product thesis and platform outputs
- `Ai First Framework.md` - The 6-step coaching framework (Shadow → Assess → Plan → Demonstrate → Enable → Iterate)
- `Guiding Principles.md` - Operating principles and values
- `Customers.md` - Target market and personas
- `Value Proposition.md` - Core value delivery
- `Boundaries and Gaurdrails.md` - Strategic constraints

## Website Development

### Running the Website Locally

```bash
cd ~/work/aifirst/gtm/marketing/ai-first-site
docker compose up -d
```

Access at `http://localhost:8080/`

To stop the server:
```bash
docker compose down
```

### Website Architecture

- **No build step required** - pure semantic HTML + Pico.css
- Static site with minimal dependencies
- Nginx serves files from `site/` directory via Docker
- Container name: `ai-first-web`
- Port mapping: `8080:80` (host:container)

### Website Pages

Main pages in `ai-first-site/site/`:
- `index.html` - Homepage
- `platform.html` - Platform overview
- `framework.html` - Ai First Framework details
- `customers.html` - Customer/target audience information
- `about.html` - About the company
- `contact.html` - Contact information
- `terms.html` - Terms of service
- `privacy.html` - Privacy policy
- `portal/` - Portal subdirectory
- `sales/` - Sales subdirectory

### Making Website Changes

1. Edit HTML files directly in `gtm/marketing/ai-first-site/site/`
2. Changes are immediately reflected (no rebuild needed)
3. Refresh your browser to see updates
4. Test locally with Docker before deploying

## Custom Claude Agents

This repository includes specialized agents configured in `.claude/agents/` for automated quality assurance:

### clarity-review Agent
**When to use**: After significant documentation updates, before investor meetings, or when preparing for onboarding.

**Purpose**: Performs comprehensive audit of all `.md` files to ensure:
- Internal consistency and unified terminology
- Professional formatting and structure
- Cross-document alignment
- Clear, cohesive messaging

**Output**: Generates `clarity_review_YYYY-MM-DD_HH-MM.md` report with prioritized findings

### legal-compliance-auditor Agent
**When to use**: Before executing agreements, after equity structure changes, or preparing for investment rounds.

**Purpose**: Multi-jurisdictional legal compliance review across USA, Cayman Islands, and Spain/EU:
- Founder liability protection
- IP assignment verification
- Cross-jurisdictional compliance
- GDPR and data rights

**Output**: Generates `legal_review_YYYY-MM-DD_HH-MM.md` report with risk-prioritized findings

**Note**: These agents operate on local markdown files only and maintain strict confidentiality.

## Guiding Principles for Development

1. **Servant Leadership** – Human benefit over tech for tech's sake
2. **Communication is key** – Clear communication is the foundation
3. **Guiding Principles > Processes** – Values over bureaucracy
4. **Disagree with purpose, then commit** – Openly challenge → execute together
5. **Autonomy with accountability** – Freedom to act, responsibility to deliver
6. **Own the problem** – Everyone takes responsibility at the right level
7. **We use what we build** – Ai First team runs Ai First

## Strategic Context

**Product Definition**: Ai First is a proactive AI coaching platform that runs on a user's device and guides users in real-time to use AI to improve productivity, problem solving, and creativity.

**Target Customers**: Initial focus on large enterprises (B2B) for workforce transformation, expanding to mid-market/SMB, then consumer (B2C).

**Key Personas**: CIO, COO, CHRO, CTO, AI/Innovation Leaders

**Strategic Boundaries**:
- First integrate into current workflows for maximum buy-in
- Then empower people to redefine and transform workflows with AI
- Transformation is about evolving how people think and work, not forcing tool change
- Measure real user outcomes
- Stay true to the mission of human empowerment

## Working with Specifications

All major decisions should map back to the Core Company Spec. When proposing changes or new initiatives:
1. Ensure alignment with mission and guiding principles
2. Reference relevant spec documents
3. If something conflicts with the spec, update the spec (it's a living document)
4. Include version control info: reason for change, impact, author

## Documentation Standards

- All major specs in `business_spec/` are living documents tracked in git
- Include change logs with: reason for change, impact, and author
- Legal and business documents in `business_ops/legal/` are SENSITIVE
- Use the clarity-review agent after significant documentation changes
- Use the legal-compliance-auditor agent before executing agreements or structural changes
- Commit changes regularly to the git repository (auto-synced daily at 4 AM)

## Security and Sensitive Information

**SENSITIVE DIRECTORIES** (handle with care):
- `business_ops/legal/` - Legal and business documents (employment contracts, equity plans, founder agreements, etc.)
- `business_ops/Structure Analysis/` - Business structure planning documents

**Rules for Sensitive Content**:
- Do not exfiltrate or share sensitive business/legal information
- Never commit credentials, API keys, or tokens
- Use environment variables or secure stores for secrets
- Be cautious when suggesting changes to legal or business documents

## Important Notes

- This **is a git repository** (https://github.com/nomadonwheels196/aifirst)
- Part of the life-as-code system with automated daily backup at 4 AM
- Specs are living documents tracked with git version control
- The company is **pre-MVP** (targeting MVP by end of 2025)
- Product-Market Fit target: July 1, 2026 (latest: end of 2026)
- There is also an `AGENTS.md` file that supplements this guidance with agent-specific instructions

## Multi-Agent Coordination

Multiple AI agents work on this project:
- **Claude Code** (you!) - Primary development and documentation
- **Gemini CLI** - Analysis, troubleshooting, research
- **Ollama** - Conversational support via Open WebUI
- **Codex** - Code generation and assistance

**Session scripts** (`~/.agents/session-open.sh` and `session-close.sh`):
- Prevent concurrent editing conflicts via session locking
- Maintain context through `.agents/handoff.md`
- Track changes in `.agents/changelog.md`
- Coordinate git pull/push operations

**Best Practices:**
- Always run session-open at start and session-close at end
- Check `.agents/handoff.md` for context from previous agent
- Write clear session summaries for the next agent
- Commit your work before closing the session
- Reference spec docs in commit messages when applicable

**User Profile & Preferences:**
- See `~/AGENTS.md` for complete user profile and collaboration preferences

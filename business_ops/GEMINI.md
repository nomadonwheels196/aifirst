# Ai-First Holdings Ltd. - Business, Legal, and Strategy Documents

⚠️ **SESSION PROTOCOL:**
- **On Start:** Run `bash ~/.agents/session-open.sh $(pwd) "Gemini CLI"`
- **Before Finish:** If you made changes to files:
  1. Review changes: `git status` and `git diff`
  2. **CRITICAL: Check what you're committing** - NEVER commit PII, credentials, or confidential legal details
  3. Commit them: `git add -A && git commit -m "Descriptive message"`
  4. Use conventional commits (docs:/chore:/etc)
- **On Finish:** Run `bash ~/.agents/session-close.sh $(pwd) "Gemini CLI" "Your summary of what you did" "n"`

**Scope:**
- Applies to `/Users/travis/work/aifirst/business_ops/` directory
- Inherits from `~/work/aifirst/AGENTS.md` and `~/AGENTS.md` for user profile and general preferences
- See `AGENTS.md` in this directory for detailed legal/business document guidelines

This directory serves as the central repository for all core business, legal, and strategic documents for Ai-First Holdings Ltd. and its subsidiaries. The prime directive for all documents within this repository is to build a legally resilient and founder-protective corporate structure.

## Directory Structure

The repository is organized into the following logical categories:

*   **`Governance/`**: Contains core corporate documents, including Shareholder Agreements, M&A provisions, Bylaws, Incorporation documents, Board Regulations, and Founder agreements.
*   **`Employment/`**: Holds all employment-related agreements, including contracts for different jurisdictions (US, Spain), IP assignment agreements, confidentiality agreements, SOW templates, and onboarding checklists.
*   **`Intercompany Agreements/`**: Contains agreements governing the relationships between the different legal entities of the company, including IP license and assignment agreements.
*   **`Intercompany Tax/`**: Includes documents related to the company's tax strategy, such as the Transfer Pricing Policy.
*   **`ESOP Equity/`**: Contains all documents related to the company's Employee Stock Ownership Plan (ESOP), including the plan itself, sub-plans for different jurisdictions, grant agreement templates, and related legal documents.
*   **`Investor Relations/`**: Holds documents related to investors, such as side letters.

## Key Conventions and Standards

*   **Editing:** All documents should be written in clear, business-legal English (US style).
*   **Formatting:** Headings should use `#` and `##`, bullet points with `-`, and lines should be wrapped at approximately 100-120 characters.
*   **Consistency:** It is critical to maintain consistency across all relevant documents, especially concerning:
    *   Vesting schedules (4-year/1-year cliff, monthly after cliff).
    *   IP ownership (centralized in Ai-First Holdings Ltd. - Cayman).
    *   Dual-class share structure (Class A = 1 vote, Class B = 10 votes).
    *   Founder protections (board seats, buy-sell agreements, good/bad leaver definitions).
    *   Drag-along rights (requiring supermajority and Class B consent).
    *   **409A Compliance:** US option grants must be priced at or above the Fair Market Value (FMV) established by a current, independent 409A valuation. Non-compliant grants are subject to reformation and correction to minimize adverse tax consequences.
*   **Agent Tasks:** The following commands can be used to perform common review and alignment tasks:
    *   `/review all`
    *   `/align equity`
    *   `/check ip`
    *   `/audit legal coherence`
    *   `/strengthen founder_control`

## Current Status & Outstanding TODOs

The document structure is comprehensive and addresses the key legal and tax considerations for a global startup. Several high-risk items identified in previous reviews have been addressed, including the implementation of a more flexible 409A compliance regime. However, several critical items remain outstanding and require input from legal and tax counsel before the structure can be finalized and implemented.

**Key Updates:**
*   The ESOP and US Sub-Plan have been updated to replace the "void ab initio" language for 409A non-compliance with a more flexible "reform and correct" approach.
*   New templates have been added to support Cayman Islands Economic Substance Act (ESA) compliance, including board agenda and minutes templates.

**Outstanding High-Priority Action Items:**

*   **Cayman Economic Substance:** The single most critical execution risk. The company must take concrete steps to establish genuine economic substance in the Cayman Islands.
*   **Founder Agreement Ambiguities:** The main Founder Agreement still contains conflicting and ambiguous terms regarding founder departures that must be resolved.
*   **Transfer Pricing Documentation:** The intercompany agreements must be supported by a formal, contemporaneous transfer pricing study.
*   **Intercompany Agreement Placeholders:** Consideration amounts, valuation dates, and other details in the intercompany IP assignment and license agreements must be filled in.
*   **GDPR Compliance:** The Annexes for the Standard Contractual Clauses (SCCs) must be completed, and a Transfer Impact Assessment (TIA) must be performed for all transfers of personal data from the EU to the US and Cayman Islands.

## Multi-Agent Coordination

Multiple AI agents may work on this directory:
- **Claude Code** - Primary development and documentation
- **Gemini CLI** (you!) - Analysis, troubleshooting, research
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
- Use conventional commits for legal/business document changes

**User Profile & Preferences:**
- See `~/AGENTS.md` for complete user profile and collaboration preferences
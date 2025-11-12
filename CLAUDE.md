# Agent Guidance (Ai First Project)

See centralized protocol and profile:
- ~/.agents/README.md
- ~/AGENTS.md
- ~/.meta/STYLE_GUIDE.md

Project-specific notes should live in this folder's README.md under "Current State".

---

## CRITICAL: Company Name and Capitalization Rules

**These rules are MANDATORY for all agents working in this project.**

### Company Name
- **Always use:** "Ai First" (capital A, lowercase i, capital F, no hyphen)
- **Never use:** "AI First", "Ai-First", "AiFirst", or any other variation

### Ai vs AI Capitalization

**Use "Ai" (lowercase i) when:**
- Referring to the company or product in a positive/neutral context
- Company technology: "Ai coach", "Ai adoption", "Ai initiatives", "Ai fluency", "Ai utilization"
- Positive references: "work with Ai", "Ai partnership", "Ai capability", "human-Ai productivity"
- Our philosophy: "Ai should augment human ability"

**Use "AI" (uppercase I) when:**
- Referring to challenges or legacy problems: "AI transformation" (the problem we solve), "AI training" (that doesn't work), "AI experiments" (fragmented)
- Negative industry terms: "AI noise", "AI risk", "AI chatbot" (what we won't build)
- Industry term: "shadow AI" (unauthorized usage)

### Examples

✅ **Correct:**
- "Ai First is the operating system for human-Ai productivity"
- "Most AI transformation efforts fail because they're top-down"
- "Employees are overwhelmed by AI training that doesn't stick"
- "Ai First closes the Ai competency gap"
- "shadow AI is growing faster than sanctioned adoption"

❌ **Incorrect:**
- "AI First is the operating system..." (wrong company name)
- "Ai-First approach" (wrong company name format)
- "Most Ai transformation efforts fail..." (should be "AI" for the problem)
- "AI coach" when referring to our product (should be "Ai coach")

### Why This Matters

This intentional capitalization distinguishes:
1. **Our company/solution** (Ai First, Ai coach) - lowercase "i" represents human-centered, accessible technology
2. **The industry problem** (AI transformation, AI training) - uppercase emphasizes the impersonal, failing status quo

**All documentation, code comments, commit messages, and communications must follow these rules.**

### Checking and Fixing Naming Conventions

To enforce these rules automatically:

```bash
# Check for naming convention violations (from project root)
make -C ~/.agents lint DIR=$(pwd)

# Automatically fix naming convention issues (from project root)
make -C ~/.agents fix DIR=$(pwd)
```

The linting tools will flag violations like:
- "AI First" instead of "Ai First"
- Incorrect "Ai" vs "AI" usage
- Other naming inconsistencies

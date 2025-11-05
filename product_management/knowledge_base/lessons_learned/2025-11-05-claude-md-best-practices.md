---
date: 2025-11-05
title: CLAUDE.md Organization Best Practices
category: [best-practice, context-management, tooling]
source: life-as-code-implementation
impact: high
audience: [everyone, engineering]
notion_sync: true
notion_database: product-roadmap-knowledge
status: active
---

# Lesson: CLAUDE.md Organization Best Practices

## Problem

CLAUDE.md files provide context to Claude Code when working in a directory. But what level of detail should go where?

**Questions that arise:**
- Should I put everything in root CLAUDE.md?
- When should I create subdirectory CLAUDE.md files?
- What context is too much? Too little?
- How do I balance specificity with maintainability?

**Without clear guidelines:**
- Root files become massive and unmaintainable
- Or subdirectories lack necessary context
- Claude Code gets wrong or stale information
- Team members create conflicting CLAUDE.md files

## Solution

**Hierarchical CLAUDE.md Strategy:**

### Root Level (`~/work/aifirst/CLAUDE.md`)

**Include:**
- **Repository overview** (mission, structure, key directories)
- **High-level architecture** (how major components relate)
- **Core workflows** (how to run website, how to deploy)
- **Company philosophy** (guiding principles, how we work)
- **Cross-cutting concerns** (security rules, sensitive directories)
- **Navigation** (where to find specific things)

**Example:**
```markdown
# CLAUDE.md

## Repository Overview
This is the Ai First company repository...

## Repository Structure
```
~/work/aifirst/
├── business_spec/     # Core company specs
├── product_management/ # Product specs and research
...
```

## Running the Website
`cd gtm/marketing/ai-first-site && docker compose up -d`

## Security
Treat business_ops/legal/ as sensitive...
```

### Subdirectory Level (`~/work/aifirst/business_ops/.claude/`)

**Include:**
- **Subdirectory-specific context** (what this area is for)
- **Local workflows** (how to work in this specific area)
- **Specialized agents** (agents that only apply here)
- **Local conventions** (naming, organization specific to this area)
- **References to root** (link up, don't duplicate)

**Example:**
```markdown
# business_ops/.claude/settings.local.json

Inherits from root CLAUDE.md.

## This Directory
Legal and business operations documentation.
SENSITIVE - do not exfiltrate.

## Structure
- legal/ - Legal templates and agreements
- Structure Analysis/ - Business structure planning

## Working Here
When reviewing legal docs, use legal-compliance-auditor agent.
```

### When to Create Subdirectory CLAUDE.md

Create when:
- **Specialized workflows** exist (different from root)
- **Specific agents** only apply to this area
- **Domain-specific context** is needed (e.g., legal compliance rules)
- **Team ownership** is different (different conventions)

Don't create when:
- Just organizing files (use README.md instead)
- Same workflows as root
- Would just duplicate root information

## Why It Matters

**For individuals:**
- Claude Code has right context for where you're working
- Don't need to repeatedly explain project structure
- Workflows are documented and consistent
- Less cognitive load (context is automatic)

**For teams:**
- Consistent experience across team members
- New hires onboard faster (context is baked in)
- Conventions are self-documenting
- Changes propagate properly (edit root, subdirs inherit)

**For product (Ai Coach implications):**
- Ai Coach should suggest creating CLAUDE.md when patterns emerge
- Detect when root file is getting too large (>1000 lines)
- Recommend splitting into subdirectory contexts
- Auto-generate CLAUDE.md from usage patterns

## When to Use

**Use hierarchical CLAUDE.md when:**
- Repository has distinct functional areas
- Different workflows apply in different directories
- Specialized agents or tools for specific areas
- Team grows beyond 2-3 people (conventions matter more)

**Keep it simple when:**
- Small repository (<10 top-level directories)
- Single person working
- All workflows are similar

## When NOT to Use

**Don't create CLAUDE.md for:**
- Every single subdirectory (too much maintenance)
- Temporary working directories
- Auto-generated folders
- Directories with no special context needs

**Don't duplicate:**
- Root-level information in subdirectories
- General company philosophy everywhere
- Common workflows that don't change

## Example

**Real scenario from today:**

We built a life-as-code system with:
- Root: `~/work/aifirst/CLAUDE.md` (repository overview, structure, common workflows)
- Subdirectory: `~/work/aifirst/business_ops/.claude/settings.local.json` (legal-specific context)

**Root CLAUDE.md:**
```markdown
## Repository Structure
~/work/aifirst/
├── business_ops/      # Business operations, legal
├── business_spec/     # Core company specs (SOURCE OF TRUTH)
├── examples/          # Case studies
...

## Security
Treat business_ops/legal/ as sensitive.

## Custom Agents
- case-study-extractor: Multi-audience case studies
- legal-compliance-auditor: Legal review (business_ops/)
```

**Subdirectory context (business_ops/):**
```markdown
This directory: Legal and business operations.
SENSITIVE - legal docs here.

Use legal-compliance-auditor agent for reviews.
Structure: legal/ (templates), Structure Analysis/ (planning)
```

**Result:**
- Root provides navigation and common workflows
- Subdirectory adds specialized context (legal sensitivity, specific agent)
- No duplication
- Easy to maintain

## Product Implications

**Ai Coach Feature: Context File Management**

**Detect when to suggest CLAUDE.md:**
- User repeatedly explains same context in sessions
- New subdirectory with unique workflows emerging
- Root CLAUDE.md growing very large (>1000 lines)
- Team growing (conventions becoming important)

**Auto-generate CLAUDE.md suggestions:**

```
Ai Coach: "I notice you've been working in /legal/ a lot
and repeatedly explaining the compliance requirements.

Want me to create a CLAUDE.md here with:
- Legal-specific workflows
- Sensitive data handling
- Reference to compliance agents

This will save you from re-explaining every session."
```

**Structure analysis:**
```
Ai Coach: "Your root CLAUDE.md is 1,200 lines and covers
5 different areas. Should we split it?

Suggested breakdown:
- Keep repository overview in root
- Move legal workflows to business_ops/
- Move product workflows to product_management/
- Move engineering setup to platform_eng/

I can draft these for you."
```

**Maintenance reminders:**
```
Ai Coach: "Your CLAUDE.md mentions specs/ but that
directory was renamed to business_spec/ 3 months ago.

Want me to update all CLAUDE.md references?"
```

## Best Practices

1. **Start simple** (single root CLAUDE.md)
2. **Add subdirectories only when needed** (distinct workflows emerge)
3. **Link, don't duplicate** (subdirs reference root)
4. **Keep updated** (stale context is worse than no context)
5. **Test regularly** (ask Claude Code if context makes sense)
6. **Document why, not just what** (explain decisions, not just facts)

## Common Mistakes

**Mistake 1: Over-specifying**
```markdown
# Don't do this
## File Naming
Use kebab-case for all files except CLAUDE.md which
should be uppercase and Python files which should be
snake_case unless they're tests in which case...
```

Better: Trust general conventions, document exceptions

**Mistake 2: Duplicating root info everywhere**
```markdown
# Don't do this in subdirectory CLAUDE.md
## Company Mission
[Entire mission copied from root]

## Repository Structure
[Entire structure copied from root]
```

Better: "Inherits from root CLAUDE.md. This directory focuses on..."

**Mistake 3: Letting it get stale**
```markdown
# Stale information is dangerous
## Running Tests
Use `npm test` (directory migrated to pytest 6 months ago)
```

Better: Remove section or update it. Stale is worse than missing.

## Related Lessons

- [Hybrid Context Retention](2025-11-05-hybrid-context-retention.md) - When to start fresh vs continue
- [Life as Code Philosophy](../../business_spec/Ai%20First%20Framework.md) - Why organization matters
- Case Study: [Life as Code Implementation](../../examples/case_studies/life-as-code-story.md) - Where this lesson came from

## Implementation Checklist

When creating CLAUDE.md structure:

- [ ] Start with root CLAUDE.md (repository overview)
- [ ] Document repository structure and navigation
- [ ] Add common workflows that apply everywhere
- [ ] Note security/sensitive areas
- [ ] Only create subdirectory CLAUDE.md when workflows differ
- [ ] Link subdirectories back to root (don't duplicate)
- [ ] Set up review schedule (quarterly check for staleness)
- [ ] Test with Claude Code (does it have right context?)

---

**Tags**: #context-management #documentation #best-practice #claude-code
**Last Updated**: 2025-11-05

---


# Lessons Learned Knowledge Base

This directory captures patterns, practices, and insights discovered during real implementations. These lessons inform our product roadmap and improve how we work.

## Purpose

**Lessons learned** are actionable insights that should influence what we build. They come from:
- Customer implementations
- Internal tool building
- Team workflows
- Failed experiments (what didn't work and why)

Each lesson documents:
- **Problem**: What challenge this addresses
- **Solution**: The specific approach or practice
- **Why It Matters**: Impact and implications
- **When to Use/NOT Use**: Clear application boundaries
- **Product Implications**: How this should inform Ai First platform

## Structure

```
lessons_learned/
├── _TEMPLATE.md           # Template for new lessons
├── YYYY-MM-DD-title.md    # Individual lessons
├── README.md              # This file
└── notion-sync.md         # How to sync to Notion
```

## Naming Convention

`YYYY-MM-DD-descriptive-title.md`

**Examples**:
- `2025-11-05-hybrid-context-retention.md`
- `2025-11-05-claude-md-best-practices.md`

## Creating a New Lesson

1. **Copy the template**:
   ```bash
   cp _TEMPLATE.md 2025-11-06-my-lesson-title.md
   ```

2. **Fill in YAML frontmatter**:
   - `date`: Date discovered/documented
   - `title`: Short, descriptive title
   - `category`: [workflow, best-practice, tooling, context-management, collaboration, automation]
   - `source`: Where this came from (project, customer, experiment)
   - `impact`: [high, medium, low]
   - `audience`: [everyone, engineering, product, leadership, sales]
   - `notion_sync`: true/false
   - `status`: active/deprecated/experimental

3. **Document the lesson**:
   - Problem (what challenge)
   - Solution (specific approach)
   - Why It Matters (impact)
   - When to Use (application)
   - When NOT to Use (boundaries)
   - Example (real scenario)
   - Product Implications (what we should build)

4. **Commit to git**:
   ```bash
   git add .
   git commit -m "Add lesson: [title]"
   git push
   ```

5. **Sync to Notion** (if `notion_sync: true`):
   - See [notion-sync.md](notion-sync.md)

## Current Lessons

### [Hybrid Context Retention Strategy](2025-11-05-hybrid-context-retention.md)
**Impact**: High | **Category**: workflow, context-management

When switching work contexts (building → analyzing), stay in same session but change directory. Preserves rich context while honoring proper organization.

**Product Implication**: Ai Coach should detect context switches and suggest staying vs starting fresh.

---

### [CLAUDE.md Organization Best Practices](2025-11-05-claude-md-best-practices.md)
**Impact**: High | **Category**: best-practice, context-management

Hierarchical CLAUDE.md strategy: root for repository overview, subdirectories for specialized context. Link, don't duplicate.

**Product Implication**: Ai Coach should suggest creating CLAUDE.md when patterns emerge and detect when files get too large.

---

## Categories Explained

- **workflow**: How we work (processes, sequences, patterns)
- **best-practice**: Proven approaches that work consistently
- **tooling**: How to use specific tools effectively
- **context-management**: Managing information and context
- **collaboration**: How teams work together
- **automation**: Automating repetitive tasks

## Impact Levels

- **High**: Significantly improves efficiency or enables new capabilities
- **Medium**: Noticeable improvement in specific scenarios
- **Low**: Minor optimization or nice-to-have

## Audience

- **everyone**: Applies to all roles
- **engineering**: Technical implementation details
- **product**: Product design and feature requirements
- **leadership**: Strategic or organizational insights
- **sales**: Customer-facing implications

## Syncing to Notion

Lessons marked with `notion_sync: true` should be synced to Notion for broader visibility.

**See**: [notion-sync.md](notion-sync.md) for sync process.

## Maintenance

**Quarterly review**:
- Mark outdated lessons as `status: deprecated`
- Update lessons with new insights
- Consolidate related lessons if appropriate
- Check that product implications are tracked in roadmap

**When a lesson becomes obsolete**:
- Don't delete (valuable history)
- Update status to `deprecated`
- Add note explaining why (e.g., "This practice was replaced by...")

## Related Resources

- [Product Roadmap](../../product_management/) - Where lessons inform planning
- [Case Studies](../../../examples/case_studies/) - Real implementations
- [Company Specs](../../../business_spec/) - Strategic context

---

**Questions? Ask the product team or post in #product Slack channel**

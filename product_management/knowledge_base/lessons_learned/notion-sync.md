# Syncing Lessons Learned to Notion

This document explains how to sync lessons learned from markdown files to Notion for broader team visibility.

## Why Sync to Notion?

**Git (markdown):**
- Version controlled
- Easy to edit with Claude Code
- Searchable via grep/search
- Works offline
- Developer-friendly

**Notion:**
- Discoverable by non-technical team
- Can be tagged, filtered, viewed in different formats
- Integrated with other team databases
- Comments and discussions
- Mobile-friendly

**Strategy**: Markdown is source of truth, Notion is distribution.

## Prerequisites

- Notion workspace with API access
- Notion integration created (see setup below)
- Notion database for "Product Knowledge" or "Lessons Learned"
- Notion MCP server running (optional, for Claude Code integration)

## Setup Notion Database

### 1. Create Database in Notion

Create a new database with these properties:

| Property | Type | Description |
|----------|------|-------------|
| Title | Title | Lesson title |
| Date | Date | When lesson was discovered |
| Category | Multi-select | workflow, best-practice, tooling, etc. |
| Source | Text | Where lesson came from |
| Impact | Select | High, Medium, Low |
| Audience | Multi-select | everyone, engineering, product, etc. |
| Status | Select | active, deprecated, experimental |
| Markdown File | URL | Link to GitHub markdown file |
| Last Synced | Date | When last synced from markdown |

### 2. Create Notion Integration

1. Go to https://www.notion.so/my-integrations
2. Click "New integration"
3. Name: "Ai First Lessons Sync"
4. Select your workspace
5. Capabilities: Read content, Update content, Insert content
6. Copy the "Internal Integration Token"

### 3. Share Database with Integration

1. Open your "Lessons Learned" database in Notion
2. Click "..." (top right)
3. Click "Add connections"
4. Select "Ai First Lessons Sync"

### 4. Get Database ID

From the database URL:
```
https://notion.so/workspace/DATABASE_ID?v=...
                          ^^^^^^^^^^^^
                          This part
```

## Sync Methods

### Method 1: Manual Sync (Quick Start)

**For occasional syncing:**

1. Open the markdown lesson file
2. Copy relevant sections
3. Create new page in Notion database
4. Fill in properties from YAML frontmatter
5. Paste markdown content
6. Add link to GitHub file

**Pros**: No setup required
**Cons**: Manual, time-consuming

### Method 2: Claude Code with Notion MCP

**For semi-automated syncing:**

Prerequisites:
- Notion MCP server installed (`claude mcp add notion`)
- MCP configured with your integration token

**Usage**:
```
# In Claude Code session
"Sync this lesson to Notion"

# Claude will:
# 1. Read the markdown file
# 2. Extract YAML frontmatter
# 3. Use Notion MCP to create/update page
# 4. Link to GitHub source
```

**Pros**: Easy, Claude handles mapping
**Cons**: Manual trigger each time

### Method 3: n8n Automation (Full Automation)

**For automatic syncing on commit:**

**Workflow**:
```
GitHub Webhook → n8n → Parse Markdown → Notion API
  (on commit)      ↓
                Parse YAML
                Extract content
                Create/update Notion page
```

**Setup** (in n8n):

1. **Trigger: Webhook**
   - GitHub webhook on push to `main`
   - Filter: only changes in `lessons_learned/`

2. **Node: Read File**
   - Get file content from GitHub API
   - Filter: files matching `YYYY-MM-DD-*.md`

3. **Node: Parse YAML**
   - Extract frontmatter
   - Map to Notion properties

4. **Node: Parse Markdown**
   - Convert markdown to Notion blocks
   - Handle headings, lists, code blocks

5. **Node: Notion API**
   - Check if page exists (by date + title)
   - Create or update page
   - Set all properties
   - Add content blocks

**Pros**: Fully automated
**Cons**: Initial setup required

### Method 4: Manual Script (Semi-Automated)

**For batch syncing:**

Create a script: `~/work/aifirst/product_management/knowledge_base/lessons_learned/sync-to-notion.sh`

```bash
#!/bin/bash

# Sync all lessons marked with notion_sync: true

for file in 2025-*.md; do
  if grep -q "notion_sync: true" "$file"; then
    echo "Syncing $file..."

    # Extract YAML frontmatter
    # Call Notion API
    # Create/update page

  fi
done
```

Run manually:
```bash
./sync-to-notion.sh
```

**Pros**: Batch processing, can be scheduled
**Cons**: Script maintenance

## Recommended Approach

**Start with Method 2 (Claude Code + Notion MCP):**

1. Set up Notion MCP server
2. When you create a lesson, ask Claude to sync it
3. Claude handles all the mapping

**Upgrade to Method 3 (n8n) when:**
- Team is creating many lessons
- Manual syncing becomes tedious
- Want full automation

## Sync Workflow

### Creating New Lesson

1. **Write in markdown** (source of truth)
   ```bash
   cd ~/work/aifirst/product_management/knowledge_base/lessons_learned
   cp _TEMPLATE.md 2025-11-06-my-lesson.md
   # Edit the file
   ```

2. **Set `notion_sync: true`** in frontmatter

3. **Commit to git**
   ```bash
   git add .
   git commit -m "Add lesson: My Lesson"
   git push
   ```

4. **Sync to Notion**
   ```
   # In Claude Code
   "Sync this lesson to Notion"
   ```

### Updating Existing Lesson

1. **Edit markdown file** (source of truth)

2. **Commit changes**

3. **Re-sync to Notion**
   - Claude Code: "Update this lesson in Notion"
   - Or: n8n auto-syncs on commit

4. **Notion page updates** with new content

### Handling Conflicts

**Rule**: Markdown is source of truth.

If someone edits in Notion:
1. Note the changes
2. Update markdown file
3. Re-sync (overwrites Notion)

For Notion-only fields (comments, discussions):
- Those stay in Notion
- Don't sync back to markdown

## Notion Page Format

**Generated Notion page structure:**

```
Title: [Lesson Title]

Properties:
- Date: [from YAML]
- Category: [from YAML]
- Impact: [from YAML]
- Status: [from YAML]
- Markdown File: [GitHub link]

---

[Lesson content converted from markdown]

---

Source: [Link to GitHub markdown file]
Last Synced: [timestamp]
```

## Troubleshooting

**Sync fails with authentication error:**
- Check Notion integration token is valid
- Verify database is shared with integration

**Page not updating:**
- Check if matching logic is correct (date + title)
- Try creating new page instead of updating

**Content looks wrong:**
- Verify markdown → Notion block conversion
- Some markdown features may not map perfectly

**Duplicate pages created:**
- Check matching logic (should match on date + title)
- May need to manually delete duplicates

## Future Enhancements

- [ ] Bidirectional sync (Notion → Markdown for comments)
- [ ] Automatic link detection between related lessons
- [ ] Slack notifications when new lessons added
- [ ] Dashboard showing lesson impact metrics
- [ ] Integration with product roadmap tracking

---

**Questions? Ask in #product or #engineering Slack channels**

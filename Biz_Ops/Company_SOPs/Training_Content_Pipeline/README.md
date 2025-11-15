# Training Content Pipeline SOP

## Purpose
Enable rapid, AI-assisted curation of training content for the Ai First Training Library. Transform the ad-hoc process of "I found a great video" into a repeatable, automated workflow that enriches content with metadata and ensures quality before sharing with the team.

## Problem Solved
- ❌ **Before:** Videos shared in Slack, never catalogued, forgotten after a week
- ❌ **Before:** Training Library has empty "Key Take-Aways" fields
- ❌ **Before:** No way to target content to specific roles or skill levels
- ❌ **Before:** Manual curation takes 30+ minutes per video

- ✅ **After:** Anyone can add high-quality content in < 2 minutes
- ✅ **After:** Every entry has rich metadata and actionable takeaways
- ✅ **After:** Content automatically tagged for relevant roles and categories
- ✅ **After:** AI handles 90% of curation work, humans just validate

## How It Works

```
Team Member                ChatGPT Atlas              N8n                  Notion
    |                           |                      |                     |
    |-- Find video URL          |                      |                     |
    |                           |                      |                     |
    |-- Run Atlas prompt -----> |                      |                     |
    |                           |                      |                     |
    |                           |-- Fetch content      |                     |
    |                           |-- Analyze transcript |                     |
    |                           |-- Generate metadata  |                     |
    |                           |                      |                     |
    | <---- JSON output --------|                      |                     |
    |                           |                      |                     |
    |-- Submit via form ----------------------> |      |                     |
    |                           |                      |                     |
    |                           |              Parse & validate              |
    |                           |                      |                     |
    |                           |              Create entry ----------> |    |
    |                           |                      |                     |
    |                           |              (if high value)               |
    |                           |              Post to Slack                 |
    |                           |                      |                     |
    | <-------- Success confirmation ----------|       |                     |
```

## Components

### 1. Atlas Prompt Template
- **File:** [`ATLAS_PROMPT.md`](./ATLAS_PROMPT.md)
- **Purpose:** Standardized prompt for AI-assisted content analysis
- **Features:**
  - Extracts metadata (title, duration, source, release date)
  - Analyzes transcripts and generates key takeaways
  - Categorizes by role, skill level, and topic
  - Evaluates relevance to Ai First mission
  - Outputs structured JSON for automation

### 2. N8n Automation Workflow
- **File:** [`n8n_workflow.json`](./n8n_workflow.json)
- **Purpose:** Webhook receiver that auto-creates Notion entries
- **Features:**
  - Validates required fields
  - Maps JSON to Notion database schema
  - Sends Slack notifications for high-value content
  - Returns success/error messages

### 3. Web Submission Form
- **File:** [`webhook_form.html`](./webhook_form.html)
- **Purpose:** User-friendly interface for submitting Atlas output
- **Features:**
  - Real-time JSON validation
  - Clear error messages
  - Success confirmation with Notion link
  - Mobile-responsive design

### 4. Documentation
- **Setup Guide:** [`SETUP_GUIDE.md`](./SETUP_GUIDE.md) - IT implementation (30-45 min)
- **Quick Start:** [`QUICK_START.md`](./QUICK_START.md) - Team member guide (< 2 min)
- **Notion Template:** [`NOTION_PAGE_TEMPLATE.md`](./NOTION_PAGE_TEMPLATE.md) - Ready to paste

## Implementation Status

- [ ] N8n workflow imported and configured
- [ ] Notion integration connected
- [ ] Webhook URL generated
- [ ] Web form deployed and URL updated
- [ ] Slack notifications configured (optional)
- [ ] Instruction page added to Notion
- [ ] Team announcement posted
- [ ] First test submission successful

**Setup Time:** 30-45 minutes
**Launch Target:** [Add date]

## Success Metrics

### Week 1
- [ ] 5+ team members submit content
- [ ] 10+ new high-quality entries in Training Library
- [ ] 100% of entries have Key Take-Aways filled
- [ ] Zero manual curation required

### Month 1
- [ ] 50+ entries added
- [ ] All roles represented in content
- [ ] High-value content shared to Slack weekly
- [ ] < 5 min/week maintenance time

### Quarter 1
- [ ] Training Library becomes go-to resource for onboarding
- [ ] Measurable link between training completion and capability growth
- [ ] Team reports increased Ai fluency
- [ ] Process adopted as standard for all content types

## Maintenance

### Weekly (~5 min)
- Review new submissions
- Archive duplicates or low-quality content
- Celebrate top contributors in Slack

### Monthly (~15 min)
- Analyze usage by role/category
- Update Atlas prompt based on feedback
- Review most impactful content
- Check N8n execution logs for errors

### Quarterly (~1 hour)
- Survey team on content usefulness
- Identify content gaps
- Update categorization schema if needed
- Review and optimize automation workflow

## Future Enhancements

### Phase 2 (Month 2-3)
- [ ] Auto-link to Employee Progress Tracker capabilities
- [ ] Completion tracking via Notion
- [ ] Personalized recommendations based on role/skill gaps
- [ ] Integration with Use Case Library

### Phase 3 (Month 4-6)
- [ ] AI-generated summaries for videos without transcripts
- [ ] Automatic translation to Spanish
- [ ] Chrome extension for one-click submission
- [ ] Analytics dashboard for training ROI

### Future Ideas
- [ ] Integrate with Odoo LMS for certification
- [ ] Create learning paths (beginner → advanced)
- [ ] Gamification (badges for contributions/completions)
- [ ] Become our own customer (use Ai First coach for this process)

## Ownership

**Process Owner:** People & Culture
**Technical Owner:** IT / Biz Ops
**Contributors:** All team members

**Review Cadence:** Monthly for first quarter, then quarterly

## Related SOPs

- Employee Onboarding (references Training Library)
- Employee Progress Tracker (tracks training impact)
- Meeting-to-Action (similar AI-assisted workflow pattern)

## Files in This Directory

```
Training_Content_Pipeline/
├── README.md                    # This file - overview and status
├── ATLAS_PROMPT.md             # Copy/paste ready prompt template
├── SETUP_GUIDE.md              # Complete implementation guide
├── QUICK_START.md              # User guide for team members
├── NOTION_PAGE_TEMPLATE.md     # Ready-to-paste Notion content
├── n8n_workflow.json           # Importable N8n automation
└── webhook_form.html           # Web form for submissions
```

## Support

**Questions about:**
- **Using the system:** See [`QUICK_START.md`](./QUICK_START.md)
- **Technical setup:** See [`SETUP_GUIDE.md`](./SETUP_GUIDE.md)
- **Troubleshooting:** Check guides or ask in #training-updates
- **Feature requests:** Add to Product backlog or discuss in #training-updates

---

**Version:** 1.0
**Created:** 2025-11-14
**Last Updated:** 2025-11-14
**Status:** Ready for implementation

# Training Content Pipeline - Setup Guide

## Overview
This system enables anyone on the team to quickly add valuable training content using AI-assisted curation via ChatGPT Atlas.

**Time to implement:** 30-45 minutes
**Maintenance:** < 5 minutes/week

---

## Step 1: Set Up N8n Workflow (15 min)

### 1.1 Import the Workflow

1. Open your N8n instance
2. Click **Workflows** → **Add Workflow** → **Import from File**
3. Upload `n8n_workflow.json` from this directory
4. The workflow will be named "Training Content Pipeline - Atlas to Notion"

### 1.2 Configure Notion Credentials

1. In N8n, go to **Credentials** → **Add Credential** → **Notion API**
2. Name it: `Notion API - Training Library`
3. Get your Notion integration token:
   - Go to https://www.notion.so/my-integrations
   - Click **New integration**
   - Name: `N8n Training Pipeline`
   - Select your workspace
   - Copy the **Internal Integration Token**
4. Paste the token into N8n credential
5. Save the credential

### 1.3 Grant Notion Database Access

1. Open your Training Library in Notion: https://www.notion.so/29afd07ed1c280c9a8b2f84079570a92
2. Click the **•••** menu (top right)
3. Click **Connections** → **Add Connection**
4. Select **N8n Training Pipeline** integration
5. Confirm access

### 1.4 (Optional) Configure Slack Notifications

If you want high-value content to auto-post to Slack:

1. In N8n, go to **Credentials** → **Add Credential** → **Slack API**
2. Follow the OAuth flow to connect your Slack workspace
3. In the workflow, find the "Notify Slack" node
4. Update the channel name to your desired channel (default: `#training-updates`)
5. Save

**OR skip Slack:** Delete or disable the "Notify Slack" node

### 1.5 Activate the Webhook

1. Click on the "Webhook Trigger" node
2. Click **Execute Node** → **Listen for Test Event**
3. Copy the **Production URL** (looks like: `https://your-n8n.com/webhook/training-content`)
4. Save this URL - you'll need it for the form

### 1.6 Activate the Workflow

1. Click the **Active** toggle in the top right
2. Status should show **Active**
3. Test by sending a sample JSON payload (see Testing section below)

---

## Step 2: Deploy the Web Form (10 min)

### Option A: Simple Hosting (Recommended)

Host the `webhook_form.html` file anywhere:

1. **GitHub Pages** (free, easy):
   - Create a new repo or use existing
   - Upload `webhook_form.html`
   - Enable GitHub Pages in settings
   - Access at: `https://yourusername.github.io/repo-name/webhook_form.html`

2. **Netlify Drop** (free, instant):
   - Go to https://app.netlify.com/drop
   - Drag and drop `webhook_form.html`
   - Get instant URL

3. **Internal hosting:**
   - Upload to your company's internal web server
   - Or embed in a Notion page using an iframe

### Option B: Use Notion Directly (No separate form needed)

Skip the HTML form and use a Notion template button instead:
- Add the Atlas prompt as instructions
- Users copy/paste JSON directly into a Notion page
- Use N8n's Notion trigger instead of webhook

### Update the Form URL

1. Open `webhook_form.html` in a text editor
2. Find line ~195: `const WEBHOOK_URL = 'YOUR_N8N_WEBHOOK_URL_HERE';`
3. Replace with your N8n webhook URL from Step 1.5
4. Save and re-deploy

---

## Step 3: Add Instructions to Notion (5 min)

### 3.1 Create the Instruction Page

1. Open your Training Library: https://www.notion.so/29afd07ed1c280c9a8b2f84079570a92
2. Click **New** → **New Page**
3. Title: `📋 How to Add Training Content`
4. Add the Atlas prompt template (from earlier in this conversation)
5. Add a link to your webhook form
6. Pin this page to the top of your Training Library view

### 3.2 Template Content for Notion Page

```
# 📋 How to Add Training Content

Found a great video, article, or course? Add it to our Training Library in 3 easy steps!

## Step 1: Copy the Prompt

[Copy the full Atlas prompt template here - see ATLAS_PROMPT.md]

## Step 2: Run in ChatGPT Atlas

1. Open ChatGPT with Atlas enabled
2. Paste the prompt
3. Add your content URL
4. Wait for JSON output

## Step 3: Submit to Library

[Link to your webhook form]

OR paste the JSON directly here: [Link to a Notion database if using Option B]

---

## Need Help?

- **Prompt not working?** Check that Atlas is enabled in ChatGPT settings
- **JSON validation errors?** Make sure you copied the complete JSON output
- **Form not submitting?** Contact IT or check #training-updates in Slack

## Examples of Great Content

- Practical, actionable tutorials
- Thought leadership on Ai adoption
- Tool-specific deep dives
- Behavioral change strategies
- Real-world case studies
```

---

## Step 4: Test the Full Pipeline (5 min)

### 4.1 Test JSON Payload

Use this sample to test your N8n webhook:

```json
{
  "resource_name": "Test - Building AI Agents",
  "file_link": "https://youtu.be/_Udb5NC6vTI",
  "platform": "YouTube",
  "source_organization": "AI Explained",
  "duration_minutes": 44,
  "release_date": "2024-11-15",
  "type": "Video",
  "tags_category": ["AI Literacy", "Tools"],
  "path": ["All Roles", "Tech"],
  "skill_level": "Intermediate",
  "key_takeaways": [
    "Build autonomous agents using LangGraph framework",
    "Implement tool-calling with Claude and GPT-4",
    "Deploy multi-agent systems with persistent memory"
  ],
  "relevance_to_ai_first": "Test entry - demonstrates agentic workflows",
  "problem_category": ["AI Literacy"],
  "business_value": "High",
  "created_by": "test@aifirst.com"
}
```

### 4.2 Test Steps

1. Send the JSON to your webhook URL using:
   - The web form, OR
   - curl command: `curl -X POST [YOUR_WEBHOOK_URL] -H "Content-Type: application/json" -d @test.json`
   - Or Postman/Insomnia

2. Check:
   - ✅ New entry appears in Training Library
   - ✅ All fields populated correctly
   - ✅ Slack notification sent (if enabled)
   - ✅ Web form shows success message

3. If successful, delete the test entry from Notion

### 4.3 End-to-End Test

1. Find a real video (e.g., https://youtu.be/MsQACpcuTkU)
2. Run the Atlas prompt with the URL
3. Copy the JSON output
4. Submit via the web form
5. Verify entry in Notion
6. Celebrate! 🎉

---

## Step 5: Launch to Team (5 min)

### 5.1 Announce in Slack

```
🎓 New Training Content System is Live!

Found a great video, article, or course? Now you can add it to our Training Library in under 2 minutes using AI-assisted curation.

How it works:
1. Copy the prompt from our Training Library
2. Run it in ChatGPT Atlas with your content URL
3. Submit the output

👉 Instructions: [Link to Notion page]
👉 Submit content: [Link to web form]

Questions? Ask in #training-updates
```

### 5.2 Add to Onboarding

Add a task to your Employee Onboarding database:
- **Task:** "Learn how to add training content"
- **Link:** [Your instruction page]
- **Due By:** Week 1
- **Category:** Training

---

## Maintenance

### Weekly (~5 min)
- Review new submissions in Training Library
- Verify high-value content was shared to Slack
- Archive any duplicate or low-quality entries

### Monthly (~15 min)
- Check N8n workflow execution logs for errors
- Review most popular content (by role/category)
- Update Atlas prompt if needed based on feedback

### As Needed
- Add new roles to the Path multi-select in Notion
- Add new categories to Tags/Category
- Update Slack notification template
- Adjust "high value" criteria in N8n workflow

---

## Troubleshooting

### "Webhook not found" error
- Check that N8n workflow is **Active**
- Verify webhook URL matches exactly (no extra spaces)
- Test webhook directly with curl

### "Missing required fields" error
- Ensure Atlas output includes resource_name, file_link, key_takeaways
- Check JSON is valid (use jsonlint.com)
- Verify no trailing commas or formatting issues

### Notion entry not created
- Check Notion integration has access to database
- Verify database ID matches in workflow (29afd07ed1c280c9a8b2f84079570a92)
- Check field names match exactly (case-sensitive)
- Review N8n execution logs

### Slack notification not sent
- Verify Slack credentials in N8n
- Check channel exists and bot has permission to post
- Review "Check If High Value" node logic

---

## Advanced Customizations

### Add Auto-Summarization
Use N8n's AI nodes to:
- Generate summaries if transcript_summary is missing
- Translate content to Spanish
- Create follow-up quiz questions

### Integrate with Employee Progress Tracker
- Add relation field in Training Library
- Link completed training to capability improvements
- Auto-recommend content based on skill gaps

### Create a Chrome Extension
- Build a browser extension with the form
- One-click submission from any webpage
- Auto-detect current tab URL

---

## Support

Questions or issues? Contact:
- **Technical:** IT (#it-support)
- **Content curation:** People & Culture (#training-updates)
- **Feature requests:** Add to Product backlog

---

**Version:** 1.0
**Last Updated:** 2025-11-14
**Owner:** Biz Ops / IT

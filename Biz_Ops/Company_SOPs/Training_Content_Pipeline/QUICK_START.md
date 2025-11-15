# Quick Start: Adding Training Content

## 🎯 Goal
Add a video/article to the Training Library in under 2 minutes using AI-assisted curation.

---

## ⚡ 3-Step Process

### Step 1: Copy the Prompt (10 seconds)

Open the [Training Library Instructions page](https://www.notion.so/29afd07ed1c280c9a8b2f84079570a92) and copy the Atlas prompt template.

**OR** get it here: [`ATLAS_PROMPT.md`](./ATLAS_PROMPT.md)

---

### Step 2: Run in ChatGPT Atlas (60 seconds)

1. Open [ChatGPT](https://chat.openai.com)
2. **Make sure Atlas is enabled** (you'll see the 🌐 icon)
3. Paste the prompt
4. Replace `[PASTE URL HERE]` with your video/article URL
5. Press Enter and wait ~30-60 seconds for Atlas to analyze
6. Copy the JSON output

**Example URLs to try:**
- YouTube: `https://youtu.be/VIDEO_ID`
- Blog post: Any article URL
- LinkedIn post: Post URL
- Twitter/X thread: Thread URL

---

### Step 3: Submit (30 seconds)

1. Go to the [submission form](YOUR_FORM_URL_HERE)
2. Paste the JSON output
3. Click **Submit Training Content**
4. Done! ✅

The content appears in the [Training Library](https://www.notion.so/29afd07ed1c280c9a8b2f84079570a92) immediately.

---

## 💡 Tips

**What makes good training content?**
- ✅ Practical and actionable (not just theory)
- ✅ Relevant to our work at Ai First
- ✅ Teaches a specific skill or concept
- ✅ High-quality production/writing
- ❌ Generic AI hype without substance
- ❌ Outdated information (check release date)

**How to validate Atlas output:**
- Check that key takeaways are specific and actionable
- Verify the recommended roles make sense
- Adjust business_value if needed (High/Medium/Low)
- Add any personal notes or context

**Atlas not working?**
- Make sure you're using ChatGPT Plus (required for Atlas)
- Toggle Atlas on via the 🌐 icon in the chat interface
- If it times out, try a shorter video/article first
- Some content may be behind paywalls Atlas can't access

---

## 📋 What Happens Next?

1. **Immediate:** Content appears in Training Library
2. **High-value content:** Auto-posted to #training-updates in Slack
3. **Weekly:** Content curator reviews and may add notes
4. **Monthly:** Popular content promoted in team newsletters

---

## 🆘 Troubleshooting

| Problem | Solution |
|---------|----------|
| "Atlas not enabled" | ChatGPT Plus required - contact IT if needed |
| "Invalid JSON" error | Make sure you copied the complete output from Atlas |
| "Missing fields" error | Re-run the Atlas prompt, it may have timed out |
| Form won't submit | Check your internet connection, try again |
| Content not appearing | Wait 30 seconds and refresh Notion |

---

## 🎓 Examples

### Example 1: YouTube Video

**Input URL:** `https://youtu.be/MsQACpcuTkU`

**Atlas generates:**
```json
{
  "resource_name": "Ai in the CLI",
  "type": "Video",
  "duration_minutes": 34,
  "key_takeaways": [
    "Install and configure Claude Code in your terminal",
    "Automate code reviews using CLI-based Ai agents",
    "Build custom commands for repetitive development tasks"
  ],
  "path": ["Dev", "Platform Eng", "Tech"],
  "business_value": "High"
}
```

**Result:** Instantly available in Training Library for Dev/Eng teams

---

### Example 2: Blog Article

**Input URL:** `https://www.example.com/article-about-ai-adoption`

**Atlas generates:**
```json
{
  "resource_name": "5 Proven Strategies for Enterprise AI Adoption",
  "type": "Document",
  "duration_minutes": 15,
  "key_takeaways": [
    "Start with bottom-up adoption rather than top-down mandates",
    "Measure adoption through usage metrics, not training completion",
    "Create internal champions rather than relying on consultants"
  ],
  "path": ["All Roles", "CEO", "CTO"],
  "business_value": "High"
}
```

**Result:** Shared with leadership + all team members

---

## 🚀 Pro Tips

**Save time on repeat submissions:**
- Bookmark the submission form
- Keep the Atlas prompt in a Notion template for quick access
- Create a browser bookmark with the prompt pre-filled

**Share great finds:**
- Post "Just added: [Title]" in Slack after submitting
- Tag specific people who'd benefit: "@dev-team check this out"
- Add context: "This helped me solve X problem"

**Maintain quality:**
- Don't dump everything you watch - be selective
- If you're unsure about value, rate it "Medium" or "Low"
- Better to add 1 great resource than 10 mediocre ones

---

## 📞 Questions?

- **How-to questions:** Ask in #training-updates
- **Technical issues:** Contact IT
- **Suggest improvements:** Reply to the launch announcement in Slack

---

**Version:** 1.0
**Last Updated:** 2025-11-14
**Owner:** People & Culture

# Notion Page Template - "How to Add Training Content"

**Instructions:** Copy everything below this line and paste into a new page in your Training Library.

---

# 📋 How to Add Training Content

Found a great video, article, or course? Add it to our Training Library in under 2 minutes using AI-assisted curation!

---

## ⚡ Quick Steps

### 1️⃣ Copy the Prompt (10 seconds)

Click the toggle below to reveal the Atlas prompt:

<details>
<summary><strong>🤖 Atlas Prompt Template (Click to expand)</strong></summary>

```
CONTEXT: You are helping curate training content for Ai First, a company building the operating system for human-Ai productivity. We focus on behavioral change and adoption, not just technology. Our mission is to empower people (not replace them) through context-aware Ai coaching that reshapes habits and boosts capability.

TASK: Analyze the content at this URL and extract structured metadata for our Training Library.

URL: [PASTE URL HERE]

INSTRUCTIONS:
1. Access the content and extract all available metadata
2. If it's a video with transcript, analyze the full transcript
3. If it's a blog/article, analyze the full content
4. Evaluate relevance to Ai First's mission and our team's needs

OUTPUT FORMAT (valid JSON):
{
  "resource_name": "exact title from source",
  "file_link": "the URL provided",
  "platform": "YouTube|LinkedIn|Medium|Blog|Twitter|Other",
  "source_organization": "content creator/channel/company name",
  "duration_minutes": number (estimate if reading time),
  "release_date": "YYYY-MM-DD if available",
  "type": "Video|Document|Course",
  "tags_category": ["select from: AI Literacy, Tools, Strategy, Communication, Cultural Impact"],
  "path": ["select roles: All Roles, Growth & CX, R&D, Sales, SA, AE, Dev, Security, Tech, Platform Eng, CS, CTO, COS, CEO"],
  "skill_level": "Beginner|Intermediate|Advanced",
  "key_takeaways": [
    "3-5 action-oriented bullet points",
    "Focus on WHAT someone can DO after consuming this",
    "Use format: 'Learn to...' or 'Build...' or 'Implement...'",
    "Make specific to Ai First context where applicable"
  ],
  "relevance_to_ai_first": "2-3 sentences: How does this content relate to our mission of human-Ai productivity, behavioral change, adoption, and coaching?",
  "problem_category": ["select from: Time Management, Code Quality, Customer Communication, Data Analysis, Strategic Planning, AI Literacy, Team Collaboration, Innovation"],
  "business_value": "High|Medium|Low - based on applicability to our product development, internal operations, or customer success",
  "transcript_outline": "if video/podcast: create a timestamped outline of major sections (optional but helpful)",
  "suggested_notes_template": "create 3-5 section headers someone could use to take notes while watching/reading (optional)",
  "recommended_followup": ["suggest 1-3 related topics/searches that would complement this content"]
}

EVALUATION CRITERIA for relevance:
- Does it help people work better with Ai tools?
- Does it teach behavioral change or adoption strategies?
- Does it provide practical, actionable insights (not just theory)?
- Is it relevant to building an Ai coaching product?
- Does it help with human-Ai collaboration workflows?

QUALITY STANDARDS for key_takeaways:
✅ GOOD: "Build a custom Ai agent using LangGraph in under 30 minutes"
✅ GOOD: "Reduce prompt costs by 40% using Claude's prompt caching feature"
✅ GOOD: "Design conversation flows that drive user adoption through behavioral nudges"
❌ BAD: "Introduction to Ai agents"
❌ BAD: "Learn about prompt engineering"
❌ BAD: "Understanding Claude"

Return ONLY the JSON output, no additional commentary.
```

</details>

---

### 2️⃣ Run in ChatGPT Atlas (60 seconds)

1. Open [ChatGPT](https://chat.openai.com) (ChatGPT Plus required)
2. **Enable Atlas** (click the 🌐 icon if not already on)
3. Paste the prompt
4. Replace `[PASTE URL HERE]` with your video/article URL
5. Wait ~30-60 seconds for analysis
6. Copy the JSON output

---

### 3️⃣ Submit (30 seconds)

**Option A: Use the Web Form** ⭐ Recommended
1. Go to [Submission Form](YOUR_FORM_URL_HERE)
2. Paste the JSON
3. Click Submit
4. Done! ✅

**Option B: Manual Entry**
Paste the JSON into a comment on this page and tag @IT to process manually

---

## 💡 What Makes Good Training Content?

**✅ Add this:**
- Practical tutorials and how-tos
- Real-world examples and case studies
- Behavioral change strategies
- Tool-specific deep dives
- Thought leadership on Ai adoption

**❌ Skip this:**
- Generic AI hype without substance
- Outdated information (check dates!)
- Theoretical content without application
- Poor quality production/writing
- Content behind paywalls (Atlas can't access)

---

## 📊 Recent Additions

[Linked Database View: Filter by "Last Edited" = "Past Week", sorted by Created Time]

---

## 🏆 Top Contributors This Month

[Mention contributors who added 3+ high-value resources]

---

## 🆘 Troubleshooting

| Issue | Solution |
|-------|----------|
| "Atlas not available" | ChatGPT Plus required - contact IT if you need access |
| "Can't access URL" | Some content is paywalled; try a different source |
| "Invalid JSON" error | Make sure you copied the complete output |
| "Missing fields" error | Re-run Atlas prompt; it may have timed out |
| Form won't submit | Check internet, refresh page, try again |

---

## 🎓 Example: What Good Output Looks Like

**Input URL:** `https://youtu.be/MsQACpcuTkU`

**Atlas Output:**
```json
{
  "resource_name": "Ai in the CLI",
  "file_link": "https://youtu.be/MsQACpcuTkU",
  "platform": "YouTube",
  "duration_minutes": 34,
  "type": "Video",
  "tags_category": ["Tools", "AI Literacy"],
  "path": ["Dev", "Platform Eng", "Tech"],
  "skill_level": "Intermediate",
  "key_takeaways": [
    "Install and configure Claude Code for terminal-based development",
    "Automate code reviews using CLI-based Ai agents",
    "Build custom commands for repetitive development tasks"
  ],
  "business_value": "High"
}
```

**Result:** Instantly added to library, tagged for Dev/Eng teams ✅

---

## 📞 Need Help?

- **How-to questions:** Ask in #training-updates
- **Technical issues:** Tag @IT in Slack
- **Suggest improvements:** Comment on this page

---

## 🚀 Pro Tips

**Save time:**
- Bookmark the submission form
- Save the prompt as a Notion template
- Share great finds in Slack: "Just added: [Title] - check it out!"

**Maintain quality:**
- Be selective - one great resource > ten mediocre ones
- Validate Atlas suggestions (key takeaways especially)
- Rate honestly (High/Medium/Low business value)

**Maximize impact:**
- Tag relevant people when you add content: "@dev-team this is gold"
- Add context: "This helped me solve X problem"
- Follow up: "Who watched this? Let's discuss in standup"

---

**Last Updated:** 2025-11-14
**Questions?** Ask in #training-updates


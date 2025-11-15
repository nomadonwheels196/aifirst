# Atlas Prompt Template - Training Content Curation

**Purpose:** Analyze videos/articles and generate structured metadata for the Training Library

**Version:** ChatGPT Atlas (for batch processing multiple URLs)
**Alternative:** See `ATLAS_PROMPT_BROWSER.md` for Ask GPT browser extension version

**How to use:**
1. Copy everything below the divider line
2. Open ChatGPT with Atlas enabled
3. Paste the prompt
4. Replace `[PASTE URL HERE]` with your content URL
5. Wait for JSON output
6. Submit via the [web form](YOUR_FORM_URL_HERE)

**When to use this version:**
- Processing multiple videos/articles at once
- Content you haven't opened yet
- Batch curation sessions

**When to use Browser version:**
- Already on the page with Ask GPT
- One-off discoveries while browsing
- Faster workflow (no URL copy/paste)

---

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
  "duration_minutes": number (round to nearest whole number; estimate if reading time),
  "release_date": "YYYY-MM-DD if available",
  "type": "Video|Document|Course",
  "tags_category": ["select 2-3 most relevant from: AI Literacy, Tools, Strategy, Communication, Cultural Impact"],
  "path": ["select specific roles that benefit most from: All Roles, Growth & CX, R&D, Sales, SA, AE, Dev, Security, Tech, Platform Eng, CS, CTO, COS, CEO"],
  "skill_level": "Beginner|Intermediate|Advanced",
  "key_takeaways": [
    "3-5 action-oriented bullet points",
    "Focus on WHAT someone can DO after consuming this",
    "Use format: 'Learn to...' or 'Build...' or 'Implement...'",
    "Make specific to Ai First context where applicable"
  ],
  "relevance_to_ai_first": "2-3 sentences: How does this content relate to our mission of human-Ai productivity, behavioral change, adoption, and coaching?",
  "problem_category": ["select 2-4 from: Time Management, Code Quality, Customer Communication, Data Analysis, Strategic Planning, AI Literacy, Team Collaboration, Innovation"],
  "business_value": "High|Medium|Low - based on applicability to our product development, internal operations, or customer success",
  "transcript_outline": "if video/podcast: create a timestamped outline of major sections (optional but helpful)",
  "suggested_notes_template": "create 3-5 section headers someone could use to take notes while watching/reading (optional)",
  "recommended_followup": ["suggest 1-3 related topics/searches that would complement this content"]
}

CATEGORIZATION GUIDELINES:
- tags_category: Select 2-3 most relevant (avoid selecting more than 3 unless truly multidisciplinary)
- path: Select specific roles that would benefit most
  - Use "All Roles" only for fundamental/universal content (especially beginner-level)
  - For intermediate/advanced content, be more selective with roles
- problem_category: Select 2-4 categories that this content directly addresses

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
✅ GOOD: "Implement reliability practices—evals, testing, guardrails—so AI features become trusted tools"
❌ BAD: "Introduction to Ai agents"
❌ BAD: "Learn about prompt engineering"
❌ BAD: "Understanding Claude"

Return ONLY the JSON output, no additional commentary.
```

---

## Pro Tips

**For best results:**
- Use with ChatGPT Plus (Atlas requires Plus subscription)
- Wait 30-60 seconds for Atlas to fetch and analyze content
- If Atlas times out, try again or use a shorter video
- Validate the output before submitting (check key takeaways especially)

**Common issues:**
- **"I can't access that URL"** - Some content is paywalled; Atlas can only access public content
- **Incomplete output** - Re-run the prompt; Atlas may have hit rate limits
- **Wrong categorization** - You can manually adjust the JSON before submitting

**Time estimates:**
- Videos: Actual duration
- Articles: ~200 words per minute reading time
- Courses: Sum of all module durations

---

**Version:** 1.0
**Last Updated:** 2025-11-14

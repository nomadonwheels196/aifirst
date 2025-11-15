# Atlas Prompt Template - Browser Version (for Ask GPT)

**Purpose:** Analyze the current page (video/article) and generate structured metadata for the Training Library

**How to use:**
1. Navigate to the video or article page
2. Open Ask GPT (browser extension)
3. Copy and paste the prompt below
4. Wait for JSON output
5. Submit via the [web form](YOUR_FORM_URL_HERE)

---

```
CONTEXT: You are helping curate training content for Ai First, a company building the operating system for human-Ai productivity. We focus on behavioral change and adoption, not just technology. Our mission is to empower people (not replace them) through context-aware Ai coaching that reshapes habits and boosts capability.

TASK: Analyze the content on this page and extract structured metadata for our Training Library.

INSTRUCTIONS:
1. Access the content on this page and extract all available metadata
2. If it's a video with transcript, analyze the full transcript
3. If it's a blog/article, analyze the full content
4. Evaluate relevance to Ai First's mission and our team's needs

OUTPUT FORMAT (valid JSON):
{
  "resource_name": "exact title from source",
  "file_link": "the URL of this page",
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

## Pro Tips for Browser Version

**Before running the prompt:**
- Make sure you're on the actual video/article page (not a search results page)
- For YouTube: wait for the page to fully load
- For paywalled content: Ask GPT can only access what's publicly visible

**After getting output:**
- Quickly scan the key takeaways - do they make sense?
- Verify the duration if it's a video (should match YouTube timestamp)
- Check that the URL was captured correctly
- Validate business_value rating (High/Medium/Low)

**Common issues:**
- **"I can't access the page"** - Refresh and try again, or the page might be private
- **Incomplete transcript** - Some videos don't have transcripts; Ask GPT will note this
- **Wrong categorization** - You can manually adjust the JSON before submitting

---

## What's Different from ChatGPT Atlas Version

| Feature | ChatGPT Atlas | Ask GPT Browser |
|---------|--------------|-----------------|
| **URL input** | Manual paste | Auto-detected |
| **Page access** | Fetches externally | Already on page |
| **Speed** | 30-60 seconds | 15-30 seconds |
| **Reliability** | High | High |
| **Best for** | Bulk processing | One-off discoveries |

---

**Version:** 1.1 (Browser-optimized)
**Last Updated:** 2025-11-14
**Use this when:** Using Ask GPT browser extension
**Use Atlas version when:** Batch processing multiple URLs

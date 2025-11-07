# Product Use Case: AI Coach for Document Organization

**Status**: Real-world validated (Travis's life-as-code implementation)
**Priority**: High - Demonstrates core AI First value prop
**Product Area**: Proactive AI Coaching, Personal Productivity
**Last Updated**: November 5, 2025

---

## Executive Summary

This use case documents a real implementation where an AI coach identified a user's document organization problem and guided them through a comprehensive solution. **This is what our product should do automatically.**

**Full Story**: [Life as Code: My Story of Partnership with AI](../../examples/case_studies/life-as-code-story.md)

---

## The Problem Pattern to Detect

### Observable Behaviors (What AI Coach Should Monitor)

1. **Repeated file searches**
   - User searches for same keywords multiple times (e.g., "receipt", "contract", "manual")
   - Search queries contain time references ("2024 taxes", "last month receipt")
   - User opens multiple folders/locations to find files

2. **Download folder dwelling**
   - Files sit in Downloads for >7 days
   - User frequently opens Downloads to find recent files
   - Screenshots/receipts accumulating

3. **Naming inconsistency**
   - Files with generic names ("document.pdf", "image.jpg", "Untitled.doc")
   - No consistent date format in filenames
   - Missing metadata/context in filenames

4. **Backup anxiety indicators**
   - Manually copying files to external drives
   - Multiple versions of same file ("final v2", "final final", "final ACTUAL")
   - Opening backup drive to verify files exist

5. **Context switching for organization**
   - Stopping main work to file documents
   - Visible hesitation on where to save files (multiple save dialogs opened)
   - Creating folders in the moment while saving

### Risk Factors (Higher Priority Users)

- Users with ADHD/executive function challenges (mentioned in profile or detected via patterns)
- Users managing multiple contexts (work/personal, multiple projects)
- Users with compliance requirements (taxes, legal, medical)
- Users with large media libraries (photos, videos)

### When NOT to Intervene

- User has recent, consistent file organization activity
- User already uses cloud organization tools effectively (Notion, Dropbox with structure)
- First week of employment (wait for patterns to emerge)
- User explicitly dismissed previous organization suggestions

---

## The Intervention Flow

### Phase 1: Detection & Validation (Passive → Active)

**Trigger Confidence Threshold**: 3+ signals within 2 weeks

**AI Coach Internal Check**:
```
IF (repeated_searches > 5 AND downloads_dwelling > 10 files)
   OR (backup_anxiety_indicators >= 2)
   OR (user_profile.adhd == true AND file_friction_detected)
THEN escalate_to_coach_intervention
```

**Initial Outreach** (Non-intrusive):
> "I noticed you've been searching for receipts and documents frequently. Would it help if I suggested a better organization system?"

**User Response Handling**:
- "Yes" → Proceed to Phase 2
- "Not now" → Snooze for 2 weeks, track continued friction
- "No" → Mark user preference, don't suggest again for 6 months

### Phase 2: Discovery (Socratic Dialogue)

**Goal**: Understand user's context, constraints, and preferences

**Example Dialogue Flow**:

1. **Understand the pain**
   - "What's been most frustrating about finding files?"
   - "What usually happens when you need something for taxes or a meeting?"

2. **Assess current state**
   - "Do you have any organization system now?"
   - "What have you tried before?"

3. **Identify constraints**
   - "Do you use any specific apps or workflows I should know about?"
   - "Are there any challenges that make organizing difficult?" (listen for: ADHD, time constraints, technical skill level)

4. **Set expectations**
   - "Would you like me to help you build a complete system, or just give you quick wins?"

**Critical: Detect constraint signals**
- Time poverty → Quick wins first, incremental approach
- ADHD/executive function → Automation-heavy, inbox-first, minimal maintenance
- Technical anxiety → Simpler solutions, avoid command line unless necessary
- Perfectionism → Emphasize "good enough to start, iterate later"

### Phase 3: Co-Design the Solution

**Template Categories** (AI Coach should have pre-built patterns):

1. **Life-as-Code System** (Developer/Technical Users)
   - Git-based version control
   - Automated backups
   - Command-line friendly
   - Technical documentation
   - Example: Travis's implementation

2. **Cloud-First System** (Cloud-Native Users)
   - Notion/Obsidian structure
   - Cloud sync (iCloud, Dropbox, OneDrive)
   - Mobile-friendly
   - Web-based tools
   - Example: TODO - build this

3. **Hybrid System** (Most Users)
   - Local folders with cloud backup
   - Automated sorting (Hazel, n8n)
   - Simple naming conventions
   - Tag-based organization
   - Example: TODO - build this

**Key Design Decisions** (AI Coach Must Ask):

1. **Migration strategy**
   - Big bang (move everything now) vs. Incremental (structure first, migrate as needed)
   - For ADHD users: **Always recommend incremental**

2. **Backup strategy**
   - Cloud only, local only, or hybrid
   - Automated vs. manual
   - Frequency (real-time, daily, weekly)

3. **Naming convention**
   - Date format (YYYY-MM-DD, MM-DD-YYYY, natural language)
   - Tagging strategy ([tag] vs #hashtag vs folders)
   - User's willingness to rename existing files

4. **Automation level**
   - Fully automated (AI/scripts handle everything)
   - Semi-automated (AI suggests, user confirms)
   - Manual with structure (just folders, user does the filing)

### Phase 4: Implementation (AI Does the Heavy Lifting)

**What AI Coach Builds**:

1. **Folder structure** tailored to user's contexts
   - Work vs. personal
   - Project categories
   - Archive strategy
   - Inbox for unsorted items

2. **Automation scripts**
   - Backup automation (git, rsync, cloud sync)
   - Receipt/document processing
   - Duplicate detection
   - Inbox processing reminders

3. **Documentation**
   - System overview README.md
   - Quick reference guide
   - Troubleshooting guide
   - Examples

4. **Testing**
   - Verify all automations work
   - Test backup and restore
   - Validate cross-platform compatibility if needed

**Critical: Comprehensive Follow-through**

When user says "move the system folder," AI must:
- Move the folder
- Update all path references
- Update configuration files
- Reload affected services
- Update documentation
- Verify everything works
- **Do NOT ask user to verify each step**

This is the standard. Humans shouldn't have to remember implementation details.

### Phase 5: Handoff & Iteration

**Immediate Handoff**:
- Tour of the new system
- Quick reference card
- "Try it for a week" challenge

**Check-in Schedule**:
- Day 1: "How's the new system feeling?"
- Week 1: "Any friction points? Want to adjust anything?"
- Month 1: "Ready to optimize? I noticed you're using X a lot"
- Quarter 1: "System health check"

**Iteration Triggers** (AI Coach monitors):
- User bypassing the system (saving to Desktop instead of inbox)
- Inbox growing without processing
- Searching for files that should be organized
- Manual backup behavior reappearing

---

## Success Metrics

### User-Reported (Survey after 1 month)

- Time saved per week finding documents
- Stress reduction (1-10 scale)
- System usage frequency (daily/weekly/monthly)
- Would recommend to colleague (NPS)

### AI-Detected (Behavioral)

- Reduction in repeated searches (target: 80% decrease)
- Reduction in download folder size (target: <10 files average)
- Backup consistency (automated backups happening)
- File naming consistency (target: 90% follow convention after 1 month)
- System adoption (% of new files going to correct locations)

### Business Impact

- Retention: Users with organization systems have X% better retention
- Expansion: Users solving personal problems more likely to advocate for enterprise
- Differentiation: "AI Coach organized my life" is powerful word-of-mouth

---

## Product Requirements

### Must Have (MVP)

1. **Pattern Detection Engine**
   - Monitor file search frequency
   - Track download folder state
   - Detect backup behaviors
   - Aggregate confidence score for intervention

2. **Intervention System**
   - Non-intrusive notification
   - Respect user preferences (snooze, dismiss permanently)
   - Socratic dialogue flow
   - Context gathering

3. **Template Library**
   - At least 2 pre-built systems (life-as-code + simple folder structure)
   - Customizable based on user responses
   - Cross-platform support (Mac, Windows, Linux)

4. **Automation Builder**
   - Generate folder structures
   - Create backup scripts (platform-specific)
   - Generate documentation
   - Test and verify

5. **Follow-up System**
   - Scheduled check-ins
   - Usage monitoring
   - Iteration suggestions

### Nice to Have (Post-MVP)

1. **AI Receipt Processing**
   - OCR + categorization
   - Auto-filing with tags
   - Tax-deductible detection
   - Integration with photo libraries

2. **Multi-Device Sync**
   - Mobile app integration
   - Voice note filing ("Hey AI Coach, file this receipt under health")
   - Cross-device consistency

3. **Team/Family Mode**
   - Shared organization systems
   - Permission management
   - Collaborative inbox processing

4. **Analytics Dashboard**
   - Personal productivity metrics
   - Time saved estimates
   - System health monitoring

---

## Technical Considerations

### Privacy & Security

- **All analysis happens locally** (no file contents sent to cloud)
- **User owns all data** (system generates local files, not cloud-locked)
- **Encryption for sensitive folders** (medical, finance, legal)
- **Audit log** of all AI actions

### Platform Support

- **macOS**: launchd, rsync, AppleScript automation
- **Windows**: Task Scheduler, PowerShell, robocopy
- **Linux**: cron, rsync, systemd
- **Cross-platform**: Git, Python scripts, Docker

### Integration Points

- **File system monitors**: FSEvents (Mac), inotify (Linux), FileSystemWatcher (Windows)
- **Cloud services**: iCloud, Dropbox, OneDrive, Google Drive APIs
- **Backup services**: Time Machine, Backblaze, Arq
- **Productivity tools**: Notion API, Obsidian, Roam

---

## Risks & Mitigations

### Risk: User overwhelm from too much change

**Mitigation**: Always offer incremental approach. Start with inbox, add automation later.

### Risk: Automation failures breaking user workflows

**Mitigation**: Comprehensive testing. Dry-run mode. Easy rollback. Clear error messages.

### Risk: User abandonment after initial setup

**Mitigation**: Regular check-ins. Proactive friction detection. Celebration of wins ("You've saved 5 hours this month!").

### Risk: One-size-fits-all solutions

**Mitigation**: Multiple templates. Customization questions. Learn from user behavior and adapt.

---

## Competitive Analysis

**Current Solutions**:
- Hazel (Mac automation) - Requires user to write rules
- Notion - Requires user to build structure
- Google Drive - Just folders, no intelligence
- DEVONthink - Complex, steep learning curve

**Our Differentiation**:
- **Proactive detection** (we notice the problem)
- **Guided implementation** (we don't just suggest, we build)
- **Comprehensive follow-through** (we update everything, not just one thing)
- **Continuous iteration** (we monitor and improve)

---

## Next Steps for Product Team

1. **Review full case study**: [Life as Code story](../../examples/case_studies/life-as-code-story.md)
2. **Prototype detection logic**: Build signal detection for file friction
3. **Design intervention UI/UX**: How should AI Coach initiate the conversation?
4. **Build template library**: Create 3 starter templates (technical, simple, hybrid)
5. **Test with beta users**: Find 10 users with organization problems, run the intervention
6. **Measure & iterate**: Track success metrics, improve templates

---

## Questions for Product Review

1. Should this be a core feature or optional module?
2. How do we balance proactivity with not being annoying?
3. What's the right confidence threshold for intervention?
4. Should we charge extra for this feature or include in base platform?
5. How do we handle users who want AI to do EVERYTHING vs. users who want guidance only?

---

**Owner**: Product Management
**Contributors**: Travis (founder, user), Engineering (implementation), UX (intervention design)
**Status**: Validated with real implementation, ready for product design**

---

## Related Documents

- **Full Story**: [Life as Code: My Story of Partnership with AI](../../examples/case_studies/life-as-code-story.md)
- **Onboarding Version**: [Case Study for New Hires](../../people/onboarding/case-study-life-as-code.md)
- **Sales Version**: [Customer Case Study](../../gtm/sales/case_studies/life-as-code-customer-story.md)
- **MVP Product Spec**: [MVP Product Spec](../mvp/mvp_product_spec.md) (cross-reference to this use case)

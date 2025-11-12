#!/usr/bin/env python3
import os
import re
from datetime import datetime
from pathlib import Path


TEMPLATE_CONTRIB = (
    "## Contributing\n"
    "- For authors (human or AI) creating or updating this folder: keep this README.md concise and actionable.\n"
    "- Use `Biz_Ops/IT/scripts/new_dir.sh` to scaffold new areas when appropriate.\n"
    "- Link changes to any relevant spec (top-level or local), not only `business_spec/*`. If a spec governs or informs this folder, reference it explicitly.\n"
    "- Avoid duplicating content that exists in parent README.md; link instead.\n"
)


SECTION_ORDER = [
    "Purpose",
    "Current State",
    "Context & Inheritance",
    "Scope",
    "Inputs",
    "Outputs",
    "Primary Owner",
    "Contributors",
    "Security & Privacy",
    "Related",
    "Operational Notes",
    "Change Log",
    "Contributing",
]


def read_text(path: Path) -> str:
    try:
        return path.read_text(encoding="utf-8")
    except Exception:
        return ""


def parse_sections(md: str):
    lines = md.splitlines()
    h1_title = None
    sections = {}
    cur = None
    buf = []
    for line in lines:
        if line.startswith("# "):
            # Flush previous section
            if cur is not None:
                sections[cur] = "\n".join(buf).strip()
                buf = []
            if h1_title is None:
                h1_title = line[2:].strip()
            else:
                # treat additional H1 as H2 content
                cur = line[2:].strip()
        elif line.startswith("## "):
            if cur is not None:
                sections[cur] = "\n".join(buf).strip()
            cur = line[3:].strip()
            buf = []
        else:
            buf.append(line)
    if cur is not None:
        sections[cur] = "\n".join(buf).strip()
    preface = "".join([])
    return h1_title, sections


def first_paragraph(md: str) -> str:
    # remove headings
    body = re.sub(r"^#.*$", "", md, flags=re.MULTILINE)
    body = re.sub(r"^##.*$", "", body, flags=re.MULTILINE)
    for para in body.split("\n\n"):
        text = para.strip()
        if text:
            return text
    return ""


def gather_links(md: str):
    pattern = re.compile(r"\[([^\]]+)\]\(([^)]+)\)")
    links = []
    for m in pattern.finditer(md):
        links.append((m.group(1), m.group(2)))
    return links


def collect_ancestors_with_README.md(dir_path: Path):
    ancestors = []
    cur = dir_path
    while True:
        parent = cur.parent
        if parent == cur:
            break
        README.md = parent / "README.md"
        if README.md.exists():
            ancestors.append(README.md)
        cur = parent
    return ancestors


def map_existing_to_sections(dir_path: Path, original: str):
    title, sections = parse_sections(original)
    now = datetime.now().strftime("%Y-%m-%d")

    # Determine title
    if not title or title.lower().strip() in {"README.md", "README.md"}:
        title = dir_path.name.replace("_", " ").replace("-", " ")
        title = title[:1].upper() + title[1:]

    # Purpose
    purpose = sections.get("Purpose")
    if not purpose:
        para = first_paragraph(original)
        if para:
            purpose = para
        else:
            purpose = f"Contextual README.md for `{dir_path}` — describes purpose and boundaries."

    # Current State
    current_state = (
        f"- Last Updated: {now}\n"
        f"- Status: active\n"
        f"- Last Agent/Owner: <role or agent>"
    )

    # Context & Inheritance
    ctx_lines = [
        "- Inherits scope and principles from parent `../README.md` and root `README.md`.",
        "- Agent guidance: `AGENTS.md` and `~/.agents/README.md`.",
    ]
    # Add explicit ancestor links if present
    ancestors = collect_ancestors_with_README.md(dir_path)
    if ancestors:
        ctx_lines.append("- Ancestors with README.md:")
        base = dir_path
        for r in ancestors:
            rel = os.path.relpath(r, start=base)
            ctx_lines.append(f"  - [{rel}]({rel})")
    context_inheritance = "\n".join(ctx_lines)

    # Scope
    scope = sections.get("Scope") or sections.get("Structure") or sections.get("Directory Structure") or sections.get("Subfolders") or "<What belongs here vs elsewhere>"

    # Inputs, Outputs
    inputs = sections.get("Inputs") or "<List specs, upstream processes, systems>"
    outputs = sections.get("Outputs") or sections.get("How to Use These Examples") or "<Artifacts produced: docs, templates, runbooks>"

    # Owners mapping
    primary_owner = sections.get("Primary Owner") or sections.get("Owners") or "- Role: <Primary>\n- Review cadence: monthly/quarterly\n- Approval: when changes require legal/security review"
    contributors = sections.get("Contributors") or "- Roles/Teams: <list>\n- Change process: <PR/review path>"

    # Security & Privacy
    sec = sections.get("Security & Privacy") or sections.get("Security") or ""
    security_privacy = (
        "- Clearly mark any folders or documents that contain PII or sensitive data so appropriate controls can be applied.\n"
        "- Never commit credentials or tokens; use environment variables or secure stores.\n"
        "- See repo `AGENTS.md` and `~/.agents/README.md`."
    )
    if sec:
        security_privacy = security_privacy + "\n\n" + sec.strip()

    # Related: gather existing links + sections named Quick Links / Related Resources
    related_section = sections.get("Related") or sections.get("Related Resources") or sections.get("Quick Links") or ""
    links = gather_links(original)
    related_lines = []
    if related_section:
        related_lines.append(related_section.strip())
    if links:
        # deduplicate by URL
        seen = set()
        for text, url in links:
            key = (text.strip(), url.strip())
            if key in seen:
                continue
            seen.add(key)
            related_lines.append(f"- [{text}]({url})")
    related = "\n".join(related_lines) if related_lines else "- Specs: <path>\n- Policies: <path>\n- Teams: <roles/channels>\n- Runbooks/Docs: <links>"

    # Operational Notes: include usage/getting started/content
    op_notes = (
        sections.get("Operational Notes")
        or sections.get("Getting Started")
        or sections.get("How to Use")
        or sections.get("How to Use These Examples")
        or sections.get("Run with Docker")
        or sections.get("Customize")
        or sections.get("System Information")
        or "<Runbooks, SLAs, calendars>"
    )

    # Change Log
    change_log = sections.get("Change Log") or "See PR history or local `CHANGELOG.md`."

    # Contributing
    contrib = TEMPLATE_CONTRIB.strip()

    # Uncategorized content: anything not consumed
    consumed = {"Purpose", "Scope", "Inputs", "Outputs", "Primary Owner", "Owners", "Contributors",
                "Security & Privacy", "Security", "Related", "Related Resources", "Quick Links",
                "Operational Notes", "Getting Started", "How to Use", "How to Use These Examples",
                "Run with Docker", "Customize", "System Information", "Change Log", "Current State",
                "Context & Inheritance", "Directory Structure", "Structure", "Subfolders"}
    uncategorized_chunks = []
    for name, content in sections.items():
        if name not in consumed and content.strip():
            uncategorized_chunks.append(f"### {name}\n\n{content.strip()}")
    uncategorized = "\n\n".join(uncategorized_chunks)

    # Render
    parts = []
    parts.append(f"# {title}")
    parts.append("\n## Purpose\n" + purpose.strip())
    parts.append("\n## Current State\n" + current_state)
    parts.append("\n## Context & Inheritance\n" + context_inheritance)
    parts.append("\n## Scope\n" + scope.strip())
    parts.append("\n## Inputs\n" + inputs.strip())
    parts.append("\n## Outputs\n" + outputs.strip())
    parts.append("\n## Primary Owner\n" + primary_owner.strip())
    parts.append("\n## Contributors\n" + contributors.strip())
    parts.append("\n## Security & Privacy\n" + security_privacy.strip())
    parts.append("\n## Related\n" + related.strip())
    parts.append("\n## Operational Notes\n" + op_notes.strip())
    parts.append("\n## Change Log\n" + change_log.strip())
    parts.append("\n" + contrib)
    if uncategorized:
        parts.append("\n## Uncategorized (migrated content)\n" + uncategorized)

    return "\n\n".join(parts).rstrip() + "\n"


def should_skip_dir(p: Path) -> bool:
    skip_names = {".git", ".svn", ".hg", ".DS_Store", "node_modules", ".venv", "venv", ".tox", ".mypy_cache", ".pytest_cache", ".idea", ".vscode", ".agents"}
    return p.name in skip_names


def process_root(root: Path):
    for dirpath, dirnames, filenames in os.walk(root):
        # prune skip dirs in-place for efficiency
        dirnames[:] = [d for d in dirnames if not should_skip_dir(Path(dirpath) / d)]
        dpath = Path(dirpath)
        README.md_path = dpath / "README.md"
        original = read_text(README.md_path) if README.md_path.exists() else ""
        new_md = map_existing_to_sections(dpath, original)
        # Only write if different to reduce churn
        if original != new_md:
            dpath.mkdir(parents=True, exist_ok=True)
            README.md_path.write_text(new_md, encoding="utf-8")


def main():
    targets = [Path("/Users/travis/work"), Path("/Users/travis/personal")]
    for t in targets:
        if t.exists():
            process_root(t)


if __name__ == "__main__":
    main()


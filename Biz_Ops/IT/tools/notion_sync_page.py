#!/usr/bin/env python3
"""
Notion Page Sync (Markdown → Notion blocks)

Updates a Notion page's top-level content with a local Markdown file by:
  1) Deleting existing top-level child blocks
  2) Appending blocks converted from Markdown

Usage:
  export NOTION_API_KEY=secret_xxx
  export NOTION_PAGE_ID=<the 32-char page id or with hyphens>
  python3 Biz_Ops/IT/tools/notion_sync_page.py \
      --file Biz_Ops/Structure_Analysis/AiFirst_Tax_Structure_Summary.md \
      [--dry-run]

Notes:
  - Minimal Markdown support: headings (#, ##, ###), paragraphs, code fences, and bullet lists (- or *).
  - Requires network access to Notion. No external packages used.
"""

import argparse
import json
import os
import re
import sys
from typing import List, Dict, Any
from urllib import request, error


NOTION_VERSION = "2022-06-28"


def notion_headers(token: str) -> Dict[str, str]:
    return {
        "Authorization": f"Bearer {token}",
        "Content-Type": "application/json",
        "Notion-Version": NOTION_VERSION,
    }


def notion_request(token: str, method: str, path: str, data: Dict[str, Any] | None = None):
    url = f"https://api.notion.com{path}"
    body = None
    if data is not None:
        body = json.dumps(data).encode("utf-8")
    req = request.Request(url, data=body, method=method, headers=notion_headers(token))
    try:
        with request.urlopen(req, timeout=30) as resp:
            return json.loads(resp.read().decode("utf-8"))
    except error.HTTPError as e:
        detail = e.read().decode("utf-8", errors="ignore")
        raise RuntimeError(f"Notion API error {e.code} {e.reason}: {detail}")


def normalize_page_id(page_id: str) -> str:
    # Accept with or without hyphens; return hyphenless
    pid = page_id.strip()
    # Extract last 32 hex chars if a URL was pasted
    m = re.search(r"([0-9a-fA-F]{32})", pid.replace("-", ""))
    if not m:
        raise ValueError("Invalid Notion page id; expected 32 hex chars.")
    return m.group(1)


def md_to_blocks(md: str) -> List[Dict[str, Any]]:
    blocks: List[Dict[str, Any]] = []
    lines = md.splitlines()
    i = 0
    in_code = False
    code_lang = ""
    code_lines: List[str] = []

    def flush_paragraph(paragraph_lines: List[str]):
        text = " ".join(s.strip() for s in paragraph_lines).strip()
        if text:
            blocks.append(paragraph_block(text))

    para_buf: List[str] = []

    while i < len(lines):
        line = lines[i]
        # Code fence
        if line.strip().startswith("```"):
            if not in_code:
                # entering code
                in_code = True
                code_lang = line.strip().strip("`") or ""
                if para_buf:
                    flush_paragraph(para_buf)
                    para_buf = []
            else:
                # exiting code
                blocks.append(code_block("\n".join(code_lines), code_lang))
                code_lines = []
                code_lang = ""
                in_code = False
            i += 1
            continue

        if in_code:
            code_lines.append(line)
            i += 1
            continue

        # Heading
        m = re.match(r"^(#{1,3})\s+(.*)$", line)
        if m:
            if para_buf:
                flush_paragraph(para_buf)
                para_buf = []
            level = len(m.group(1))
            text = m.group(2).strip()
            blocks.append(heading_block(level, text))
            i += 1
            continue

        # Bulleted list
        if re.match(r"^\s*[-*]\s+", line):
            if para_buf:
                flush_paragraph(para_buf)
                para_buf = []
            # collect contiguous list items
            while i < len(lines) and re.match(r"^\s*[-*]\s+", lines[i]):
                item_text = re.sub(r"^\s*[-*]\s+", "", lines[i]).strip()
                blocks.append(bulleted_item_block(item_text))
                i += 1
            continue

        # Blank line flushes paragraph
        if not line.strip():
            if para_buf:
                flush_paragraph(para_buf)
                para_buf = []
            i += 1
            continue

        # Accumulate paragraph text
        para_buf.append(line)
        i += 1

    if para_buf:
        flush_paragraph(para_buf)

    return blocks


def rich_text(text: str) -> List[Dict[str, Any]]:
    return [{"type": "text", "text": {"content": text}}]


def heading_block(level: int, text: str) -> Dict[str, Any]:
    level = max(1, min(3, level))
    key = {1: "heading_1", 2: "heading_2", 3: "heading_3"}[level]
    return {"object": "block", "type": key, key: {"rich_text": rich_text(text)}}


def paragraph_block(text: str) -> Dict[str, Any]:
    return {"object": "block", "type": "paragraph", "paragraph": {"rich_text": rich_text(text)}}


def bulleted_item_block(text: str) -> Dict[str, Any]:
    return {"object": "block", "type": "bulleted_list_item", "bulleted_list_item": {"rich_text": rich_text(text)}}


def code_block(code: str, language: str = "") -> Dict[str, Any]:
    payload = {"rich_text": [{"type": "text", "text": {"content": code}}]}
    if language:
        payload["language"] = language
    return {"object": "block", "type": "code", "code": payload}


def chunked(iterable: List[Any], size: int) -> List[List[Any]]:
    return [iterable[i:i + size] for i in range(0, len(iterable), size)]


def main():
    ap = argparse.ArgumentParser(description="Sync a Markdown file to a Notion page (replace children)")
    ap.add_argument("--file", required=True, help="Path to Markdown file")
    ap.add_argument("--page-id", default=os.environ.get("NOTION_PAGE_ID"), help="Notion page id (env NOTION_PAGE_ID)")
    ap.add_argument("--token", default=os.environ.get("NOTION_API_KEY"), help="Notion API token (env NOTION_API_KEY)")
    ap.add_argument("--dry-run", action="store_true", help="Do not call Notion; just print summary")
    args = ap.parse_args()

    if not args.page_id:
        print("ERROR: Provide --page-id or set NOTION_PAGE_ID", file=sys.stderr)
        sys.exit(2)
    if not args.token:
        print("ERROR: Provide --token or set NOTION_API_KEY", file=sys.stderr)
        sys.exit(2)

    page_id = normalize_page_id(args.page_id)
    md = open(args.file, "r", encoding="utf-8").read()
    blocks = md_to_blocks(md)

    print(f"Prepared {len(blocks)} blocks from {args.file}")
    if args.dry_run:
        print(json.dumps(blocks[:3], ensure_ascii=False, indent=2))
        return

    # 1) List existing children and delete them
    # Paginate through children
    next_cursor = None
    child_ids: List[str] = []
    while True:
        params = "?page_size=100" + (f"&start_cursor={next_cursor}" if next_cursor else "")
        resp = notion_request(args.token, "GET", f"/v1/blocks/{page_id}/children{params}")
        results = resp.get("results", [])
        child_ids.extend([b["id"] for b in results if b.get("object") == "block"])
        if not resp.get("has_more"):
            break
        next_cursor = resp.get("next_cursor")

    for bid in child_ids:
        notion_request(args.token, "DELETE", f"/v1/blocks/{bid}")

    # 2) Append new children in chunks
    for chunk in chunked(blocks, 80):
        notion_request(args.token, "PATCH", f"/v1/blocks/{page_id}/children", {"children": chunk})

    print(f"Synced {len(blocks)} blocks to Notion page {page_id}")


if __name__ == "__main__":
    main()


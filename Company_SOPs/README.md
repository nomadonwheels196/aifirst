# Company SOPs

## Purpose
Central home for company‑wide Standard Operating Procedures (SOPs). Each SOP documents how the company performs a repeatable activity, how quality is ensured, and how changes are governed.

## Structure
Each SOP resides in its own folder and must contain:
- `PROCESS_SPEC.md` — formal specification (purpose, scope, roles, inputs/outputs, rules)
- `process_runbook.md` — practical steps to run the process
- `.ai/` — automation prompts/config/scripts (no secrets or large files)
- `README.md` — short overview and pointers to spec/runbook/automation

## Conventions
- Use clear, specific names for SOP folders (e.g., `Meeting-to-Action_M2A`).
- Never commit secrets or large artifacts. Keep large files out of git; rely on `.gitignore` and external storage.
- When an SOP materially changes business process, link to the governing spec in `business_spec/`.
- Follow repo `AGENTS.md` and the shared protocol at `~/.agents/README.md`.

## Getting Started
To add a new SOP:
1. Copy the `_TEMPLATE` folder to a new folder inside `Company_SOPs/`.
2. Rename the folder to the SOP name (e.g., `New_SOP_Name`).
3. Complete `PROCESS_SPEC.md` and `process_runbook.md`. Keep `.ai/` automation minimal, auditable, and non‑secret.
4. Submit for review per the SOP’s Change Control.

## Notes
- This directory is for company‑level SOPs that span multiple departments.
- Department‑specific SOPs live under each department’s `SOPs/` directory.
- Align with the source of truth in `business_spec/` where applicable.

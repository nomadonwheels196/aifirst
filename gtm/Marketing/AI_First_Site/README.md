# AI First Static Website

## Purpose
A minimal, future-proof static website for AI First marketing, inspired by clean, typographic aesthetics (open.com-style). Built with semantic HTML + Pico.css with no build step required.

## Current State
- Last Updated: 2025-11-07
- Status: active
- Last Agent/Owner: Marketing team

## Context & Inheritance
- Inherits scope and principles from parent `../README.md` and root `README.md`.
- Agent guidance: `AGENTS.md` and `~/.agents/README.md`.

## Scope
Static website files and Docker deployment configuration for the AI First public-facing website. This is a development/staging environment running on local infrastructure.

## Inputs
- Content updates from marketing team
- Design guidelines from brand standards
- Product information from product management

## Outputs
- Live static website accessible at http://<NAS-IP>:8080/
- HTML/CSS/JS files in `site/` directory

## Primary Owner
- Role: Marketing team
- Review cadence: quarterly
- Approval: content changes require marketing lead approval

## Contributors
- Roles/Teams: Marketing, product marketing, design
- Change process: direct edits to `site/` directory, no build required

## Security & Privacy
- Public-facing website content only
- Never commit credentials or tokens; use environment variables or secure stores.
- See repo `AGENTS.md` and `~/.agents/README.md`.

## Related
- Specs: See parent marketing folder
- Policies: Brand guidelines in marketing docs
- Teams: Marketing team

## Operational Notes

### Run with Docker

```bash
cd AI_First_Site
docker compose up -d
```

Open http://<NAS-IP>:8080/

### Customize

Edit files in `site/`. No build process required.

### Configuration Files
- `docker-compose.yml` - Docker service definition
- `nginx.conf` - Web server configuration
- `site/` - Website content and assets

## Change Log
See PR history or local `CHANGELOG.md`.

## Contributing
- For authors (human or AI) creating or updating this folder: keep this README.md concise and actionable.
- Use `scripts/new_dir.sh` to scaffold new areas when appropriate.
- Link changes to any relevant spec (top-level or local), not only `business_spec/*`. If a spec governs or informs this folder, reference it explicitly.
- Avoid duplicating content that exists in parent README.md; link instead.

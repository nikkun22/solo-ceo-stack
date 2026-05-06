# Changelog

All notable changes to Solo CEO Stack are documented here.

Format: `## [version] — YYYY-MM-DD`

---

## [v0.2.0] — 2026-05-06

### Added

**CxO Prompts (13 new, 16 total)**
- `prompts/cxo/COO.md` — Chief Operating Officer (cross-CxO coordinator)
- `prompts/cxo/CMO.md` — Chief Marketing Officer
- `prompts/cxo/CSO.md` — Chief Sales Officer
- `prompts/cxo/CPO.md` — Chief Product Officer
- `prompts/cxo/CCO.md` — Chief Content Officer
- `prompts/cxo/CHRO.md` — Chief Human Resources Officer
- `prompts/cxo/CLO.md` — Chief Legal Officer
- `prompts/cxo/CIO.md` — Chief Information Officer
- `prompts/cxo/CISO.md` — Chief Information Security Officer
- `prompts/cxo/CDO.md` — Chief Data Officer
- `prompts/cxo/CBO.md` — Chief Business Officer
- `prompts/cxo/CAO.md` — Chief Administrative Officer
- `prompts/cxo/CRO.md` — Chief Risk Officer

**Templates**
- `templates/dri_mapping.md` — DRI mapping table for 6 business lines with monthly/quarterly/milestone review cadences
- `templates/operations_manual.md` — Daily/weekly/monthly operations manual with escalation flow and "President Away" playbook

**Docs**
- `docs/org_chart.md` — 4-layer org chart (Mermaid diagrams, English and Japanese)
- `docs/booth_listing_draft.md` — BOOTH product listing draft
- `docs/x_announcement_drafts.md` — X/Twitter announcement drafts
- `CHANGELOG.md` — This file

**Scripts**
- `scripts/build_tier2.ps1` — PowerShell script to package the Basic Pack ZIP

### Changed

- `README.md` — Updated to v0.2.0; expanded "What's included" and "How to use" sections
- `docs/ja/README.md` — Updated to v0.2.0; full Japanese translation of new sections

### Structure Notes

Each new CxO prompt follows the same 8-section format as v0.1.0:
`Identity → Core Responsibilities (4+) → Authority → Communication Style →
Daily Output Format (code block) → What you do NOT do (3+) → Boundaries`

The Daily Output Format section in v0.2.0 prompts uses a code block for copy-paste clarity,
consistent with the v0.1.0 style.

---

## [v0.1.0] — 2026-04-01

### Added

- `prompts/cxo/CEO.md` — Chief Executive Officer
- `prompts/cxo/CTO.md` — Chief Technology Officer
- `prompts/cxo/CFO.md` — Chief Financial Officer
- `templates/claude_md/CLAUDE.md` — Minimum viable CLAUDE.md
- `templates/claude_md/CLAUDE.local.md.template` — Secrets/local config template
- `README.md` — English documentation
- `docs/ja/README.md` — Japanese documentation
- `LICENSE` — MIT License

### Notes

Initial public release. Free starter pack with 3 core CxO prompts.
Establishes the prompt structure and file conventions used in all future tiers.

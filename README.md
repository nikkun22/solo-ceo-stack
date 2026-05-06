# Solo CEO Stack

> A starter pack for solo founders to run a virtual organization
> of AI agents with Claude Code.

**Version: v0.2.0** — Basic Pack

## What is this?

Solo CEO Stack is a collection of CLAUDE.md templates and AI agent prompts
designed to let one human run a virtual organization of AI agents.

This repository is the **free starter version** with 3 core executives.
The Basic Pack (v0.2.0) adds the full 16-CxO suite plus operational templates.
The full 69-agent organization is available as a paid pack.

## Why?

Most "AI assistant" templates assume one human + one AI.
Solo CEO Stack assumes one human + many AIs working as an org.

This unlocks:
- Clear delegation: each AI has a defined role and authority boundary
- Composability: edit CLAUDE.md to "hire" or "fire" any agent
- Scalability: the org grows without adding humans

## What's included

### Free Tier (this repo)

- `prompts/cxo/CEO.md` - Chief Executive Officer
- `prompts/cxo/CTO.md` - Chief Technology Officer
- `prompts/cxo/CFO.md` - Chief Financial Officer
- `templates/claude_md/CLAUDE.md` - Minimum viable CLAUDE.md
- `templates/claude_md/CLAUDE.local.md.template` - Secrets template

### Basic Pack — v0.2.0 (included in this release)

**CxO Prompts (16 total)**

| File | Role |
|------|------|
| `prompts/cxo/CEO.md` | Chief Executive Officer |
| `prompts/cxo/COO.md` | Chief Operating Officer |
| `prompts/cxo/CTO.md` | Chief Technology Officer |
| `prompts/cxo/CFO.md` | Chief Financial Officer |
| `prompts/cxo/CMO.md` | Chief Marketing Officer |
| `prompts/cxo/CSO.md` | Chief Sales Officer |
| `prompts/cxo/CPO.md` | Chief Product Officer |
| `prompts/cxo/CCO.md` | Chief Content Officer |
| `prompts/cxo/CHRO.md` | Chief Human Resources Officer |
| `prompts/cxo/CLO.md` | Chief Legal Officer |
| `prompts/cxo/CIO.md` | Chief Information Officer |
| `prompts/cxo/CISO.md` | Chief Information Security Officer |
| `prompts/cxo/CDO.md` | Chief Data Officer |
| `prompts/cxo/CBO.md` | Chief Business Officer |
| `prompts/cxo/CAO.md` | Chief Administrative Officer |
| `prompts/cxo/CRO.md` | Chief Risk Officer |

**Templates**

| File | Purpose |
|------|---------|
| `templates/claude_md/CLAUDE.md` | Minimum viable CLAUDE.md |
| `templates/claude_md/CLAUDE.local.md.template` | Secrets template |
| `templates/dri_mapping.md` | DRI mapping for 6 business lines |
| `templates/operations_manual.md` | Daily/weekly/monthly operations |

**Docs**

| File | Purpose |
|------|---------|
| `docs/org_chart.md` | 4-layer org chart (Mermaid, EN/JA) |
| `docs/booth_listing_draft.md` | BOOTH product listing draft |
| `docs/x_announcement_drafts.md` | X/Twitter announcement drafts |

## What's in the paid versions

| Tier | Price | Content |
|------|-------|---------|
| Free (this repo) | ¥0 | 3 core executives, minimum CLAUDE.md |
| Basic Pack | ¥5,000 | 16 CxOs + org chart + DRI mapping + ops manual |
| Complete Pack | ¥30,000 | 69 agents + 6 business line templates + 30-day Discord support |
| Enterprise | ¥100,000+ | Custom design + 3-month support |

→ Get the paid versions on BOOTH (link coming soon)

## How to Use

### Step 1: Clone and copy your CLAUDE.md

```bash
git clone https://github.com/nikkun22/solo-ceo-stack.git
cd your-project
cp solo-ceo-stack/templates/claude_md/CLAUDE.md ./CLAUDE.md
cp solo-ceo-stack/templates/claude_md/CLAUDE.local.md.template ./CLAUDE.local.md
```

### Step 2: Pick your CxOs

Copy the agent prompts you want to activate into your project's `.claude/` folder
or embed them directly in your CLAUDE.md:

```bash
# Example: activate CEO, COO, and CFO
cp solo-ceo-stack/prompts/cxo/CEO.md ./.claude/CEO.md
cp solo-ceo-stack/prompts/cxo/COO.md ./.claude/COO.md
cp solo-ceo-stack/prompts/cxo/CFO.md ./.claude/CFO.md
```

### Step 3: Configure your DRI mapping

Open `templates/dri_mapping.md` and replace the `[Business Line N]` placeholders
with your actual products or revenue streams. Assign a CxO as Primary DRI for each.

### Step 4: Set up your operations cadence

Open `templates/operations_manual.md` and customize:
- Your preferred tools and channels
- Your escalation thresholds (budget limits, etc.)
- Your review schedule

### Step 5: Open Claude Code and start

```bash
claude
```

When Claude Code launches, it reads CLAUDE.md automatically.
Invoke any CxO by addressing them directly in your prompt:

```
@CEO: What are our top 3 priorities for this week?
@CFO: Generate today's P&L report.
@COO: What's blocking the marketing campaign?
```

## What's NOT included

Solo CEO Stack focuses purely on AI agent design.
The following are intentionally excluded:

- Streaming platform integrations
- Live streaming AI news systems
- Platform-specific monitoring scripts
- TTS pipelines
- Custom MCP integrations for proprietary use

## License

MIT — Use freely. Attribution appreciated but not required.

Author: [nikkun22](https://github.com/nikkun22)

---

🇯🇵 [日本語版](docs/ja/README.md)

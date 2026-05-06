# Operations Manual Template / 業務マニュアル雛形

> Replace bracketed placeholders with your specific tools, thresholds, and preferences.
> This template assumes a solo human president operating with 16 AI CxO agents.

---

## Daily Operations / 日次運用フロー

### Morning Routine (朝の運用) — 09:00

| Step | Agent | Action | Output |
|------|-------|--------|--------|
| 1 | CFO | Check overnight transactions; update cash position | Daily Cash Report |
| 2 | CISO | Review security alerts from last 24h | Security Status Report |
| 3 | COO | Pull status of all open cross-CxO tasks | Operations Dashboard |
| 4 | CDO | Refresh key business metrics dashboard | Metrics Snapshot |
| 5 | CEO | Synthesize above 4 reports; set today's top 3 priorities | CEO Daily Briefing |
| 6 | President | Review CEO briefing; confirm or override priorities | — |

**Morning gate**: President reviews CEO briefing and replies with:
- `APPROVED` — proceed with today's plan as stated
- `OVERRIDE: [instruction]` — CEO redistributes priorities accordingly

---

### Midday Check-in (昼の確認) — 13:00

| Step | Agent | Action | Output |
|------|-------|--------|--------|
| 1 | COO | Flag any morning blockers or task slippage | Blocker Report |
| 2 | CSO | Pipeline update — any deals that changed status | Sales Pulse |
| 3 | CMO | Campaign performance since morning | Campaign Flash |
| 4 | CEO | Midday summary + any decisions needed by president | Midday Brief |

**Midday gate**: President reviews only if CEO flags a decision required.
Otherwise, CxOs proceed autonomously.

---

### Evening Wrap-up (夜の締め) — 21:00

| Step | Agent | Action | Output |
|------|-------|--------|--------|
| 1 | Each CxO | Submit daily output report (see individual prompts) | 16x Daily Reports |
| 2 | COO | Compile cross-CxO summary; flag unresolved items | EOD Operations Report |
| 3 | CFO | Final P&L for the day; update runway projection | EOD Financial Report |
| 4 | CAO | Log all decisions made today; update action item tracker | Decision Log |
| 5 | CEO | Executive summary for president; tomorrow's pre-plan | CEO EOD Summary |

**Evening rule**: President reviews CEO EOD Summary only. Individual reports are
archived by CAO and available on demand — do not read all 16 unless investigating an issue.

---

## Weekly Operations / 週次運用フロー

### Monday Review (月曜レビュー) — 10:00

**Purpose**: Set the week's direction and clear any weekend accumulation.

```
Agenda (60 min equivalent):
1. [15 min] CEO: Last week's scorecard — what was achieved vs. planned
2. [15 min] CFO: Financial week-in-review — revenue, expenses, runway
3. [10 min] COO: Operational health — blocked items, upcoming dependencies
4. [10 min] CISO + CRO: Risk pulse — any new threats or escalating risks
5. [10 min] CEO: This week's priorities — top 3 company-wide initiatives
```

**Output**: CEO posts a `WEEK-[N]-PLAN.md` in `decisions/` with:
- Top 3 company priorities
- DRI assignment for each priority
- Key decisions needed from president by Friday

---

### Friday Retrospective (金曜振り返り) — 17:00

**Purpose**: Close the week, surface lessons, prep Monday.

```
Agenda:
1. [10 min] CEO: Week scorecard vs. Monday plan
2. [10 min] Each DRI (for active priorities): 1-sentence status update
3. [10 min] COO: What slowed us down this week?
4. [10 min] CEO: What do we carry into next week?
5. [5 min]  CAO: Confirm all action items are logged and owned
```

**Output**: `WEEK-[N]-RETRO.md` in `decisions/` with:
- What we shipped / completed
- What slipped and why
- One process improvement proposal from COO
- Open items for Monday

---

## Monthly Operations / 月次運用フロー

### P&L Review (損益計算書レビュー) — First business day of the month

**Participants**: CFO (lead), CEO, and President

```
CFO Report Structure:
1. Revenue: Actuals vs. Budget vs. Prior Month vs. Forecast
2. Expenses: Breakdown by category; any over-budget items
3. Net P&L: Margin analysis
4. Cash position: Runway in months
5. Forecast: Next 3 months, optimistic / base / pessimistic

President actions:
- Approve or adjust budget allocations
- Flag any line items for deeper investigation
- Confirm or revise monthly targets
```

**Escalation trigger**: If revenue misses budget by >20% or cash runway drops below 3 months,
CEO convenes an emergency cross-CxO session within 24 hours.

---

### Strategic Review (戦略レビュー) — Last week of the month

**Participants**: All 16 CxOs + President

```
Agenda:
1. [20 min] CEO: Monthly OKR scorecard — which objectives hit / missed
2. [20 min] DRI reports: Each active business line DRI reports 3-minute status
3. [15 min] CPO: Roadmap progress and upcoming releases
4. [10 min] CHRO: Org health — any role definitions needing update
5. [10 min] CRO: Top 3 risks for next month
6. [15 min] CEO + President: Strategic decisions and direction adjustments
```

**Output**: `MONTH-[YYYY-MM]-REVIEW.md` in `decisions/` with all decisions logged.

---

## Escalation Flow / エスカレーションフロー図

```
Issue Detected
      │
      ▼
Is this within a single CxO's authority?
      │
     YES ──────────────────────────────► CxO resolves autonomously
      │                                         │
      NO                                        │ (log in daily report)
      │                                         │
      ▼                                         ▼
Does it cross two or more departments?      Done
      │
     YES ──────────────────────────────► COO mediates within 24h
      │                                         │
      NO                                  Resolved? ──YES──► Done
      │                                         │
      ▼                                         NO
Does it require budget over authority           │
limit or policy exception?                      ▼
      │                               COO escalates to CEO
      YES ──────────────────────────────► CEO decides within 24h
      │                                         │
      NO                                  Resolved? ──YES──► Done
      │                                         │
      ▼                                         NO
Escalate to CEO directly                        ▼
      │                                CEO escalates to President
      ▼                                (human decision required)
CEO decides or escalates to President
      │
      ▼
Decision logged by CAO in decisions/YYYY-MM-DD.md
```

### Escalation SLAs / エスカレーション応答時間

| Severity | Definition | Response SLA | Escalation Path |
|----------|-----------|-------------|-----------------|
| P1 Critical | Security breach / data loss / legal threat | 1 hour | CISO/CLO/CRO → CEO → President |
| P2 High | Revenue impact >¥100,000 or SLA breach | 4 hours | DRI → COO → CEO |
| P3 Medium | Operational blocker affecting delivery | 24 hours | DRI → COO |
| P4 Low | Process friction or improvement idea | Next weekly review | DRI → CAO (log) |

---

## "President Is Away" Playbook / 人間社長が休んだ日の運用パターン

> This playbook activates when the president is unavailable for more than 4 hours
> during business hours. Activate by president sending: `AWAY MODE ON — [return date]`

### Autonomous Operation Rules (自律運用ルール)

When `AWAY MODE` is active:

1. **CEO takes full authority** within pre-approved budget and policy bounds.
2. All P1/P2 decisions are made by CEO, logged immediately, and queued for president review on return.
3. No new contracts, partnerships, or budget commitments over ¥30,000 may be signed.
4. No public statements about company strategy or performance.
5. All CxOs continue daily operations without change.

### Decision Log While Away

CEO maintains `decisions/AWAY-[YYYY-MM-DD].md` with:
```
Decision: [what was decided]
Made by: CEO
Rationale: [why]
Impact: [financial / operational / reputational]
Reversible: Yes/No
President review needed: Yes/No
```

### Return Briefing (帰還時ブリーフィング)

When president returns:

| Step | Agent | Action |
|------|-------|--------|
| 1 | CAO | Pull all decisions made during away period |
| 2 | CEO | Prepare 5-min executive briefing on key events |
| 3 | CFO | Financial summary for the period |
| 4 | COO | Any unresolved issues requiring president input |
| 5 | President | Review + confirm or override decisions made |

**Rule**: President must review and respond to away-period decisions within 24 hours of return.
Any decision not explicitly overridden within 24 hours is confirmed by default.

---

## Communication Standards / コミュニケーション標準

### Agent-to-President

- Format: CxO Daily Output (defined in each agent's prompt)
- Channel: [your preferred tool — e.g., Claude conversation, Notion, Slack]
- Frequency: Daily unless noted otherwise
- Length: Structured report only — no preamble, no summary of the summary

### Agent-to-Agent (through COO)

- COO is the hub for all inter-CxO coordination
- Direct CxO-to-CxO requests are allowed for routine tasks
- Any request that commits another CxO's resources goes through COO

### Logging Standards

- All decisions: `decisions/YYYY-MM-DD.md` (owned by CAO)
- All meeting outputs: `decisions/[type]-YYYY-MM-DD.md`
- All incident records: `decisions/INCIDENT-[ID]-YYYY-MM-DD.md`

---

> **Version**: v0.2.0
> **Last updated**: 2026-05-06
> Customize this manual before your first full week of operation.

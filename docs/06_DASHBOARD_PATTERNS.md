# Dashboard Patterns

## Operations Dashboard

Operations dashboards support live or near-live workflow decisions. They should expose health, blockers, owner attention, and next actions without forcing users to inspect every record.

Required elements:

- Command header.
- KPI/status strip.
- Primary queue, table, or work list.
- Blocker/risk panel.
- Clear escalation or primary action.

## Executive Dashboard

Executive dashboards support status review and decision-making. They should summarize the current state, explain risk, and identify decisions needed.

Required elements:

- Overall status.
- Risk summary.
- Progress or throughput metric.
- Open decision list.
- Owner and next action.

## KPI/Status Strip

Use KPI strips for compact, comparable metrics. Each KPI needs a label, value, and meaningful status/trend when available.

Do not use KPI strips for filler metrics. If the metric does not change a decision, remove it.

## Chart Usage Rules

- Charts must support decisions and not be decorative.
- Every chart needs a clear question it answers.
- Prefer tables when exact values and row comparison matter.
- Avoid 3D charts, decorative gradients, unlabeled axes, and unclear legends.
- Show empty/loading/error states for chart data.


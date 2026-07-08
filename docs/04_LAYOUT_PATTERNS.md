# Layout Patterns

## Operations Dashboard

When to use: command-center pages where users monitor work, risk, throughput, and blockers.

When not to use: simple CRUD pages with no operational summary or triage need.

Required regions: command header, KPI/status strip, primary work queue or table, blocker/risk panel, clear primary action.

Optional regions: filters, activity feed, detail drawer, trend chart.

Responsive behavior: KPI strip wraps; table becomes horizontally scrollable or switches to prioritized cards; blocker panel moves below primary work on narrow screens.

Common mistakes: decorative charts, too many equal-weight cards, hidden blockers, vague statuses.

## Table With Detail Drawer

When to use: users scan many records and inspect one item without losing table context.

When not to use: flows that require full-screen editing or multi-step decisions.

Required regions: table, persistent filters, row status, drawer header, drawer actions.

Optional regions: bulk actions, saved views, inline row preview.

Responsive behavior: drawer becomes full-screen sheet on mobile; table columns collapse by priority.

Common mistakes: placing primary actions only inside row overflow menus, vague column names, drawer that hides current item identity.

## Executive Summary

When to use: leadership needs status, risk, progress, and next decisions quickly.

When not to use: operational users need detailed triage or data entry.

Required regions: headline status, risk summary, decision points, key metrics, owner/next action.

Optional regions: trend notes, supporting table, export action.

Responsive behavior: summary cards stack by priority; decision points stay above secondary metrics.

Common mistakes: generic KPI cards, charts without takeaways, hiding bad news below the fold.

## Admin/Configuration Shell

When to use: settings, rules, mappings, permissions, and controlled changes.

When not to use: highly dynamic operational work queues.

Required regions: navigation, current section title, saved state, validation feedback, audit-sensitive actions.

Optional regions: preview panel, change history, environment selector.

Responsive behavior: sidebar collapses; section nav becomes segmented/tabs; destructive actions stay explicit.

Common mistakes: unclear save behavior, unlabeled destructive actions, weak validation.

## Workflow Wizard

When to use: users must complete ordered steps with dependencies.

When not to use: users need freeform exploration or repeated small edits.

Required regions: stepper, current step title, step content, validation, back/next/cancel controls.

Optional regions: review step, save draft, side summary.

Responsive behavior: step labels shorten; side summary moves below content.

Common mistakes: hiding validation until the end, unclear step progress, no draft path for long workflows.

## Intake Form

When to use: users submit structured data that drives downstream work.

When not to use: users need to compare many existing records.

Required regions: grouped fields, labels, helper text, validation, submit/cancel.

Optional regions: upload area, review panel, autosave state.

Responsive behavior: multi-column forms collapse to one column; grouped sections remain clear.

Common mistakes: placeholder-only labels, unclear required fields, dense ungrouped inputs.

## Reporting Page

When to use: users inspect trends, export data, and answer recurring operational questions.

When not to use: real-time triage or direct workflow execution.

Required regions: report title, date/filter controls, summary metrics, primary table or chart, export/share action.

Optional regions: annotations, saved views, comparison controls.

Responsive behavior: filters stack; charts preserve labels; wide tables scroll.

Common mistakes: chart-first pages with no decision context, unbounded filters, unreadable legends.


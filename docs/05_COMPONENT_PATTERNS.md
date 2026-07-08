# Component Patterns

## App Shell

Purpose: provide persistent navigation and page context.
Required behavior: show current location and preserve access to primary sections.
Visual guidance: restrained chrome, stable layout, no decorative sidebars.
Accessibility notes: use semantic navigation landmarks.
Mistakes to avoid: hiding active state, oversized brand blocks, changing nav order per app.

## Command Header

Purpose: summarize page purpose, status, and primary action.
Required behavior: expose title, brief context, key status, and one clear primary action.
Visual guidance: compact but prominent, aligned with page grid.
Accessibility notes: primary action must be keyboard reachable and named.
Mistakes to avoid: multiple competing primary buttons, vague subtitles, decorative badges.

## KPI Strip

Purpose: show compact operational metrics.
Required behavior: include label, value, trend/status where meaningful.
Visual guidance: dense, aligned, readable at a glance.
Accessibility notes: do not rely on color alone for meaning.
Mistakes to avoid: equal treatment for vanity metrics and blockers.

## Action Queue

Purpose: prioritize work requiring user action.
Required behavior: sort by urgency or configured workflow logic, show owner/status/next action.
Visual guidance: high information density with clear row rhythm.
Accessibility notes: row actions must have text labels or accessible names.
Mistakes to avoid: hidden actions, unscannable long cards, ambiguous urgency.

## Blocker Panel

Purpose: make blocked work impossible to miss.
Required behavior: list blocker, owner, age, impact, next action.
Visual guidance: strong but not alarmist; blocked color role only for true blocking conditions.
Accessibility notes: status text must state the blocker, not only color.
Mistakes to avoid: using blocked for normal pending states.

## Status Badge

Purpose: label record state consistently.
Required behavior: use approved status/severity roles only.
Visual guidance: compact, legible, consistent shape.
Accessibility notes: badge text must communicate meaning without color.
Mistakes to avoid: one-off colors, decorative success badges, vague labels.

## Severity Indicator

Purpose: show risk level or urgency.
Required behavior: map to documented severity rules.
Visual guidance: color plus label/icon when needed.
Accessibility notes: never use color alone.
Mistakes to avoid: critical overuse, warning for neutral pending work.

## Data Table

Purpose: support scanning, comparison, filtering, and row-level action.
Required behavior: stable headers, readable density, sortable/filterable where useful.
Visual guidance: tight row spacing, clear alignment, restrained borders.
Accessibility notes: use proper table semantics where stack allows.
Mistakes to avoid: card grids for tabular work, hidden key columns, tiny contrast.

## Detail Drawer

Purpose: inspect or act on one record while keeping list context.
Required behavior: show item identity, status, key fields, and actions.
Visual guidance: fixed width on desktop, full-screen fallback on mobile.
Accessibility notes: trap focus when modal, restore focus on close.
Mistakes to avoid: drawer with no title, buried primary action, content wider than viewport.

## Filter Bar

Purpose: narrow operational data.
Required behavior: show active filters and reset path.
Visual guidance: compact controls; avoid wrapping chaos.
Accessibility notes: controls need labels.
Mistakes to avoid: unlabeled icon filters, no clear state, filters far from results.

## Form Section

Purpose: group related inputs.
Required behavior: title, labels, helper/error text, validation.
Visual guidance: clear section boundaries without heavy cards inside cards.
Accessibility notes: associate labels and errors with fields.
Mistakes to avoid: placeholder-only labels, hidden required markers.

## Empty State

Purpose: explain absence and next step.
Required behavior: state why empty and what action is available.
Visual guidance: concise, not illustrative-heavy for operational tools.
Accessibility notes: action must be reachable and named.
Mistakes to avoid: celebratory empty states for unresolved work.

## Loading State

Purpose: preserve layout while data loads.
Required behavior: indicate progress without shifting structure.
Visual guidance: skeletons or reserved space for expected content.
Accessibility notes: expose busy state when supported.
Mistakes to avoid: spinners that hide page structure.

## Error State

Purpose: help users recover or report failure.
Required behavior: describe failure, impact, retry path, and support path if needed.
Visual guidance: clear severity, no panic styling unless critical.
Accessibility notes: error must be announced or focusable when appropriate.
Mistakes to avoid: generic "Something went wrong" with no next step.


# Table Patterns

## Density Rules

Tables should be dense enough for operational scanning without crushing readability. Use compact row height, strong column alignment, and restrained dividers.

## Column Prioritization

Put identity, status, owner, deadline/risk, and primary action before secondary metadata. Hide or move low-value columns on narrow screens.

## Filters

Filters belong near the table. Active filters must be visible and removable. Provide reset when more than one filter can be active.

## Sorting

Sort indicators must be visible. Default sort should match the workflow, such as highest risk, newest blocker, or next due item.

## Row Actions

Use clear text labels for primary actions. Overflow menus are acceptable for secondary actions only.

## Bulk Actions

Bulk actions must show selection count and confirm risky changes.

## Detail Drawer Behavior

Use detail drawers when users need to inspect one row without losing the list. Include item title, status, key metadata, and actions. On mobile, drawers should become full-screen sheets.

## Empty States

Empty tables must explain whether the result is truly empty or filtered empty.

## Loading States

Reserve table structure while loading. Avoid replacing the whole page with a spinner.

## Mobile/Responsive Handling

Wide operational tables may scroll horizontally. Prioritize columns before switching to cards. If cards are used, preserve sorting, status, and row actions.


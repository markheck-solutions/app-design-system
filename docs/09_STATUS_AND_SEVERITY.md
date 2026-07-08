# Status And Severity

Use these roles only:

- neutral
- info
- success
- warning
- critical
- blocked

## Neutral

Meaning: default, inactive, pending, or informational state with no risk signal.
Allowed use: normal pending work, drafts, inactive filters, uncategorized items.
Forbidden use: known problems, approvals, successful completion.
Visual treatment: low emphasis, neutral border/background, readable text.
Example labels: Draft, Pending, Not started, Unassigned.

## Info

Meaning: useful context or active informational state.
Allowed use: in review, in progress, synced, scheduled.
Forbidden use: warnings, blockers, completed outcomes.
Visual treatment: restrained blue/cyan role with clear text.
Example labels: In progress, Scheduled, In review, Synced.

## Success

Meaning: completed, healthy, approved, or passed.
Allowed use: verified completion or positive system state.
Forbidden use: decoration, "new", neutral acknowledgement.
Visual treatment: green role, clear positive label.
Example labels: Complete, Approved, Healthy, Passed.

## Warning

Meaning: risk exists but work is not blocked.
Allowed use: approaching deadline, missing optional input, degraded but usable.
Forbidden use: normal pending states.
Visual treatment: amber role, paired with risk description.
Example labels: At risk, Needs review, Due soon, Degraded.

## Critical

Meaning: severe failure or urgent risk requiring immediate attention.
Allowed use: outage, failed control, data-risk issue, high-impact defect.
Forbidden use: routine validation, normal backlog priority.
Visual treatment: red role, rare and obvious.
Example labels: Failed, High risk, Outage, Urgent.

## Blocked

Meaning: progress cannot continue until a dependency, decision, access, or external action is resolved.
Allowed use: dependency blocked, waiting on required approval, missing access.
Forbidden use: generic critical state, normal pending work.
Visual treatment: distinct blocked role, label must say what blocks progress.
Example labels: Blocked, Waiting on access, Decision needed, Dependency blocked.

## Rules

- Blocked is operationally different from critical.
- Warning must not be used for normal pending states.
- Success must not be used as decoration.
- Critical must be rare and obvious.
- Do not invent new status colors per app.


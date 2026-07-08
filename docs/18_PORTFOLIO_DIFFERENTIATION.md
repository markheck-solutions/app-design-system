# Portfolio Differentiation

## Purpose

This repo supports a portfolio of distinct product experiences. It enforces shared quality, accessibility, token discipline, status semantics, and implementation guardrails without forcing every app into one visual style.

The goal is a cohesive portfolio, not cloned screens. Each app should feel intentional, memorable, and specific to its product story.

## Shared vs Unique Design Layers

Shared layers:

- Accessibility and contrast.
- Status and severity semantics.
- Token discipline for color roles, spacing, type, radius, elevation, and motion.
- Readable density.
- Strong information hierarchy.
- Operational clarity.
- Figma-to-implementation traceability.
- No fake controls, decorative charts, or unimplemented workflows.

Unique layers:

- Product story.
- Creative brief.
- Visual lane.
- Hero moment.
- Visual signature.
- Motion or interaction signature.
- Page composition and layout emphasis.
- Domain-specific data storytelling.

## Visual Lane Examples

- Command center: dense monitoring, live triage, risk bands, escalation focus.
- Coverage planner: calendar heat, staffing tension, fairness context, timeline decision support.
- Cutover room: readiness cockpit, go/no-go tension, blockers, wave sequencing, incident-grade clarity.
- Intelligence scorecard: executive review, benchmark comparison, performance narrative, boardroom-ready reporting.
- Investigation console: evidence trail, entity graph, timeline scrub, confidence signals.
- Workflow studio: guided assembly, progress clarity, validation, preview.
- Control plane: configuration, safety, audit trail, environment-aware operations.

Visual lanes are not skins. A lane must change layout emphasis, visual rhythm, signature components, and hero moment.

## Hero Moment Rules

Each target design must include one hero moment: the first-view visual or interaction that makes the app memorable and explains why the product exists.

Hero moments must:

- Serve a real decision or workflow.
- Use real app concepts and available data.
- Stay accessible and readable.
- Avoid random decoration.
- Avoid charts that do not change user decisions.
- Avoid repeating another app's hero moment.

Hero moments may be:

- A risk-command strip with drill-in pressure.
- A coverage calendar with conflict intensity.
- A go/no-go readiness wall.
- A carrier health narrative with benchmark deltas.
- A timeline, lane map, flow, or score decomposition that reveals the product story.

## App Differentiation Examples

### app-01 - Vendor Escalation Tracker

Story: stale vendor follow-ups create revenue risk.

Visual lane: escalation command center.

Hero moment: same-day escalation queue with revenue exposure, aging, blocker, next action, and read-only detail drawer.

Visual signature: urgency rails, escalation badges, compact priority cards, and a persistent decision drawer.

### app-02 - Team Coverage and PTO Readiness Planner

Story: PTO approval needs coverage confidence, fairness context, and delivery-window awareness.

Visual lane: coverage planning cockpit.

Hero moment: coverage heat calendar or readiness timeline showing role gaps, overlaps, fairness, and delivery risk.

Visual signature: calendar-density heat, role coverage bands, fairness markers, and decision readiness summary.

### app-03 - Migration Cutover Readiness Command Center

Story: cutover leaders need go/no-go clarity across waves, blockers, owners, and readiness evidence.

Visual lane: cutover war room.

Hero moment: wave readiness wall with blocker gravity, owner accountability, and launch decision state.

Visual signature: wave lanes, go/no-go status bar, blocker wall, dependency chain, and incident-grade visual severity.

### app-04 - Carrier Performance Intelligence Scorecard

Story: executives need explainable carrier performance, trend risk, and QBR-ready evidence.

Visual lane: executive intelligence scorecard.

Hero moment: carrier health narrative with score decomposition, benchmark deltas, and recommendation summary.

Visual signature: boardroom score ribbon, benchmark comparison, concise insight cards, and QBR-ready evidence framing.

## Anti-Patterns

- Making every app an enterprise command-center dashboard.
- Reusing the same header, KPI strip, card grid, and drawer layout for every app.
- Generic AI dashboard slop.
- Random neon gradients.
- Fake glassmorphism.
- Decorative charts without decision value.
- Reusing the same hero moment across apps.
- Treating visual lane as a color palette only.
- Letting portfolio pop override readability, accessibility, or status semantics.
- Adding fake functionality to make a screen look more impressive.

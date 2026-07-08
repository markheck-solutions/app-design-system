# App Creative Brief

## App name

Vendor Escalation Tracker

## App id

app-01

## Product story

Vendor follow-up decay creates delivery risk, escalation pressure, and potential revenue exposure.

The product exists for service delivery managers and escalation owners who need to spot stale vendor follow-ups before they become missed commitments. The story is not generic task tracking. It is about money, aging, blocker clarity, and the next message that moves a risky delivery forward.

## Target user impression

The app should feel like a focused escalation desk built for same-day action. A user should immediately understand:

- Which vendor issue deserves attention first.
- How old the silence is.
- What revenue or delivery exposure is attached.
- What blocker is holding progress.
- What next action or follow-up draft is available.

The impression should be sharp, urgent, and controlled. It should feel portfolio-polished without becoming decorative or fake.

## Visual lane

Escalation command center.

This lane is specific to app-01. It should emphasize triage pressure, vendor silence, delivery exposure, blocker evidence, and read-only escalation review. It must not drift into app-02's coverage planning cockpit, app-03's cutover war room, or app-04's executive intelligence scorecard.

## Hero moment

A same-day escalation queue that exposes priority, aging, blocker type, revenue exposure, next action, and a read-only detail drawer.

The first-view moment should make the queue feel operationally decisive: high-risk items have visible urgency rails, stale touch dates stay close to money and due dates, blocker text is readable without opening a modal, and the detail drawer gives fast escalation context without losing queue position.

## Visual signature

- Urgency rails on priority records.
- Escalation badges that distinguish risk, blocker, and status without inventing new status colors.
- Compact priority cards optimized for scanning money, due date, last vendor touch, signal, blocker, and next action.
- Sharp aging/risk treatment for stale vendor silence.
- Persistent decision drawer for read-only delivery review.
- Copy-safe follow-up draft area that supports the demo story without implying send/save/edit behavior.

## Motion/interaction signature

Motion should be restrained and workflow-serving:

- Queue-to-drawer transition should feel fast and anchored, preserving the selected record context.
- Active record emphasis should be obvious through state, not animation flash.
- Filter and sort changes may use subtle row reflow or selection persistence, but not decorative motion.
- Draft generation can use a concise loading state tied to the read-only mock draft flow.

No motion should imply unsupported write actions or live vendor communication.

## What should feel impressive

- Revenue exposure and stale follow-up risk are visible in one scan.
- The queue feels dense but readable, not cramped.
- Blockers and next actions are legible before opening detail.
- The selected record remains connected to the drawer.
- Read-only posture is clear and credible.
- The app feels like it understands escalation pressure, not just dashboard metrics.

## What should not be reused from other apps

- Do not reuse app-02's calendar heat, staffing coverage bands, or fairness markers.
- Do not reuse app-03's wave lanes, go/no-go readiness wall, or launch-room severity framing.
- Do not reuse app-04's boardroom score ribbon, benchmark deltas, or QBR narrative layout.
- Do not reuse one-size-fits-all dashboard cards as the primary identity.
- Do not turn the app into generic AI dashboard slop.
- Do not add fake send, save, edit, import, export, or destructive controls.

## Figma current-state links

- Root dashboard: https://www.figma.com/design/ricGmgtrDAtklOoB9CkBZb/MS-App-Design-System?node-id=9-2
- Detail drawer: https://www.figma.com/design/ricGmgtrDAtklOoB9CkBZb/MS-App-Design-System?node-id=9-4

## Figma target frame links

- Approved target - Concept 1 - Vendor Silence Escalation Ladder: https://www.figma.com/design/ricGmgtrDAtklOoB9CkBZb/MS-App-Design-System?node-id=22-2
- Not selected - Concept 2 - Same-Day Escalation Board: https://www.figma.com/design/ricGmgtrDAtklOoB9CkBZb/MS-App-Design-System?node-id=22-183
- Not selected - Concept 3 - Revenue Exposure Priority Stack: https://www.figma.com/design/ricGmgtrDAtklOoB9CkBZb/MS-App-Design-System?node-id=22-332

Concept 1 is the approved app-01 target direction for implementation planning. The prior literal radar/timeline treatment was rejected because it required explanation and did not communicate vendor silence as an escalation problem within three seconds.

## Implementation constraints

- Do not edit the app repo as part of this brief.
- Do not modify app source code while creating or updating this brief.
- Preserve the app's read-only public demo posture.
- Preserve existing business logic, data contracts, API routes, and seeded/fake data behavior.
- No new UI dependency may be introduced without approval.
- No fake functionality may be added for visual effect.
- Status and severity treatment must use shared design-system semantics.
- Accessibility, readable density, and operational clarity remain shared requirements.
- Current app repo has uncommitted work on `codex/command-center-ux`; app source changes require owner confirmation.

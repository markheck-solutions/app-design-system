# App Creative Brief

## App name

Vendor Escalation Tracker

## App id

app-01

## Product story

Vendor delays create delivery risk, escalation pressure, and potential revenue exposure.

The product tracks stalled vendor progress, not just silence. It exists for service delivery managers and escalation owners who need to see when vendor-owned actions stop closing, ETAs stay unresolved, blockers remain open, ownership is unclear, or due dates start slipping. The story is not generic task tracking. It is about money, delay age, last meaningful progress, blocker clarity, and the next closure action that moves a risky delivery forward.

## Target user impression

The app should feel like a focused escalation desk built for same-day action. A user should immediately understand:

- Which vendor issue deserves attention first.
- Which vendor-owned action is most urgent.
- How long progress has been delayed.
- What revenue or delivery exposure is attached.
- What blocker is holding closure.
- What the last meaningful progress was.
- What next closure action or follow-up draft is available.

The impression should be sharp, urgent, and controlled. It should feel portfolio-polished without becoming decorative or fake.

## Visual lane

Vendor delay escalation command center.

This lane is specific to app-01. It should emphasize triage pressure, stalled vendor progress, delivery exposure, blocker evidence, last meaningful progress, next closure action, and read-only escalation review. Vendor silence can appear as one signal through last vendor touch, but it must not define the whole product story. It must not drift into app-02's coverage planning cockpit, app-03's cutover war room, or app-04's executive intelligence scorecard.

## Hero moment

A delay escalation ladder showing vendor-owned actions moving from On Track to Executive Escalation based on delay age, unresolved blocker, last meaningful progress, next closure action, due-date pressure, and revenue exposure.

The first-view moment should make stalled progress operationally obvious. The user should immediately see which vendor-owned action is most urgent, how long progress has been delayed, what is blocking closure, what the last meaningful progress was, what action is needed today, and how much revenue or delivery exposure is attached.

## Visual signature

- Urgency rails on priority records.
- Escalation badges that distinguish risk, blocker, and status without inventing new status colors.
- Compact priority cards optimized for scanning money, due date, delay age, last vendor touch, last meaningful progress, blocker unresolved, and next closure action.
- Sharp delay/risk treatment for stalled vendor progress.
- A horizontal escalation ladder with stages: On Track, Watching, Slipping, Blocked, Executive Escalation.
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

- Revenue exposure and stalled vendor progress risk are visible in one scan.
- The queue feels dense but readable, not cramped.
- Blockers, last meaningful progress, and next closure actions are legible before opening detail.
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

- Approved target - Concept 1B - Vendor Delay Escalation Ladder: https://www.figma.com/design/ricGmgtrDAtklOoB9CkBZb/MS-App-Design-System?node-id=29-6
- Superseded - Concept 1 - Vendor Silence Escalation Ladder: https://www.figma.com/design/ricGmgtrDAtklOoB9CkBZb/MS-App-Design-System?node-id=22-2
- Not selected - Concept 2 - Same-Day Escalation Board: https://www.figma.com/design/ricGmgtrDAtklOoB9CkBZb/MS-App-Design-System?node-id=22-183
- Not selected - Concept 3 - Revenue Exposure Priority Stack: https://www.figma.com/design/ricGmgtrDAtklOoB9CkBZb/MS-App-Design-System?node-id=22-332

Concept 1B is the approved app-01 target direction for implementation planning. The prior Concept 1 frame is superseded because it was too narrow and focused on silence instead of vendor delay/progress failure. The earlier literal radar/timeline treatment remains rejected because it required explanation and did not communicate the escalation problem within three seconds.

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

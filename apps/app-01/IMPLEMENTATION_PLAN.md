# app-01 Implementation Plan

## Scope

This is planning only for app-01, Vendor Escalation Tracker.

- Design-system repo: `C:\repos\app-design-system`
- App repo: `C:\SoftwareFactory\01-projects\vendor-escalation-tracker`
- Approved target: [Concept 1E - Evidence Board Variant](https://www.figma.com/design/ricGmgtrDAtklOoB9CkBZb/MS-App-Design-System?node-id=42-2)
- App status at planning time: `target_approved`
- App source changes in this task: none
- App repo staging/commit in this task: none

## Approved Target Verification

Read-only Figma inspection confirmed frame `42:2` is named:

`APPROVED / ADS / Pilot / Vendor Escalation Tracker / Target / Concept 1E - Evidence Board Variant`

The inspected frame includes:

- Five-stage delay ladder: On Track, Watching, Slipping, Blocked, Executive Escalation.
- Selected vendor evidence board.
- Progress evidence timeline.
- Closure criteria.
- Copy-safe draft preview.
- Empty, loading, error, and responsive notes.
- Read-only posture with no send/save/edit/import/export/live communication controls.

## App Repo State

- Branch: `codex/command-center-ux`
- Package manager: npm, based on `package-lock.json`
- Stack: Next.js App Router, React, TypeScript, Tailwind CSS v4, Drizzle ORM, Postgres/Supabase, Vitest, Playwright
- Staged app repo changes: none observed
- Uncommitted app repo work: present

Uncommitted tracked files:

- `app/globals.css`
- `app/page.tsx`
- `components/dashboard/Dashboard.tsx`
- `components/demo/DemoModeBadge.tsx`
- `components/detail/DeliveryDetailDrawer.tsx`
- `components/draft/DraftPanel.tsx`
- `tests/browser/smoke.spec.ts`
- `tests/unit/naming-consistency.test.ts`

Untracked files and folders:

- `components/dashboard/DashboardControls.tsx`
- `components/dashboard/DashboardMetricsSection.tsx`
- `components/dashboard/PriorityQueue.tsx`
- `components/dashboard/dashboard-formatters.ts`
- `components/dashboard/dashboard-types.ts`
- `output/`
- `supabase/migrations/20260707235000_lock_down_legacy_public_tables.sql`
- `supabase/migrations/20260707235500_lock_down_migration_tracking_table.sql`
- `supabase/migrations/20260708000000_fix_set_updated_at_search_path.sql`
- `supabase/migrations/20260708001000_add_deny_policies_for_locked_public_tables.sql`
- `tests/unit/dashboard/dashboard-presentation.test.tsx`

## Overlap Risk

Overlap risk is high.

The existing uncommitted app work touches the same UI surface likely needed for Concept 1E: page shell, global styling, dashboard composition, metric strip, priority queue, detail drawer, draft panel, and browser/unit tests.

Implementation should not start until the owner confirms how to handle the dirty app branch:

- Continue on `codex/command-center-ux` and work with the existing edits.
- Ask the owner to commit/stash/review the existing app repo work first.
- Create a separate worktree only after the current app repo state is intentionally preserved.

## Current App Structure

Primary user route:

- `/` via `app/page.tsx`

API routes:

- `/api/dashboard/metrics`
- `/api/deliveries`
- `/api/deliveries/[id]`
- `/api/drafts`
- `/api/health`

Current UI modules:

- `components/dashboard/Dashboard.tsx`
- `components/dashboard/DashboardControls.tsx`
- `components/dashboard/DashboardMetricsSection.tsx`
- `components/dashboard/PriorityQueue.tsx`
- `components/detail/DeliveryDetailDrawer.tsx`
- `components/draft/DraftPanel.tsx`
- `components/demo/DemoModeBadge.tsx`

Current domain and data modules likely relevant:

- `lib/dashboard/metrics.ts`
- `lib/dashboard/queue.ts`
- `lib/dashboard/url-state.ts`
- `lib/detail/types.ts`
- `lib/detail/follow-up-history.ts`
- `lib/detail/risk-explanation.ts`
- `lib/risk/scoring.ts`
- `lib/risk/stale-follow-up.ts`
- `lib/data/seed.ts`

## Implementation Phases

### Phase 0 - Preserve Existing App Work

- Re-run app repo status before editing.
- Confirm the dirty `codex/command-center-ux` branch is the intended implementation base.
- Do not discard, reset, or overwrite existing app repo changes.
- Avoid touching migrations or `output/` unless the owner explicitly says they are part of the UI work.

### Phase 1 - Build Concept 1E View Model

- Derive delay stage from existing risk, status, blocker, due date, last vendor touch, and next action data.
- Represent the five stages: On Track, Watching, Slipping, Blocked, Executive Escalation.
- Derive or display:
  - Delay age.
  - Last meaningful progress.
  - Blocker unresolved.
  - Next closure action.
  - Due-date pressure.
  - Revenue or delivery exposure.
- Prefer UI-layer view-model helpers first.
- Do not change API response contracts, database schema, or seed data unless approved.

### Phase 2 - Replace Repeated Queue With Ladder Plus Evidence Board

- Keep the five big ladder stages as the top hero.
- Remove the repeated ranked queue pattern from the middle section.
- Add a selected vendor evidence board in the middle section.
- Default selected vendor to the highest-priority delayed or blocked item.
- Preserve manual selection from the ladder or any remaining queue affordance.

### Phase 3 - Detail Drawer and Draft Posture

- Align the read-only detail drawer with the selected evidence board.
- Show delivery exposure, delay age, unresolved blocker, last meaningful progress, next closure action, and closure criteria.
- Preserve demo safety.
- Keep draft behavior copy-safe and review-only.
- Do not add fake send, save, edit, import, export, delete, or live vendor communication controls.

### Phase 4 - Empty, Loading, Error, and Responsive States

- Empty: show that no vendor-owned actions are currently delayed or blocked.
- Loading: use stable skeleton rows/cards without layout shift.
- Error: keep existing data visible when possible and show retry guidance without destructive controls.
- Responsive: collapse the ladder into a vertical delay lane and place the evidence board below the selected item.

### Phase 5 - Tests and Visual QA

- Update unit tests for delay stage mapping, evidence-board selection, and read-only draft posture.
- Update browser tests for the ladder, selected evidence board, detail drawer, and no fake action controls.
- Capture desktop and mobile screenshots.
- Compare screenshots against the approved Figma frame.

## Exact App Files Likely Affected Later

High-confidence UI files:

- `app/page.tsx` - page shell, command header, top-level copy.
- `app/globals.css` - tokens, layout density, responsive rules, focus states.
- `components/dashboard/Dashboard.tsx` - main composition, selected vendor state, data orchestration.
- `components/dashboard/DashboardControls.tsx` - filter/sort controls if they remain visible.
- `components/dashboard/DashboardMetricsSection.tsx` - likely reduced or reframed to avoid repeating ladder content.
- `components/dashboard/PriorityQueue.tsx` - likely replaced or narrowed so it no longer duplicates the ladder.
- `components/dashboard/dashboard-formatters.ts` - delay labels, currency, due pressure, stage tone helpers.
- `components/dashboard/dashboard-types.ts` - UI view-model types for ladder stages and evidence board.
- `components/detail/DeliveryDetailDrawer.tsx` - selected vendor evidence, closure facts, drawer copy.
- `components/draft/DraftPanel.tsx` - copy-safe read-only draft framing.
- `components/demo/DemoModeBadge.tsx` - read-only demo language if needed.

Likely new UI files:

- `components/dashboard/DelayEscalationLadder.tsx`
- `components/dashboard/SelectedVendorEvidenceBoard.tsx`
- `components/dashboard/delay-evidence.ts`

Tests likely affected:

- `tests/browser/smoke.spec.ts`
- `tests/unit/dashboard/dashboard-presentation.test.tsx`
- `tests/unit/dashboard/queue-controls.test.ts`
- `tests/unit/draft/DraftPanel.test.tsx`
- `tests/unit/risk/stale-follow-up.test.ts`

Files to avoid unless explicitly approved:

- `app/api/**`
- `lib/data/schema.ts`
- `lib/data/repository-*.ts`
- `lib/data/postgres.ts`
- `supabase/migrations/**`
- `.env.local`
- unrelated governance or release scripts

## Styling and Token Approach

- Use the app's existing Tailwind v4 and CSS variable surface.
- Do not add UI libraries or icon dependencies without approval.
- Use design-system status semantics, not arbitrary one-off colors.
- Keep high contrast, dense readability, and strong status hierarchy.
- Use urgency rails, stage tone, bordered evidence panels, and compact facts.
- Avoid random neon gradients, fake glassmorphism, generic SaaS cards, emoji status systems, and decorative charts.

## What Must Not Change

- No app source changes until implementation is explicitly approved.
- No app repo staging or commits as part of this plan.
- No destructive Git actions.
- No live vendor communication.
- No fake send/save/edit/delete/import/export controls.
- No app data contract or schema changes without owner approval.
- No hardcoded Figma-only vendor facts unless the owner approves demo seed changes.
- No changes to app-02, app-03, or app-04 visual lanes.

## Validation Commands for Implementation

Run from `C:\SoftwareFactory\01-projects\vendor-escalation-tracker` during implementation:

- `npm run format:check`
- `npm run lint`
- `npm run typecheck`
- `npm test -- --run`
- `npm run test:browser`
- `npm run build`
- `npm run check:complexity`
- `npm run check:large-files`
- `npm run check:dead-code`
- `npm run check:duplicate-code`
- `npm run check:agents`
- `npm run check:local-services`
- `git diff --check`

If seed data, database readiness, or migration-adjacent code changes are approved later, also run:

- `npm run db:seed`
- `npm run check:api-schema`
- `npm run check:n-plus-one`

## Screenshot and Visual QA Plan

- Use Playwright Chromium through the existing `npm run test:browser` setup.
- Capture `/` desktop at approximately `1440x1100`.
- Capture `/` mobile at approximately `390x844`.
- Capture default dashboard, selected vendor evidence board, and detail drawer open states.
- Verify:
  - Five ladder stages are visible.
  - The middle section is an evidence board, not a repeated ranked queue.
  - Delay age, blocker, last meaningful progress, next closure action, due pressure, and exposure are visible.
  - Draft area is copy-safe and read-only.
  - No send/save/edit/import/export/live communication controls appear.
  - Text does not overlap or clip.
  - Keyboard focus and Escape behavior still work for the drawer.
  - Mobile layout stacks without losing stage meaning.

Screenshot storage should be decided before implementation. Prefer temporary proof screenshots unless repo policy requires committed artifacts.

## Rollback Plan

- Before implementation, capture app repo status and the exact dirty-file list.
- Work in small patches so own edits can be separated from pre-existing dirty work.
- If rollback is needed, revert only Codex-created changes from that implementation session.
- Do not use `git reset --hard`, `git checkout --`, or broad cleanup commands against the dirty app repo.
- Preserve owner work and untracked files unless the owner explicitly approves removal.

## Open Decisions Before Implementation

- Whether to implement on the existing dirty `codex/command-center-ux` branch.
- Whether current untracked dashboard split files should become the implementation base.
- Whether the app should keep existing mock draft generation or shift to a static copy-safe draft preview.
- Whether demo seed data should be changed to match the Figma story exactly.
- Whether delay age and last meaningful progress should be derived in UI only or added to API DTOs.
- Whether the current metric strip should be removed, reduced, or moved below the evidence board.
- Whether implementation screenshots should be committed or kept as temporary validation artifacts.

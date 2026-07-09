# app-01 Dirty Branch Review

## Scope

Read-only inspection of the dirty app repo before app-01 Concept 1E implementation.

- App repo: `C:\SoftwareFactory\01-projects\vendor-escalation-tracker`
- Design-system repo: `C:\repos\app-design-system`
- Approved target: [Concept 1E - Evidence Board Variant](https://www.figma.com/design/ricGmgtrDAtklOoB9CkBZb/MS-App-Design-System?node-id=42-2)
- Implementation plan: [IMPLEMENTATION_PLAN.md](IMPLEMENTATION_PLAN.md)
- App files modified by this review: none
- App files staged by this review: none

## Current Branch

`codex/command-center-ux`

## Dirty File List

Tracked modified files:

- `app/globals.css`
- `app/page.tsx`
- `components/dashboard/Dashboard.tsx`
- `components/demo/DemoModeBadge.tsx`
- `components/detail/DeliveryDetailDrawer.tsx`
- `components/draft/DraftPanel.tsx`
- `tests/browser/smoke.spec.ts`
- `tests/unit/naming-consistency.test.ts`

Untracked files:

- `components/dashboard/DashboardControls.tsx`
- `components/dashboard/DashboardMetricsSection.tsx`
- `components/dashboard/PriorityQueue.tsx`
- `components/dashboard/dashboard-formatters.ts`
- `components/dashboard/dashboard-types.ts`
- `output/grounded-ux-mockups-full.png`
- `output/grounded-ux-mockups.html`
- `output/grounded-ux-mockups.png`
- `supabase/migrations/20260707235000_lock_down_legacy_public_tables.sql`
- `supabase/migrations/20260707235500_lock_down_migration_tracking_table.sql`
- `supabase/migrations/20260708000000_fix_set_updated_at_search_path.sql`
- `supabase/migrations/20260708001000_add_deny_policies_for_locked_public_tables.sql`
- `tests/unit/dashboard/dashboard-presentation.test.tsx`

Staged app repo files: none.

## What Each Dirty File Appears To Do

| File | What it appears to do | Concept 1E overlap | Classification |
|---|---|---|---|
| `app/globals.css` | Replaces plain light/dark theme with command-center CSS variables, dark command background, panel helpers, focus helper, reduced-motion rule, and decorative grid/radial backgrounds. | High. Provides visual foundation for the target, but current radial-gradient treatment needs review against the no-random-gradient rule. | Modify for Concept 1E |
| `app/page.tsx` | Changes shell to dense command-center header with demo/read-only badges and stronger loading panel. Copy still says stale vendor follow-ups. | High. Useful shell, but copy must shift to vendor delay, evidence board, and closure action language. | Modify for Concept 1E |
| `components/dashboard/Dashboard.tsx` | Shrinks large dashboard file into orchestrator using extracted controls, metrics, and queue components; preserves data loading, URL state, analytics, selected delivery, and drawer focus restoration. | Very high. Good base for Concept 1E composition, but must replace repeated queue with ladder plus evidence board. | Keep/use for Concept 1E, then modify |
| `components/dashboard/DashboardControls.tsx` | New extracted filter/sort control component with accessible labels, reset behavior, active filter chips, and command-center styling. | Medium. Controls can remain, but may need reduced placement so they do not compete with the hero ladder. | Keep/use for Concept 1E |
| `components/dashboard/DashboardMetricsSection.tsx` | New KPI strip with revenue exposure, stale follow-ups, at-risk deliveries, next actions, and decorative signal bars. | Medium. Revenue exposure signal is useful, but current KPI strip risks repeating the ladder/evidence story. | Modify for Concept 1E |
| `components/dashboard/PriorityQueue.tsx` | New extracted queue rows with risk rail, facts, blocker/next action, selected state, loading/error/empty states, and detail buttons. | Very high. Strong row/fact material, but current queue duplicates what Concept 1E replaces with evidence board. | Modify for Concept 1E |
| `components/dashboard/dashboard-formatters.ts` | New formatting/tone helpers for currency, short dates, due delta, touch delta, risk tone, and status tone. | High. Useful foundation for delay stage and evidence facts. | Keep/use for Concept 1E |
| `components/dashboard/dashboard-types.ts` | New shared `LoadState<T>` union. | Medium. Useful small type boundary. | Keep/use for Concept 1E |
| `components/demo/DemoModeBadge.tsx` | Restyles existing demo badge to match command-center visual language with status dot. | Low-medium. Safe visual polish, but not core target. | Keep/use for Concept 1E |
| `components/detail/DeliveryDetailDrawer.tsx` | Restyles drawer, adds desktop placeholder panel when closed, keeps read-only detail content, risk explanation, follow-up timeline, draft panel, Escape/focus behavior, and backdrop closing. | High. Good read-only/detail base; must align with evidence board, closure criteria, and selected delay facts. | Modify for Concept 1E |
| `components/draft/DraftPanel.tsx` | Restyles existing mock draft generator, keeps `/api/drafts` POST, Generate, Copy, clipboard fallback, and explicit "only outbound action is Copy" copy. | High. Needs owner decision: keep mock Generate + Copy or shift to static copy-safe draft preview. | Must ask owner before changing behavior |
| `tests/browser/smoke.spec.ts` | Adds assertions for exact `Read-only`, risk rail, `AI follow-up draft`, mobile drawer backdrop, mobile queue reachability, and reduced-motion rendering. | High. Good test base, but expected headings/assertions must change from queue-first to ladder/evidence-board target. | Modify for Concept 1E |
| `tests/unit/naming-consistency.test.ts` | Increases two naming-consistency test timeouts from 15s to 45s. | None. Test stability only. | Unrelated but safe to leave |
| `tests/unit/dashboard/dashboard-presentation.test.tsx` | New unit tests for extracted KPI strip, controls, queue risk rail, selected state, and detail opening. | High. Useful base, but assertions must change for ladder/evidence board. | Modify for Concept 1E |
| `supabase/migrations/20260707235000_lock_down_legacy_public_tables.sql` | Enables RLS and revokes anon/authenticated privileges on legacy public tables when they exist. | None. SQL security/governance work, not UI. | Risky/unrelated |
| `supabase/migrations/20260707235500_lock_down_migration_tracking_table.sql` | Enables RLS and revokes anon/authenticated privileges on migration tracking table when it exists. | None. SQL security/governance work, not UI. | Risky/unrelated |
| `supabase/migrations/20260708000000_fix_set_updated_at_search_path.sql` | Sets `public.set_updated_at()` search path to empty when function exists. | None. SQL security/governance work, not UI. | Risky/unrelated |
| `supabase/migrations/20260708001000_add_deny_policies_for_locked_public_tables.sql` | Adds deny-all policies for anon/authenticated across locked public tables if policy does not exist. | None. SQL security/governance work, not UI. | Risky/unrelated |
| `output/grounded-ux-mockups.html` | Untracked static mockup HTML titled "Vendor Escalation Tracker - Grounded UX Mockups". | Low. Reference artifact only; not app implementation. | Risky/unrelated |
| `output/grounded-ux-mockups.png` | Untracked rendered mockup image. | Low. Reference artifact only; not app implementation. | Risky/unrelated |
| `output/grounded-ux-mockups-full.png` | Untracked rendered full mockup image. | Low. Reference artifact only; not app implementation. | Risky/unrelated |

## Classification Summary

### Keep/use for Concept 1E

- `components/dashboard/Dashboard.tsx` as thinner orchestrator base.
- `components/dashboard/DashboardControls.tsx` as accessible filter/sort base.
- `components/dashboard/dashboard-formatters.ts` as formatting/tone helper base.
- `components/dashboard/dashboard-types.ts` as shared load-state type.
- `components/demo/DemoModeBadge.tsx` as visual polish.

### Modify for Concept 1E

- `app/globals.css`
- `app/page.tsx`
- `components/dashboard/Dashboard.tsx`
- `components/dashboard/DashboardMetricsSection.tsx`
- `components/dashboard/PriorityQueue.tsx`
- `components/detail/DeliveryDetailDrawer.tsx`
- `tests/browser/smoke.spec.ts`
- `tests/unit/dashboard/dashboard-presentation.test.tsx`

Required modifications:

- Replace stale-follow-up/silence framing with vendor delay, stalled progress, closure criteria, and evidence language.
- Replace repeated queue emphasis with five-stage ladder plus selected vendor evidence board.
- Ensure visual treatment is not generic command-center dashboard reuse.
- Remove or reduce decorative signal bars/radial backgrounds if they read as decorative rather than decision-value UI.
- Keep read-only posture and no fake send/save/edit/import/export/live communication.

### Unrelated but safe to leave

- `tests/unit/naming-consistency.test.ts`

### Risky/unrelated

- `supabase/migrations/*.sql`
- `output/grounded-ux-mockups*.html/png`

### Must ask owner before touching

- `components/draft/DraftPanel.tsx` behavior: keep mock Generate + Copy or convert to static copy-safe preview.
- `supabase/migrations/*.sql`: security/DB behavior, outside UI implementation scope.
- `output/`: generated mockups/screenshots, outside implementation scope.
- `lib/data/**`, `app/api/**`, `supabase/**`, and seed/schema files if implementation needs demo data changes.

## Recommended Path

Recommendation: continue on `codex/command-center-ux`, but only after owner confirms the existing dirty UI refactor is the intended base.

Why:

- Current dirty UI split already creates useful responsibility boundaries.
- Starting in a new worktree would not automatically include the untracked UI files.
- Stashing everything would hide the useful UI split and increase chance of rework.
- A WIP commit would be risky unless carefully curated, because dirty tree mixes UI work, SQL security migrations, and generated output artifacts.

Best next sequence before implementation:

1. Owner confirms: build on current dirty UI work.
2. Leave SQL migrations and `output/` untouched.
3. Implement only Concept 1E UI changes on top of existing dashboard split.
4. Run full app validation after implementation.
5. Decide separately whether SQL migrations belong to a security/governance branch.

## Implementation Risk

Risk level: medium-high.

Primary risk: existing dirty UI work overlaps almost every file Concept 1E needs.

Specific risks:

- Queue extraction is useful, but Concept 1E removes the repeated queue as the middle section.
- Current copy still centers stale vendor follow-up/silence language; target is vendor delay/stalled progress.
- Current visual treatment includes decorative grid/radial backgrounds and KPI signal bars that may violate the approved direction if they become decoration.
- Draft panel behavior still has Generate; Figma target emphasizes copy-safe draft preview.
- SQL migrations are unrelated and must not be accidentally staged with UI work.
- `output/` artifacts should not be committed unless repo policy explicitly allows them.

## Files To Protect From Accidental Overwrite

Protect all existing dirty app files until owner confirms the implementation base:

- `app/globals.css`
- `app/page.tsx`
- `components/dashboard/Dashboard.tsx`
- `components/dashboard/DashboardControls.tsx`
- `components/dashboard/DashboardMetricsSection.tsx`
- `components/dashboard/PriorityQueue.tsx`
- `components/dashboard/dashboard-formatters.ts`
- `components/dashboard/dashboard-types.ts`
- `components/demo/DemoModeBadge.tsx`
- `components/detail/DeliveryDetailDrawer.tsx`
- `components/draft/DraftPanel.tsx`
- `tests/browser/smoke.spec.ts`
- `tests/unit/dashboard/dashboard-presentation.test.tsx`
- `tests/unit/naming-consistency.test.ts`

Do not touch without explicit approval:

- `supabase/migrations/20260707235000_lock_down_legacy_public_tables.sql`
- `supabase/migrations/20260707235500_lock_down_migration_tracking_table.sql`
- `supabase/migrations/20260708000000_fix_set_updated_at_search_path.sql`
- `supabase/migrations/20260708001000_add_deny_policies_for_locked_public_tables.sql`
- `output/grounded-ux-mockups.html`
- `output/grounded-ux-mockups.png`
- `output/grounded-ux-mockups-full.png`
- `.env.local`
- `app/api/**`
- `lib/data/**`
- `lib/data/seed.ts`
- `lib/data/schema.ts`

## Implementation Can Proceed?

Conditional yes.

Implementation can proceed if owner approves building on the existing dirty UI split and confirms SQL migrations/output artifacts remain untouched.

Without that confirmation, implementation should pause because the dirty branch contains mixed-scope work.

# AGENTS.md

This repo governs UX/UI facelift work across multiple apps.

Before UX/UI work, Codex must read:

- docs/00_CHARTER.md
- docs/01_VISUAL_DIRECTION.md
- docs/02_UX_PRINCIPLES.md
- docs/03_DESIGN_TOKENS.md
- docs/04_LAYOUT_PATTERNS.md
- docs/05_COMPONENT_PATTERNS.md
- docs/09_STATUS_AND_SEVERITY.md
- docs/12_FIGMA_WORKFLOW.md
- docs/13_CODEX_WORKFLOW.md
- docs/14_VISUAL_QA.md
- docs/17_MCP_USAGE_POLICY.md
- apps/registry.json
- figma/FIGMA_LINKS.md

Codex must not freestyle visual design.
Codex must not introduce new UI dependencies without approval.
Codex must preserve business logic and data contracts in app repos.
Codex must provide before/after screenshots or visual proof for facelift work.
Codex must update app adoption tracking after meaningful progress.

## App Tracking Boundary

The `apps/app-01` through `apps/app-<#>` folders are adoption tracking folders only.
They may contain design-system artifacts such as `README.md`, `APP_INTAKE.md`, `UX_AUDIT.md`, `FACELIFT_PLAN.md`, `VISUAL_QA_REPORT.md`, Figma links, screenshot references, rollout notes, and decision records.
They must not contain application implementation code.

Forbidden under `apps/app-*`:

- `package.json`
- `package-lock.json`
- `pnpm-lock.yaml`
- `yarn.lock`
- `src/`
- `app/`
- `pages/`
- `components/`
- `lib/`
- `db/`
- `prisma/`
- `drizzle/`
- `public/`
- `next.config.*`
- `tailwind.config.*`
- `vite.config.*`
- `tsconfig.json`
- implementation source files for the app

Actual app code must remain in the app's own repo.

## Approved Visual Direction

- Enterprise operations command center.
- High signal-to-noise.
- Dense but readable.
- Strong status hierarchy.
- Executive polish.
- Operational confidence.
- Data-first layouts.

## Rejected Visual Direction

- Random neon gradients.
- Generic SaaS startup cards.
- Oversized emoji/icon decoration.
- Fake glassmorphism.
- Huge whitespace that reduces operational density.
- Decorative charts without decision value.
- Inconsistent badge colors.
- Low-contrast gray-on-gray text.

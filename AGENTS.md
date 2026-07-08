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
- docs/18_PORTFOLIO_DIFFERENTIATION.md
- apps/registry.json
- figma/FIGMA_LINKS.md

Codex must not freestyle visual design.
Codex must not introduce new UI dependencies without approval.
Codex must preserve business logic and data contracts in app repos.
Codex must provide before/after screenshots or visual proof for facelift work.
Codex must update app adoption tracking after meaningful progress.

## App Tracking Boundary

The `apps/app-01` through `apps/app-<#>` folders are adoption tracking folders only.
They may contain design-system artifacts such as `README.md`, `APP_INTAKE.md`, `APP_CREATIVE_BRIEF.md`, `UX_AUDIT.md`, `FACELIFT_PLAN.md`, `VISUAL_QA_REPORT.md`, Figma links, screenshot references, rollout notes, and decision records.
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

## Portfolio Differentiation Rule

This repo must not make all apps look identical.
The design system exists to enforce quality, coherence, accessibility, and implementation discipline.
Each app must have a distinct creative brief, visual lane, hero moment, and visual signature.
Codex must not apply the same dashboard layout or same visual treatment to every app.
Reuse principles, not skins.

## Shared Quality Bar

- High signal-to-noise.
- Strong status hierarchy.
- Accessibility.
- Readable density.
- Operational clarity.
- Shared UX discipline.
- Shared token, status, and accessibility rules.
- App-specific visual identity.
- App-specific hero moment.
- App-specific design lane.

## Rejected Portfolio Anti-Patterns

- Random neon gradients.
- Generic AI dashboard slop.
- Oversized emoji/icon decoration.
- Fake glassmorphism.
- Huge whitespace that reduces operational density.
- Decorative charts without decision value.
- Inconsistent badge colors.
- Low-contrast gray-on-gray text.

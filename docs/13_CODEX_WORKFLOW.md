# Codex Workflow

Codex must read this repo before UI changes.

Codex must inspect the app stack before implementation.

Codex must produce a facelift plan before editing app files.

Codex must not freestyle visual design.

Codex must not introduce UI dependencies without approval.

Codex must not change backend behavior unless explicitly approved.

Codex must not change data contracts unless explicitly approved.

Codex must provide before/after screenshots or visual proof.

Codex must document deviations from Figma.

Codex must update adoption tracking.

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

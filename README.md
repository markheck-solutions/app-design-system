# App Design System

This repo is the shared governance home for an 8-app UX/UI facelift program.

Figma is the visual source of truth. GitHub is the written and enforceable source of truth. App repos consume this standard before UI, UX, layout, styling, dashboard, table, form, or visual facelift work.

Codex must use this repo before UX/UI work. The repo gives Codex durable direction, tokens, app registry data, prompts, validation tools, and rollout checklists.

Current status: draft v0.1.0.

## This Repo Is Not

- Not a production component package yet.
- Not a replacement for Figma.
- Not a place for secrets.
- Not app-specific business logic.

## Basic Workflow

1. Register app.
2. Audit app.
3. Capture current screenshots.
4. Create or select Figma target frames.
5. Implement with Codex.
6. Run visual QA.
7. Update adoption matrix.

## Source Of Truth Split

- Figma owns approved visual frames and design review.
- GitHub owns documented rules, tokens, prompts, scripts, app status, and validation.
- App repos own their implementation, business logic, and data contracts.

## Validation

Run:

```powershell
.\tools\validate-design-system.ps1
```


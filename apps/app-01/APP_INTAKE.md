# App Intake

## App name

Vendor Escalation Tracker

## App id

app-01

## Business purpose

Modern risk dashboard for vendor follow-ups, revenue exposure, escalation status, and next-action review.

## Primary users

Service delivery managers, escalation owners, IT reviewers, and portfolio reviewers.

## Repo URL

https://github.com/markheck-solutions/vendor-escalation-tracker.git

## Local path

C:\SoftwareFactory\01-projects\vendor-escalation-tracker

## Stack

Next.js App Router, React, TypeScript, Tailwind CSS, Drizzle ORM, Postgres/Supabase, Vitest, Playwright.

## Run command

`npm run dev -- --hostname 127.0.0.1 --port 3100`

## Test command

`npm run format:check`, `npm run lint`, `npm run typecheck`, `npm run test:coverage`, `npm run build`, optional `npm run test:browser`.

## Key routes

Root dashboard; read-only delivery detail drawer; mock follow-up draft generation.

## UI library

No third-party UI component kit identified from current package dependencies.

## Styling system

Tailwind CSS.

## Auth/data requirements

No login. Fake/seeded data only. Public demo uses `AI_PROVIDER=mock`. Runtime references `DATABASE_URL`, `NEXT_PUBLIC_SUPABASE_URL`, and `NEXT_PUBLIC_SUPABASE_ANON_KEY`.

## Known UX problems

Current-state Figma capture pending.

## Target classification

operations_dashboard

## Priority

P1

## Risks

Local repo has uncommitted work on `codex/command-center-ux`; avoid source edits until owner confirms that branch state is safe to use.

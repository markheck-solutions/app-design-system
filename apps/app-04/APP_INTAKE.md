# App Intake

## App name

Carrier Performance Intelligence Scorecard

## App id

app-04

## Business purpose

Executive carrier health scorecard with deterministic scoring, explainable insights, and demo-safe QBR brief generation.

## Primary users

Service delivery managers, carrier performance reviewers, executives, and IT reviewers.

## Repo URL

https://github.com/markheck-solutions/carrier-performance-scorecard.git

## Local path

C:\SoftwareFactory\01-projects\carrier-performance-scorecard

## Stack

Next.js App Router, React, TypeScript, Tailwind CSS, Drizzle ORM, Supabase/Postgres, Vitest, Playwright.

## Run command

`npm run dev`

## Test command

`npm run lint`, `npm run typecheck`, `npm run test -- --run`, `npm run test:coverage`, `npm run build`, `npm run quality:check`, `npm run test:browser`, `npm run db:seed`.

## Key routes

Root scorecard at `http://127.0.0.1:3100`; `/api/demo-data` exposes demo metadata.

## UI library

No third-party UI component kit identified from current package dependencies.

## Styling system

Tailwind CSS.

## Auth/data requirements

Read-only public demo. Fictional data only. Supabase-backed local data through `DATABASE_URL`. Public demo uses `NEXT_PUBLIC_DEMO_MODE=true` and `AI_PROVIDER=mock`.

## Known UX problems

Current-state Figma capture pending.

## Target classification

reporting_app

## Priority

P4

## Risks

Do not add real carriers, customers, circuits, orders, routes, addresses, contacts, pricing, or contracts.

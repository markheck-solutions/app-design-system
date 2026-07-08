# App Intake

## App name

Migration Cutover Readiness Command Center

## App id

app-03

## Business purpose

Command center for answering whether a migration wave can cut over, what blocks it, what next action is needed, and who owns it.

## Primary users

Telecom service delivery managers and migration readiness reviewers.

## Repo URL

https://github.com/markheck-solutions/migration-cutover-readiness.git

## Local path

C:\SoftwareFactory\01-projects\migration-cutover-readiness

## Stack

Next.js App Router, React, TypeScript, Tailwind CSS, Drizzle ORM, Postgres/PGlite, Sentry, PostHog, Vitest, Playwright.

## Run command

`npm run dev`

## Test command

`npm run format:check`, `npm run lint`, `npm run typecheck`, `npm run test:coverage`, `npm run dead-code`, `npm run duplication`, `npm run openapi:check`, `npm run sql:check`, `npm run build`, `npm audit --json`, `npm run safety`, `npm run quality:check`, `npm run readme:verify`, `npm run readiness-report`, `npm run db:seed`, `npm run test:browser`.

## Key routes

Root readiness command center at `http://127.0.0.1:3101`; seeded demo scenario.

## UI library

No third-party UI component kit identified from current package dependencies.

## Styling system

Tailwind CSS.

## Auth/data requirements

No login. No send/save/edit/delete flows. Fictional dataset only. Mock brief generation by default. `DATABASE_URL` required for seed.

## Known UX problems

Current-state Figma capture pending.

## Target classification

operations_dashboard

## Priority

P3

## Risks

Do not introduce real vendors, circuits, sites, contacts, routes, orders, pricing, addresses, or private URLs into docs, screenshots, or Figma.

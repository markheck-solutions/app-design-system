# App Intake

## App name

Team Coverage and PTO Readiness Planner

## App id

app-02

## Business purpose

Decision-support app for reviewing PTO requests against coverage risk, role requirements, overlapping requests, critical delivery windows, and fairness context.

## Primary users

Managers reviewing PTO readiness and coverage risk.

## Repo URL

https://github.com/markheck-solutions/pto-readiness-planner.git

## Local path

C:\SoftwareFactory\01-projects\pto-readiness-planner

## Stack

Next.js App Router, React, TypeScript, Tailwind CSS, Postgres, Vitest, Playwright.

## Run command

`npm run dev`

## Test command

`npm run format:check`, `npm run lint`, `npm run typecheck`, `npm run test:coverage`, `npm run build`, `npm run safety`, `npm run sql:check`, `npm run quality:check`, `npm run readme:verify`, `npm run readiness-report`, `npm run test:browser`, `npm run test:browser:smoke`.

## Key routes

Root app at `http://127.0.0.1:3102`; health endpoint at `/api/health`.

## UI library

No third-party UI component kit identified from current package dependencies.

## Styling system

Tailwind CSS.

## Auth/data requirements

No login. Fictional data only. Public demo uses mock drafts. Approve, defer, and ask-for-coverage actions are browser-only simulation.

## Known UX problems

Current-state Figma capture pending.

## Target classification

workflow_wizard

## Priority

P2

## Risks

This is decision support, not an HR workflow. Do not add real employee, HR, medical, compensation, or confidential staffing data.

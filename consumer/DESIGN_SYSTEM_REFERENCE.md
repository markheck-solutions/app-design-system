# Design System Reference

App repos should reference this design-system repo without copying the whole repo.

Recommended pattern:

1. Keep this repo cloned at `C:\repos\app-design-system`.
2. Add the shared snippet from `consumer/AGENTS_SNIPPET_FOR_APP_REPOS.md` to the app repo `AGENTS.md`.
3. Add `docs/design-system/README.md` in the app repo with a pointer back to this repo.
4. Store app-specific intake, plans, and QA reports in this repo under `apps/app-XX/`.
5. Store implementation code only in the app repo.

Do not copy token files or governance docs into app repos unless a specific app needs a frozen reference for release evidence.


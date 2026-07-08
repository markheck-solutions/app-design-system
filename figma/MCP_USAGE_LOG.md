# MCP Usage Log

## 2026-07-07 - Initial verification

Purpose: verify Figma/Codex integration before repo bootstrap.

Observed Figma MCP tools:

- `whoami`
- `get_design_context`
- `get_metadata`
- `use_figma`
- `create_new_file`
- `generate_figma_design`
- `upload_assets`
- `generate_diagram`
- `get_figjam`

Figma skills available:

- `figma-use`
- `figma-create-new-file`
- `figma-generate-library`
- `figma-generate-design`
- `figma-generate-diagram`
- `figma-code-connect`

Account/auth result:

- `whoami` failed with `UNAUTHORIZED`.
- Error detail: `Reauthentication required`.
- Error action: `TRIGGER_REAUTHENTICATION`.
- Account name/email could not be confirmed.

Write-to-canvas availability:

- Tool schemas are available for `use_figma` and `create_new_file`.
- Actual write access is blocked until Figma reauthentication succeeds.

Design-context availability:

- Tool schema is available for `get_design_context`.
- No Figma node was inspected because no node-specific user link was provided and random Figma files must not be inspected.

Outcome:

- Remote Figma MCP appears installed in Codex.
- Auth is currently blocked.
- Repo bootstrap continues.
- Figma foundation creation deferred to `figma/TODO_CREATE_FIGMA_FOUNDATION.md`.

## 2026-07-08 - Auth reconciliation after plugin connection

Purpose: confirm Figma connector auth after local `main` and `origin/main` were reconciled.

Command/tool:

- Figma connector `_whoami`

Account/auth result:

- PASS.
- Handle: `mheck83`
- Email: `mheck83@gmail.com`
- Plan: `mheck83's team`
- Plan key: `team::1624928493158078131`
- Seat: `Full`
- Tier: `pro`
- Seat type: `expert`

Write-to-canvas availability:

- Not tested in this step.
- No Figma file was created.
- `figma/FIGMA_LINKS.md` remains unchanged.

Outcome:

- Figma auth is usable for the authenticated connector.
- Foundation file creation remains deferred until explicitly started after repo reconciliation.

## 2026-07-08 - Foundation file creation

Purpose: create the initial Figma source-of-truth foundation for `app-design-system`.

Account/auth result:

- `_whoami` PASS.
- Handle: `mheck83`
- Email: `mheck83@gmail.com`
- Plan: `mheck83's team`
- Plan key: `team::1624928493158078131`
- Seat: `Full`
- Tier: `pro`
- Seat type: `expert`

Tools used:

- `_whoami`
- `_create_new_file`
- `_get_libraries`
- `_search_design_system`
- `_use_figma`
- `_get_metadata`
- `_get_screenshot`

File creation result:

- PASS.
- File name: `MS App Design System`
- File key: `ricGmgtrDAtklOoB9CkBZb`
- File URL: `https://www.figma.com/design/ricGmgtrDAtklOoB9CkBZb`

Write-to-canvas result:

- PASS.
- Created or verified 16 required pages.
- Created 16 starter frames:
  - `ADS / Foundation / Color Roles / v0.1`
  - `ADS / Foundation / Typography / v0.1`
  - `ADS / Foundation / Spacing / v0.1`
  - `ADS / Foundation / Elevation / v0.1`
  - `ADS / Component / Status Badge Set / v0.1`
  - `ADS / Component / KPI Strip / v0.1`
  - `ADS / Component / Blocker Panel / v0.1`
  - `ADS / Component / Action Queue / v0.1`
  - `ADS / Component / Detail Drawer / v0.1`
  - `ADS / Layout / Operations Dashboard / v0.1`
  - `ADS / Layout / Table + Detail Drawer / v0.1`
  - `ADS / Layout / Executive Summary / v0.1`
  - `ADS / Layout / Admin Configuration Shell / v0.1`
  - `ADS / Layout / Workflow Wizard / v0.1`
  - `ADS / Layout / Intake Form / v0.1`
  - `ADS / Layout / Reporting Page / v0.1`
- Created 4 variable collections:
  - `ADS Primitives`
  - `ADS Semantic`
  - `ADS Spacing`
  - `ADS Radius`
- Created 5 text styles under `ADS/Typography`.
- Created 3 effect styles under `ADS/Elevation`.

Validation result:

- Direct Figma inventory found no missing required pages.
- Direct Figma inventory found no missing required starter frames.
- Metadata checks confirmed `01 Foundations`, `03 Components`, and `04 Layout Patterns` contain the expected frame names.
- Screenshot checks completed for:
  - Cover frame `2:87`
  - Color Roles frame `3:2`
  - Operations Dashboard frame `5:2`

Notes:

- Existing `figma/FIGMA_LINKS.md` had no prior file URL to locate, so a new design file was created.
- Root-level `_get_metadata` without a node id listed only `00 Cover`; page-specific metadata and direct inventory verified the full page/frame set.
- No app repos were modified.
- No app UI was implemented.
- GitHub governance was not changed in this task.

## 2026-07-08 - app-01 current-state capture

Purpose: capture Vendor Escalation Tracker current state in Figma before redesign work.

Account/auth result:

- `_whoami` PASS.
- Handle: `mheck83`
- Email: `mheck83@gmail.com`
- Plan: `mheck83's team`
- Plan key: `team::1624928493158078131`
- Seat: `Full`
- Tier: `pro`
- Seat type: `expert`

Tools used:

- `_whoami`
- `_use_figma`
- `_upload_assets`
- `_get_screenshot`
- Local Playwright Chromium screenshot capture

File result:

- PASS.
- File name: `MS App Design System`
- File key: `ricGmgtrDAtklOoB9CkBZb`
- File URL: `https://www.figma.com/design/ricGmgtrDAtklOoB9CkBZb`

Write-to-canvas result:

- PASS.
- Page used: `20 Pilot App - Current State`
- Created current-state frames:
  - `ADS / Pilot / Vendor Escalation Tracker / Current / Root Dashboard / Desktop` (`9:2`)
  - `ADS / Pilot / Vendor Escalation Tracker / Current / Detail Drawer / Desktop` (`9:4`)
- Uploaded screenshot fills:
  - Root dashboard image node `9:3`, image hash `d7402ab0f354c8ebfdde6736c3b9a575ad1edd81`
  - Detail drawer image node `9:5`, image hash `b30712eb69ca4dd7ca3e0d39e164bc41f02bddd2`

Capture proof:

- Local app `/` returned HTTP 200.
- Local app `/api/health` returned HTTP 200 with `{"ok":true}`.
- Screenshot files:
  - `C:\Users\mheck\AppData\Local\Temp\app-01-current-capture-20260708-093654\app-01-current-root-dashboard-desktop.png`
  - `C:\Users\mheck\AppData\Local\Temp\app-01-current-capture-20260708-093654\app-01-current-detail-drawer-loaded-desktop.png`
- Figma screenshot checks completed for frame `9:2` and frame `9:4`.

Notes:

- App repo branch was `codex/command-center-ux`.
- App repo had uncommitted work; source files were not edited or staged.
- No redesign, app UI implementation, or GitHub governance work was performed.
- No failed Figma actions.

## 2026-07-08 - app-01 target design directions

Purpose: create three Vendor Escalation Tracker target directions in Figma for owner review.

Account/auth result:

- `_whoami` PASS.
- Handle: `mheck83`
- Email: `mheck83@gmail.com`
- Plan: `mheck83's team`
- Plan key: `team::1624928493158078131`
- Seat: `Full`
- Tier: `pro`
- Seat type: `expert`

Tools used:

- `_whoami`
- `_get_metadata`
- `_get_libraries`
- `_search_design_system`
- `_use_figma`
- `_get_screenshot`

File result:

- PASS.
- File name: `MS App Design System`
- File key: `ricGmgtrDAtklOoB9CkBZb`
- File URL: `https://www.figma.com/design/ricGmgtrDAtklOoB9CkBZb`

Inspection result:

- Current-state root frame `9:2` resolved and screenshot check passed.
- Current-state detail drawer frame `9:4` resolved and screenshot check passed after one transient retry.
- Target page `21 Pilot App - Target State` existed and initially had no app-01 target frames.
- Local ADS variables, text styles, and elevation styles were present.
- External design-system search for app-specific assets returned no reusable matches.

Write-to-canvas result:

- PASS.
- Page used: `21 Pilot App - Target State`
- Created target direction frames:
  - `ADS / Pilot / Vendor Escalation Tracker / Target / Direction A - Escalation War Room` (`15:2`)
  - `ADS / Pilot / Vendor Escalation Tracker / Target / Direction B - Revenue Risk Desk` (`15:120`)
  - `ADS / Pilot / Vendor Escalation Tracker / Target / Direction C - Vendor Silence Radar` (`15:233`)
- Frame links:
  - Direction A: `https://www.figma.com/design/ricGmgtrDAtklOoB9CkBZb/MS-App-Design-System?node-id=15-2`
  - Direction B: `https://www.figma.com/design/ricGmgtrDAtklOoB9CkBZb/MS-App-Design-System?node-id=15-120`
  - Direction C: `https://www.figma.com/design/ricGmgtrDAtklOoB9CkBZb/MS-App-Design-System?node-id=15-233`

Visual verification:

- Screenshot checks completed for frames `15:2`, `15:120`, and `15:233`.
- Rendered screenshots were downloaded locally for inspection:
  - `C:\Users\mheck\AppData\Local\Temp\app01-direction-a-fixed.png`
  - `C:\Users\mheck\AppData\Local\Temp\app01-direction-b-fixed.png`
  - `C:\Users\mheck\AppData\Local\Temp\app01-direction-c-fixed.png`
- Corrected text clipping by recreating the frames with explicit text heights and fixed horizontal containers.

Failed or corrected Figma actions:

- `_get_screenshot` for current-state detail drawer `9:4` initially failed with HTTP 503; retry passed.
- `_use_figma` variable/style inspection initially failed with HTTP 503; retry passed.
- First target write failed atomically because a table-header text call passed an object where a width number was required; no nodes were created.
- First successful target write produced clipped fixed-height text; frames `13:2`, `13:120`, and `13:233` were removed and replaced with verified frames `15:2`, `15:120`, and `15:233`.

Notes:

- No app repo was modified.
- No app UI was implemented.
- No GitHub governance work was performed.

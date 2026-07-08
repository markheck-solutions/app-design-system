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


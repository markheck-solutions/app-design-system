$ErrorActionPreference = "Stop"

$repoRoot = Split-Path -Parent $PSScriptRoot
$failures = New-Object System.Collections.Generic.List[string]

function Add-Failure {
  param([string]$Message)
  $failures.Add($Message)
}

function Test-RepoPath {
  param(
    [string]$RelativePath,
    [ValidateSet("File", "Directory")]
    [string]$Type
  )

  $path = Join-Path $repoRoot $RelativePath
  if ($Type -eq "File") {
    if (-not (Test-Path -LiteralPath $path -PathType Leaf)) {
      Add-Failure "Missing file: $RelativePath"
    }
  } else {
    if (-not (Test-Path -LiteralPath $path -PathType Container)) {
      Add-Failure "Missing directory: $RelativePath"
    }
  }
}

function Test-AppTrackingBoundary {
  $appsRoot = Join-Path $repoRoot "apps"
  if (-not (Test-Path -LiteralPath $appsRoot -PathType Container)) {
    return
  }

  $forbiddenDirectoryNames = @(
    "src",
    "app",
    "pages",
    "components",
    "lib",
    "db",
    "prisma",
    "drizzle",
    "public"
  )

  $forbiddenExactFileNames = @(
    "package.json",
    "package-lock.json",
    "pnpm-lock.yaml",
    "yarn.lock",
    "tsconfig.json"
  )

  $forbiddenWildcardFileNames = @(
    "next.config.*",
    "tailwind.config.*",
    "vite.config.*"
  )

  $forbiddenSourceExtensions = @(
    ".cjs",
    ".css",
    ".cs",
    ".go",
    ".html",
    ".java",
    ".js",
    ".jsx",
    ".kt",
    ".less",
    ".mjs",
    ".php",
    ".py",
    ".rb",
    ".rs",
    ".sass",
    ".scss",
    ".sql",
    ".svelte",
    ".swift",
    ".ts",
    ".tsx",
    ".vue"
  )

  $appTrackingDirectories = Get-ChildItem -LiteralPath $appsRoot -Directory -Force |
    Where-Object { $_.Name -match "^app-\d+$" }

  foreach ($appDirectory in $appTrackingDirectories) {
    $directories = Get-ChildItem -LiteralPath $appDirectory.FullName -Recurse -Directory -Force
    foreach ($directory in $directories) {
      if ($forbiddenDirectoryNames -contains $directory.Name) {
        $relative = [System.IO.Path]::GetRelativePath($repoRoot, $directory.FullName)
        Add-Failure "Forbidden app implementation directory under tracking folder: $relative"
      }
    }

    $files = Get-ChildItem -LiteralPath $appDirectory.FullName -Recurse -File -Force
    foreach ($file in $files) {
      $relativeToApp = [System.IO.Path]::GetRelativePath($appDirectory.FullName, $file.FullName) -replace "\\", "/"
      $segments = @($relativeToApp -split "/")
      $parentSegments = @()
      if ($segments.Count -gt 1) {
        $parentSegments = $segments[0..($segments.Count - 2)]
      }

      if (@($parentSegments | Where-Object { $forbiddenDirectoryNames -contains $_ }).Count -gt 0) {
        continue
      }

      $relative = [System.IO.Path]::GetRelativePath($repoRoot, $file.FullName)

      if ($forbiddenExactFileNames -contains $file.Name) {
        Add-Failure "Forbidden app implementation file under tracking folder: $relative"
        continue
      }

      $matchesForbiddenWildcard = $false
      foreach ($pattern in $forbiddenWildcardFileNames) {
        if ($file.Name -like $pattern) {
          $matchesForbiddenWildcard = $true
          break
        }
      }

      if ($matchesForbiddenWildcard) {
        Add-Failure "Forbidden app implementation config under tracking folder: $relative"
        continue
      }

      if ($forbiddenSourceExtensions -contains $file.Extension.ToLowerInvariant()) {
        Add-Failure "Forbidden app implementation source file under tracking folder: $relative"
      }
    }
  }
}

$requiredFiles = @(
  "README.md",
  "AGENTS.md",
  "DESIGN_SYSTEM_VERSION.md",
  "CHANGELOG.md",
  "LICENSE.md",
  ".gitignore",
  ".github/pull_request_template.md",
  ".github/workflows/validate-design-system.yml",
  ".agents/skills/app-facelift/SKILL.md",
  ".agents/skills/figma-handoff/SKILL.md",
  ".agents/skills/visual-qa/SKILL.md",
  ".agents/skills/design-system-governance/SKILL.md",
  "docs/00_CHARTER.md",
  "docs/01_VISUAL_DIRECTION.md",
  "docs/02_UX_PRINCIPLES.md",
  "docs/03_DESIGN_TOKENS.md",
  "docs/04_LAYOUT_PATTERNS.md",
  "docs/05_COMPONENT_PATTERNS.md",
  "docs/06_DASHBOARD_PATTERNS.md",
  "docs/07_TABLE_PATTERNS.md",
  "docs/08_FORM_PATTERNS.md",
  "docs/09_STATUS_AND_SEVERITY.md",
  "docs/10_ACCESSIBILITY.md",
  "docs/11_RESPONSIVE_RULES.md",
  "docs/12_FIGMA_WORKFLOW.md",
  "docs/13_CODEX_WORKFLOW.md",
  "docs/14_VISUAL_QA.md",
  "docs/15_DECISION_RECORDS.md",
  "docs/16_APP_ROLLOUT_WORKFLOW.md",
  "docs/17_MCP_USAGE_POLICY.md",
  "docs/APP_ADOPTION_MATRIX.md",
  "figma/FIGMA_FILE_STRUCTURE.md",
  "figma/FIGMA_LINKS.md",
  "figma/FRAME_NAMING_CONVENTIONS.md",
  "figma/HANDOFF_CHECKLIST.md",
  "figma/MCP_USAGE_LOG.md",
  "figma/FIGMA_BACKUP_POLICY.md",
  "figma/TODO_CREATE_FIGMA_FOUNDATION.md",
  "tokens/design-tokens.json",
  "tokens/css/theme.css",
  "tokens/docs/color-roles.md",
  "tokens/docs/spacing-scale.md",
  "tokens/docs/typography-scale.md",
  "tokens/docs/elevation-scale.md",
  "tokens/docs/motion-scale.md",
  "prompts/CODEX_00_VERIFY_FIGMA_MCP.md",
  "prompts/CODEX_01_BOOTSTRAP_REPO.md",
  "prompts/CODEX_02_CREATE_FIGMA_FOUNDATION.md",
  "prompts/CODEX_03_APP_INTAKE.md",
  "prompts/CODEX_04_IMPORT_APP_TO_FIGMA.md",
  "prompts/CODEX_05_APP_FACELIFT_PLAN.md",
  "prompts/CODEX_06_IMPLEMENT_FROM_FIGMA.md",
  "prompts/CODEX_07_VISUAL_QA.md",
  "prompts/CODEX_08_PR_REVIEW.md",
  "prompts/CODEX_09_ROLLOUT_NEXT_APP.md",
  "templates/APP_INTAKE.md",
  "templates/APP_FACELIFT_PLAN.md",
  "templates/UX_AUDIT.md",
  "templates/VISUAL_QA_REPORT.md",
  "templates/DESIGN_DECISION_RECORD.md",
  "templates/FIGMA_HANDOFF.md",
  "templates/APP_ROLLOUT_REPORT.md",
  "consumer/AGENTS_SNIPPET_FOR_APP_REPOS.md",
  "consumer/DESIGN_SYSTEM_REFERENCE.md",
  "consumer/install-design-system-reference.ps1",
  "apps/README.md",
  "apps/registry.json",
  "tools/validate-design-system.ps1",
  "tools/new-app-intake.ps1"
)

$requiredDirectories = @(
  ".github/workflows",
  ".agents/skills/app-facelift",
  ".agents/skills/figma-handoff",
  ".agents/skills/visual-qa",
  ".agents/skills/design-system-governance",
  "docs",
  "figma",
  "tokens/css",
  "tokens/docs",
  "prompts",
  "templates",
  "consumer",
  "apps",
  "examples/approved/dashboards",
  "examples/approved/tables",
  "examples/approved/forms",
  "examples/approved/navigation",
  "examples/approved/status-panels",
  "examples/approved/empty-states",
  "examples/approved/loading-states",
  "examples/approved/error-states",
  "examples/rejected/generic-ai-dashboard",
  "examples/rejected/toy-saas-gradient",
  "examples/rejected/low-density-enterprise-ui",
  "examples/rejected/inconsistent-status-colors",
  "examples/rejected/decorative-charts",
  "examples/rejected/fake-glassmorphism",
  "tools"
)

for ($i = 1; $i -le 8; $i++) {
  $appId = "app-{0:D2}" -f $i
  $requiredDirectories += "apps/$appId"
  $requiredFiles += "apps/$appId/README.md"
}

$requiredFiles | ForEach-Object { Test-RepoPath -RelativePath $_ -Type File }
$requiredDirectories | ForEach-Object { Test-RepoPath -RelativePath $_ -Type Directory }

try {
  $tokensPath = Join-Path $repoRoot "tokens/design-tokens.json"
  $null = Get-Content -Raw -LiteralPath $tokensPath | ConvertFrom-Json
} catch {
  Add-Failure "Invalid JSON: tokens/design-tokens.json - $($_.Exception.Message)"
}

try {
  $registryPath = Join-Path $repoRoot "apps/registry.json"
  $registry = Get-Content -Raw -LiteralPath $registryPath | ConvertFrom-Json
  $ids = @($registry.apps | ForEach-Object { $_.id })
  for ($i = 1; $i -le 8; $i++) {
    $expectedId = "app-{0:D2}" -f $i
    if ($ids -notcontains $expectedId) {
      Add-Failure "Missing app in registry: $expectedId"
    }
  }
} catch {
  Add-Failure "Invalid JSON: apps/registry.json - $($_.Exception.Message)"
}

$skillFiles = @(
  ".agents/skills/app-facelift/SKILL.md",
  ".agents/skills/figma-handoff/SKILL.md",
  ".agents/skills/visual-qa/SKILL.md",
  ".agents/skills/design-system-governance/SKILL.md"
)

foreach ($skillFile in $skillFiles) {
  Test-RepoPath -RelativePath $skillFile -Type File
}

Test-AppTrackingBoundary

$allowedTokenNamedFiles = @(
  "tokens\design-tokens.json",
  "docs\03_DESIGN_TOKENS.md"
)

$credentialPatterns = @(
  ".env",
  ".env.local",
  "*.pem",
  "*.key",
  "*token*",
  "*secret*",
  "credentials.*"
)

$files = Get-ChildItem -LiteralPath $repoRoot -Recurse -File -Force |
  Where-Object { $_.FullName -notmatch "\\.git\\" }

foreach ($file in $files) {
  $relative = [System.IO.Path]::GetRelativePath($repoRoot, $file.FullName)
  $relativeNormalized = $relative -replace "/", "\"
  foreach ($pattern in $credentialPatterns) {
    if ($file.Name -like $pattern) {
      if ($allowedTokenNamedFiles -contains $relativeNormalized) {
        continue
      }
      Add-Failure "Credential-like file name present: $relative"
      break
    }
  }
}

if ($failures.Count -gt 0) {
  Write-Output "FAIL"
  $failures | ForEach-Object { Write-Output "- $_" }
  exit 1
}

Write-Output "PASS"
Write-Output "Required files and directories exist."
Write-Output "Token JSON parsed."
Write-Output "App registry JSON parsed and includes app-01 through app-08."
Write-Output "Repo-local Codex skills exist."
Write-Output "App tracking folders contain no forbidden implementation files or directories."
Write-Output "No credential-like files detected outside approved design-token docs."

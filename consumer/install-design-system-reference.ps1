param(
  [Parameter(Mandatory = $true)]
  [string]$AppRepoPath
)

$ErrorActionPreference = "Stop"

$resolvedAppRepo = Resolve-Path -LiteralPath $AppRepoPath
$appRoot = $resolvedAppRepo.Path
$snippetPath = Join-Path $PSScriptRoot "AGENTS_SNIPPET_FOR_APP_REPOS.md"
$snippet = Get-Content -Raw -LiteralPath $snippetPath
$changes = New-Object System.Collections.Generic.List[string]

function Backup-File {
  param([string]$Path)

  if (Test-Path -LiteralPath $Path) {
    $timestamp = Get-Date -Format "yyyyMMdd-HHmmss"
    $backupPath = "$Path.bak-$timestamp"
    Copy-Item -LiteralPath $Path -Destination $backupPath
    $changes.Add("backup: $backupPath")
  }
}

$designSystemDir = Join-Path $appRoot "docs/design-system"
if (-not (Test-Path -LiteralPath $designSystemDir)) {
  New-Item -ItemType Directory -Force -Path $designSystemDir | Out-Null
  $changes.Add("created directory: $designSystemDir")
}

$referenceReadme = Join-Path $designSystemDir "README.md"
$referenceContent = @"
# Shared App Design System

This app references the shared design-system governance repo.

- Local path: C:\repos\app-design-system
- Remote: https://github.com/markheck-solutions/app-design-system.git
- Current design-system version: 0.1.0

Before UI, UX, layout, styling, dashboard, table, form, or visual facelift work, read the shared design system docs.
"@

if (Test-Path -LiteralPath $referenceReadme) {
  $existingReference = Get-Content -Raw -LiteralPath $referenceReadme
  if ($existingReference -ne $referenceContent) {
    Backup-File -Path $referenceReadme
    Set-Content -LiteralPath $referenceReadme -Value $referenceContent -Encoding UTF8
    $changes.Add("updated: $referenceReadme")
  }
} else {
  Set-Content -LiteralPath $referenceReadme -Value $referenceContent -Encoding UTF8
  $changes.Add("created: $referenceReadme")
}

$agentsPath = Join-Path $appRoot "AGENTS.md"
if (Test-Path -LiteralPath $agentsPath) {
  $agentsContent = Get-Content -Raw -LiteralPath $agentsPath
  if ($agentsContent -notmatch [regex]::Escape("## Shared app design system")) {
    Backup-File -Path $agentsPath
    Add-Content -LiteralPath $agentsPath -Value "`r`n$snippet" -Encoding UTF8
    $changes.Add("appended snippet: $agentsPath")
  } else {
    $changes.Add("unchanged: $agentsPath already contains shared snippet")
  }
} else {
  Set-Content -LiteralPath $agentsPath -Value $snippet -Encoding UTF8
  $changes.Add("created: $agentsPath")
}

if ($changes.Count -eq 0) {
  Write-Output "No changes."
} else {
  $changes | ForEach-Object { Write-Output $_ }
}


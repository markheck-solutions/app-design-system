param(
  [Parameter(Mandatory = $true)]
  [ValidatePattern("^app-\d{2}$")]
  [string]$AppId,

  [Parameter(Mandatory = $true)]
  [string]$AppName,

  [switch]$Force
)

$ErrorActionPreference = "Stop"

$repoRoot = Split-Path -Parent $PSScriptRoot
$templatePath = Join-Path $repoRoot "templates/APP_INTAKE.md"
$appDir = Join-Path $repoRoot "apps/$AppId"
$targetPath = Join-Path $appDir "APP_INTAKE.md"

if (-not (Test-Path -LiteralPath $templatePath -PathType Leaf)) {
  throw "Template missing: $templatePath"
}

if (-not (Test-Path -LiteralPath $appDir -PathType Container)) {
  New-Item -ItemType Directory -Force -Path $appDir | Out-Null
}

if ((Test-Path -LiteralPath $targetPath -PathType Leaf) -and -not $Force) {
  throw "Intake file already exists: $targetPath. Use -Force to overwrite."
}

$content = Get-Content -Raw -LiteralPath $templatePath
$content = $content -replace "(?s)(## App name\r?\n\r?\n).*?(\r?\n\r?\n## App id)", "`${1}$AppName`${2}"
$content = $content -replace "(?s)(## App id\r?\n\r?\n).*?(\r?\n\r?\n## Business purpose)", "`${1}$AppId`${2}"

Set-Content -LiteralPath $targetPath -Value $content -Encoding UTF8
Write-Output "Created: $targetPath"

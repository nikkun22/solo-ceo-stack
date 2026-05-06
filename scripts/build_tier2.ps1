# build_tier2.ps1
# Packages the Solo CEO Stack Basic Pack (v0.2.0) into a ZIP file.
# Run from the repository root: .\scripts\build_tier2.ps1

param (
    [string]$OutputDir = ".",
    [string]$Version = "v0.2.0"
)

$ErrorActionPreference = "Stop"
$ZipName = "solo-ceo-stack-basic-pack-$Version.zip"
$ZipPath = Join-Path $OutputDir $ZipName
$RepoRoot = Split-Path -Parent $PSScriptRoot
$TempDir = Join-Path $env:TEMP "solo-ceo-stack-build-$(Get-Random)"

Write-Host "=== Solo CEO Stack Basic Pack Builder ===" -ForegroundColor Cyan
Write-Host "Version : $Version"
Write-Host "Output  : $ZipPath"
Write-Host "Repo    : $RepoRoot"
Write-Host ""

# Files and directories to INCLUDE in the Basic Pack
$IncludeItems = @(
    # All 16 CxO prompts
    "prompts\cxo\CEO.md",
    "prompts\cxo\COO.md",
    "prompts\cxo\CTO.md",
    "prompts\cxo\CFO.md",
    "prompts\cxo\CMO.md",
    "prompts\cxo\CSO.md",
    "prompts\cxo\CPO.md",
    "prompts\cxo\CCO.md",
    "prompts\cxo\CHRO.md",
    "prompts\cxo\CLO.md",
    "prompts\cxo\CIO.md",
    "prompts\cxo\CISO.md",
    "prompts\cxo\CDO.md",
    "prompts\cxo\CBO.md",
    "prompts\cxo\CAO.md",
    "prompts\cxo\CRO.md",
    # Templates
    "templates\claude_md\CLAUDE.md",
    "templates\claude_md\CLAUDE.local.md.template",
    "templates\dri_mapping.md",
    "templates\operations_manual.md",
    # Docs
    "docs\org_chart.md",
    "docs\ja\README.md",
    # Root files
    "README.md",
    "LICENSE",
    "CHANGELOG.md"
)

# Files to EXCLUDE (free-tier only or internal)
# CLAUDE.md at root is the project's own config, not for distribution
$ExcludeFromRoot = @("CLAUDE.md")

Write-Host "Validating source files..." -ForegroundColor Yellow
$missing = @()
foreach ($item in $IncludeItems) {
    $fullPath = Join-Path $RepoRoot $item
    if (-not (Test-Path $fullPath)) {
        $missing += $item
        Write-Host "  MISSING: $item" -ForegroundColor Red
    } else {
        Write-Host "  OK     : $item" -ForegroundColor Green
    }
}

if ($missing.Count -gt 0) {
    Write-Host ""
    Write-Host "ERROR: $($missing.Count) file(s) missing. Aborting." -ForegroundColor Red
    exit 1
}

Write-Host ""
Write-Host "Creating temporary staging directory..." -ForegroundColor Yellow
New-Item -ItemType Directory -Path $TempDir -Force | Out-Null

foreach ($item in $IncludeItems) {
    $src = Join-Path $RepoRoot $item
    $dst = Join-Path $TempDir $item
    $dstDir = Split-Path -Parent $dst
    if (-not (Test-Path $dstDir)) {
        New-Item -ItemType Directory -Path $dstDir -Force | Out-Null
    }
    Copy-Item -Path $src -Destination $dst -Force
}

Write-Host "Staging complete. Files: $($IncludeItems.Count)" -ForegroundColor Green

# Remove existing ZIP if present
if (Test-Path $ZipPath) {
    Remove-Item $ZipPath -Force
    Write-Host "Removed existing ZIP: $ZipPath" -ForegroundColor Yellow
}

Write-Host ""
Write-Host "Creating ZIP archive..." -ForegroundColor Yellow
Compress-Archive -Path (Join-Path $TempDir "*") -DestinationPath $ZipPath -CompressionLevel Optimal

# Cleanup temp
Remove-Item -Recurse -Force $TempDir

# Verify
if (Test-Path $ZipPath) {
    $zipSize = (Get-Item $ZipPath).Length
    $zipSizeKB = [math]::Round($zipSize / 1KB, 1)
    Write-Host ""
    Write-Host "=== Build Successful ===" -ForegroundColor Cyan
    Write-Host "Output : $ZipPath"
    Write-Host "Size   : $zipSizeKB KB ($zipSize bytes)"
    Write-Host "Files  : $($IncludeItems.Count) files packaged"
    Write-Host ""
    Write-Host "Contents summary:" -ForegroundColor Yellow
    Write-Host "  prompts/cxo/     : 16 CxO agent prompts"
    Write-Host "  templates/       : CLAUDE.md + CLAUDE.local + DRI mapping + Ops manual"
    Write-Host "  docs/            : Org chart + ja/README"
    Write-Host "  README.md        : English documentation"
    Write-Host "  LICENSE          : MIT"
    Write-Host "  CHANGELOG.md     : Version history"
    Write-Host ""
    Write-Host "NOT included (free tier only / internal):"
    Write-Host "  CLAUDE.md (root) : Project-specific config, not for distribution"
    Write-Host "  docs/booth_listing_draft.md : Internal use only"
    Write-Host "  docs/x_announcement_drafts.md : Internal use only"
    Write-Host "  scripts/         : Build tooling, not end-user content"
} else {
    Write-Host "ERROR: ZIP was not created." -ForegroundColor Red
    exit 1
}

# Project Template Generator
# This script scaffolds the standard directory structure and templates from the TEMPLATE directory.

$sourceDir = Join-Path -Path $PSScriptRoot -ChildPath "TEMPLATE"
$targetDir = $PSScriptRoot

Write-Host "Scaffolding baseline artifacts..." -ForegroundColor Magenta

if (Test-Path -Path $sourceDir) {
    # Get all items (files and directories) from the TEMPLATE folder
    $items = Get-ChildItem -Path $sourceDir -Recurse

    foreach ($item in $items) {
        # Calculate the relative path to maintain folder structure
        $relativePath = $item.FullName.Substring($sourceDir.Length + 1)
        $destPath = Join-Path -Path $targetDir -ChildPath $relativePath

        if ($item.PSIsContainer) {
            # Create directory if it doesn't exist
            if (-not (Test-Path -Path $destPath)) {
                New-Item -ItemType Directory -Force -Path $destPath | Out-Null
            }
        }
        else {
            # Copy file if it doesn't exist to prevent overwriting existing work
            if (-not (Test-Path -Path $destPath)) {
                # Ensure parent directory exists before copying
                $parentDir = Split-Path -Path $destPath -Parent
                if (-not (Test-Path -Path $parentDir)) {
                    New-Item -ItemType Directory -Force -Path $parentDir | Out-Null
                }
                
                Copy-Item -Path $item.FullName -Destination $destPath
                Write-Host "Created: $relativePath" -ForegroundColor Green
            }
            else {
                Write-Host "Skipped (Already exists): $relativePath" -ForegroundColor Yellow
            }
        }
    }
}
else {
    Write-Host "Error: TEMPLATE directory not found at $sourceDir" -ForegroundColor Red
}

Write-Host "Scaffolding complete!" -ForegroundColor Magenta

# Self-destruct gracefully
if ($PSCommandPath) {
    Remove-Item -Path $PSCommandPath -Force
}

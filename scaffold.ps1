$esc = [char]27
$semi = [char]59
$fgHex = "$esc[38${semi}2${semi}72${semi}77${semi}70m"
$bgHex = "$esc[48${semi}2${semi}30${semi}33${semi}36m"
$reset = "$esc[0m"

$options = @(
    [pscustomobject]@{ Name = "src"
                       Type = "Dir"
                       Selected = $true }
    [pscustomobject]@{ Name = "tests"
                       Type = "Dir"
                       Selected = $true }
    [pscustomobject]@{ Name = "docs"
                       Type = "Dir"
                       Selected = $true }
    [pscustomobject]@{ Name = "scripts"
                       Type = "Dir"
                       Selected = $true }
    [pscustomobject]@{ Name = ".github"
                       Type = "Dir"
                       Selected = $true }
    [pscustomobject]@{ Name = "AGENT.md"
                       Type = "File"
                       Selected = $true }
    [pscustomobject]@{ Name = "DESIGN.md"
                       Type = "File"
                       Selected = $true }
    [pscustomobject]@{ Name = "LICENSE.md"
                       Type = "File"
                       Selected = $true }
    [pscustomobject]@{ Name = "PLAN.md"
                       Type = "File"
                       Selected = $true }
    [pscustomobject]@{ Name = "README.md"
                       Type = "File"
                       Selected = $true }
    [pscustomobject]@{ Name = "SKILLS.md"
                       Type = "File"
                       Selected = $true }
    [pscustomobject]@{ Name = "TESTING.md"
                       Type = "File"
                       Selected = $true }
    [pscustomobject]@{ Name = "TODO.md"
                       Type = "File"
                       Selected = $true }
)

$index = 0
$running = $true

Write-Host "$bgHex" -NoNewline
Clear-Host

while ($running) {
    [Console]::SetCursorPosition(0,0)
    
    Write-Host "$bgHex$fgHex  ___  ___   _   ___ ___ ___  _    ___  "
    Write-Host "$bgHex$fgHex / __|/ __| /_\ | __| __/ _ \| |  |   \ "
    Write-Host "$bgHex$fgHex \__ \ (__ / _ \| _|| _| (_) | |__| |) |"
    Write-Host "$bgHex$fgHex |___/\___/_/ \_\_| |_| \___/|____|___/ "
    Write-Host "$reset$bgHex"
    Write-Host "$bgHex"
    Write-Host "$bgHex  Use Up/Down to navigate, Space to toggle, 'A' for all/none, Enter to execute."
    Write-Host "$bgHex"
    
    Write-Host "$bgHex  Directories:" -ForegroundColor Cyan
    $i = 0
    foreach ($opt in $options) {
        if ($i -eq 5) {
            Write-Host "$bgHex"
            Write-Host "$bgHex  Artifacts:" -ForegroundColor Cyan
        }
        $prefix = "  "
        if ($i -eq $index) {
            $prefix = "> "
        }
        $checkbox = "[ ]"
        if ($opt.Selected) {
            $checkbox = "[X]"
        }
        Write-Host "$bgHex$prefix$checkbox $($opt.Name)                   "
        $i++
    }
    
    $key = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
    if ($key.VirtualKeyCode -eq 38) {
        $index--
        if ($index -lt 0) {
            $index = $options.Count - 1
        }
    } elseif ($key.VirtualKeyCode -eq 40) {
        $index++
        if ($index -ge $options.Count) {
            $index = 0
        }
    } elseif ($key.VirtualKeyCode -eq 32) {
        $options[$index].Selected = -not $options[$index].Selected
    } elseif ($key.VirtualKeyCode -eq 65) {
        $allSelected = $true
        foreach ($o in $options) {
            if (-not $o.Selected) {
                $allSelected = $false
            }
        }
        $newState = -not $allSelected
        foreach ($o in $options) {
            $o.Selected = $newState
        }
    } elseif ($key.VirtualKeyCode -eq 13) {
        $running = $false
    }
}

Clear-Host
Write-Host "$reset" -NoNewline

foreach ($opt in $options) {
    if ($opt.Selected) {
        $path = Join-Path $PSScriptRoot $opt.Name
        if (-not (Test-Path $path)) {
            if ($opt.Type -eq "Dir") {
                New-Item -ItemType Directory -Path $path | Out-Null
                Write-Host "Created Directory: $($opt.Name)" -ForegroundColor Green
            } elseif ($opt.Type -eq "File") {
                $headerName = $opt.Name.Replace(".md", "")
                $content = "# $headerName`n`n* Standardized header section`n"
                Set-Content -Path $path -Value $content
                Write-Host "Created File: $($opt.Name)" -ForegroundColor Green
            }
        } else {
            Write-Host "Skipped (Already exists): $($opt.Name)" -ForegroundColor Yellow
        }
    }
}

if ($PSCommandPath) {
    Remove-Item -Path $PSCommandPath -Force
}

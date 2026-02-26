# SCAFFOLD2.ps1 - Project Template Generator
# This script generates standard markdown templates for a new project.

$templates = @{
    ".gitignore" = @"
# Ignore all Markdown files by default
*.md

# Allow specific mandatory files
!readme.md
!license.md

# OS generated files
.DS_Store
Thumbs.db
"@
    "agent.md"   = @"
# AGENT INSTRUCTIONS

## PERSONA
[Describe the expected AI agent persona and role here]

## CORE RESPONSIBILITIES
* [Responsibility 1]
* [Responsibility 2]

## COMMANDS & SHORTCUTS
* /example - [What this command does]
"@
    "design.md"  = @"
# DESIGN SPECIFICATION

## ARCHITECTURE OVERVIEW
[High-level summary of system components]

## CORE COMPONENTS
### 1. [Component Name]
* Description...
* Scope...

## DATA INTEGRITY
[Description of how data is managed, stored, and recovered]
"@
    "github.md"  = @"
---
description: GitHub Project Setup Template
---

# GitHub Project Configuration

## Identity Configuration
* **Git User Name:** [Your Git Username]
* **Git User Email:** [Your Git Email]

## Repository Details
* **Remote URL:** [Replace with GitHub URL]
* **Visibility:** [Public/Private]
* **Default Branch:** main

## Agent Instructions
When an agent sees this file:
1. Verify Git User Name. Prompt user if not prefilled.
2. Verify Git User Email. Prompt user if not prefilled.
3. Verify Remote URL. Prompt user if not prefilled.
4. Verify Visibility (Public/Private) if the user has not declared.
5. Initialize git (`git init`).
6. Configure local identity using variables above.
7. Make initial commit.
8. Add remote origin.
9. Push to main.
"@
    "license.md" = @"
# MIT License

Copyright (c) 2026 upioneer

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
"@
    "plan.md"    = @"
# PROJECT ROADMAP

## PHASE 1: THE FOUNDATION
* [ ] Goal 1
* [ ] Goal 2

## PHASE 2: [Phase Name]
* [ ] Goal 1
* [ ] Goal 2
"@
    "readme.md"  = @"
# PROJECT TITLE

## OVERVIEW
[Short description of the project]

## FEATURES
* Feature 1
* Feature 2

## GETTING STARTED
[Installation or run instructions]
"@
    "skills.md"  = @"
# SPECIALIZED AI SKILLS

## SKILL: [Skill Name]
* Purpose: [What the skill achieves]
* Logic: [Step-by-step logic for the AI to follow]
"@
    "testing.md" = @"
# TESTING SPECIFICATION

## CORE PHILOSOPHY
[Testing goals and coverage expectations]

## PHASE 1 TESTS
### T1.1: [Test Name]
* Condition: [Trigger condition]
* Expected: [Expected outcome]
"@
    "todo.md"    = @"
# PROJECT BACKLOG (TODO)

## PRIORITY: ARCHITECTURE
* [ ] Task 1
* [ ] Task 2

## POST-MVP
* [ ] Task 1
"@
}

Write-Host "Scaffolding baseline artifacts..." -ForegroundColor Magenta

foreach ($file in $templates.Keys) {
    if (-not (Test-Path $file)) {
        Set-Content -Path $file -Value $templates[$file]
        Write-Host "Created: $file" -ForegroundColor Green
    }
    else {
        Write-Host "Skipped (Already exists): $file" -ForegroundColor Yellow
    }
}

Write-Host "Scaffolding complete!" -ForegroundColor Magenta

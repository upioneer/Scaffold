# SCAFFOLD2.ps1 - Project Template Generator
# This script generates standard markdown templates for a new project.

$templates = @{
    ".gitignore"                                 = @"
github.md
scaffold.ps1

# Allow specific mandatory files
!readme.md
!license.md

# OS generated files
.DS_Store
Thumbs.db
"@
    "agent.md"                                   = @"
# AGENT INSTRUCTIONS
Always use the existing project structure and files.
Do not create new files unless explicitly asked to do so.

## PERSONA
[Describe the expected AI agent persona and role here]

## CORE RESPONSIBILITIES
* [Responsibility 1]
* [Responsibility 2]

## COMMANDS & SHORTCUTS
* /example - [What this command does]
"@
    "brand.md"                                   = @"
# BRAND GUIDELINES

## LOGO & IDENTITY
* **Company Name:** [Company Name]
* **Primary Element:** [e.g., Symbol, Icon, Wordmark]
* **Favicon:** [Description or path to Favicon asset]
* **Logo Variations:**
  * **Primary Logo:** [Path or description of standard logo]
  * **Monochrome/Inverse:** [Path or description for dark/light backgrounds]
* **Clear Space & Sizing:** [Rules for spacing around the logo and minimum sizes]

## COLOR PALETTE
* **Primary Color:** `#[Hex Code]` - [Usage description, e.g., buttons, main accents]
* **Secondary/Hover Color:** `#[Hex Code]` - [Usage description, e.g., hover states, secondary elements]
* **Base Background:** `#[Hex Code]` - [Main canvas/body background]
* **Card/Panel Background:** `#[Hex Code]` - [Background for elevated surfaces/containers]
* **Primary Text:** `#[Hex Code]` - [Main body and heading text color]
* **Secondary/Muted Text:** `#[Hex Code]` - [Subtitles, placeholders, subtle text]

## TYPOGRAPHY
* **Header Font:** `[Font Name]` ([Hosting source, e.g., Google Fonts, Local])
    * **Usage:** H1, H2, H3, and major calls to action.
    * **Weights:** [e.g., Bold 700, Black 900]
* **Body Font:** `[Font Name]` ([Hosting source])
    * **Usage:** General paragraph text, small links, and UI elements.
    * **Weights:** [e.g., Regular 400, Medium 500]
* **Monospace Font:** `[Font Name]` ([Hosting source]) (Optional)
    * **Usage:** Code snippets, technical data.

## UI / UX PRINCIPLES & COMPONENTS
* **Theme Preference:** [e.g., Dark mode default, System default, Light mode]
* **Border Radius:** [e.g., Rounded edges (`rounded-lg`), Sharp edges (`rounded-none`)]
* **Shadows & Elevation:** [Describe the style of drop shadows, e.g., soft and diffuse]
* **Buttons:** [Describe button styles: e.g., bold font, primary background with hover transition]
* **Transitions & Animations:** [e.g., Elements fade and slide in on scroll, hover durations]

## IMAGERY & BRAND VOICE
* **Photography Style:** [e.g., Bright and airy, moody, illustrative, flat vectors]
* **Brand Voice:** [e.g., Professional and authoritative, friendly and casual, technical and precise]
* **Key Terminology:** [Specific words to use or avoid]
"@
    "design.md"                                  = @"
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
    "github.md"                                  = @"
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
    "license.md"                                 = @"
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
    "plan.md"                                    = @"
# PROJECT ROADMAP

## PHASE 1: THE FOUNDATION
* [ ] Goal 1
* [ ] Goal 2

## PHASE 2: [Phase Name]
* [ ] Goal 1
* [ ] Goal 2
"@
    "readme.md"                                  = @"
# PROJECT TITLE

## OVERVIEW
[Short description of the project]

## FEATURES
* **Rapid Scaffolding:** Instantly generates essential overarching Markdown files for project management
* **Comprehensive Templates:** Generates purpose-built files including:
  * `agent.md` - Instructions and personas for AI agents
  * `brand.md` - Generic template for managing project branding, colors, typography, logos
  * `design.md` - Architecture, core components, and data integrity specs
  * `github.md` - GitHub project configuration and agent Git instructions
  * `plan.md` - Phased project roadmap and goals
  * `skills.md` - Specialized logic and AI skills instructions
  * `testing.md` - Testing philosophy and test cases
  * `todo.md` - Project backlog and priorities
  * Standard `readme.md` and `license.md`
* **AI Tooling & Workflows:** Generates an `.agent` directory complete with predefined `github_push` and `firebase_push` workflows and logic skills to enable AI agents to handle safe deployments and conflict resolution automatically
* **Safe Generation:** Safely checks if files already exist and skips them, preventing accidental overwrites of your existing documentation

## GETTING STARTED
[Installation or run instructions]
"@
    "skills.md"                                  = @"
# SPECIALIZED AI SKILLS

## SKILL: [Skill Name]
* Purpose: [What the skill achieves]
* Logic: [Step-by-step logic for the AI to follow]

## SKILL: Firebase Deployment Routine
* Purpose: Ensure Firebase deployment is properly configured and documented before pushing, and updated afterwards.
* Logic: 
  1. Check if `firebase.md` contains the necessary configuration info.
  2. If not, prompt the user for the lacking details.
  3. Execute the push to Firebase using the verified info.
  4. Test to ensure the deployment was successful.
  5. Update `firebase.md` with the tested and validated configuration details.

## SKILL: GitHub Push Routine
* Purpose: Ensure GitHub push is properly configured and handles mismatches (e.g., rebasing, merging) between local directory and remote.
* Logic: 
  1. Check if `github.md` contains the necessary configuration info.
  2. If not, prompt the user for the lacking details.
  3. Fetch the latest remote changes and check the status of the local working directory against the remote branch.
  4. If there's a mismatch (diverged, local behind, conflicts), prompt the user in plain English with specific options (Merge, Rebase, Overwrite Web, Overwrite Local).
  5. Execute the Git command based on the user's explicit instructions.
  6. Push to GitHub and update `github.md` with new configuration details if applicable.
"@
    ".agent/skills/firebase_deployment/SKILL.md" = @"
---
name: firebase_deployment
description: Specialized skill for pushing to Firebase, verifying firebase.md configuration, and updating it upon success.
---

# Firebase Deployment Skill

When the user asks to push or deploy to Firebase, follow these instructions exactly:

1. **Check for `firebase.md`**
   Read the `firebase.md` file in the project workspace to see if it contains the necessary Firebase configuration and deployment information (e.g., project ID, active site).

2. **Prompt the User if Info is Missing**
   If `firebase.md` does not exist or lacks necessary deployment details, use the `notify_user` or ask the user directly for the missing Firebase configuration information. Do not proceed to deployment until this information is provided.

3. **Perform the Push/Deploy**
   Once the necessary information is confirmed, run the appropriate Firebase deployment commands (e.g., `firebase deploy`).

4. **Verify the Deployment**
   Test the deployment to ensure it was successful. This might involve checking the output of the terminal command or a Firebase console URL if available.

5. **Update `firebase.md`**
   After a successful deployment, update `firebase.md` (or create it if it doesn't exist) with any new or confirmed deployment information, URLs, or configurations so it is available for future automated deployments.
"@
    ".agent/skills/github_push/SKILL.md"         = @"
---
name: github_push
description: Specialized skill for pushing to GitHub, verifying configuration, and handling edge cases like rebasing, diverging, or conflicts.
---

# GitHub Push Skill

When the user asks to push, deploy, or sync with GitHub, follow these instructions exactly:

1. **Check for `github.md`**
   Read the `github.md` file in the project workspace to verify it contains the necessary GitHub repository configuration and deployment information.

2. **Prompt the User if Info is Missing**
   If `github.md` does not exist or lacks necessary details, use the `notify_user` or ask the user directly for the missing configuration information. Do not proceed until this information is provided.

3. **Fetch and Check Status**
   Run `git fetch` and then `git status` to determine the relationship between the local working directory and the remote repository on GitHub (the web).

4. **Handle Edge Cases (Mismatches)**
   If the local branch does not match the remote branch (e.g., the local branch is behind, both have diverged, or there are other conflicts):
   - **DO NOT** automatically push, pull, or merge.
   - Use `notify_user` to prompt the user in plain English explaining the exact mismatch.
   - Offer them the following specific options to resolve the situation:
     - **Merge**: Combine the remote changes with the local changes.
     - **Rebase**: Move local changes to the tip of the remote changes (often preferred for a cleaner history).
     - **Overwrite Web (Force Push)**: Push the local state to GitHub, destroying any differing changes made remotely.
     - **Overwrite Local (Hard Reset)**: Perform a hard reset locally to match GitHub exactly, destroying local unpushed changes.
   - Wait for the user to explicitly select an option.

5. **Execute Option and Push**
   Perform the Git commands corresponding to the user's choice. Once the state is resolved (or if the branch was simply ahead with no conflicts), execute the appropriate `git push` command.

6. **Update `github.md`**
   After a successful push or resolution, update `github.md` with any new configuration details or successful state information if needed.
"@
    ".agent/workflows/firebase_push.md"          = @"
---
description: How to safely deploy to Firebase and document configuration
---

# Firebase Deployment Workflow

This workflow ensures safe, documented deployments to Firebase by validating `firebase.md` configuration prior to executing the push, and updating it once successful.

1. **Verify `firebase.md`**
   Check the `firebase.md` file in the project's root folder to ensure all required Firebase deployment parameters (e.g., project ID, active site, region) are present.

2. **Prompt if Missing Info**
   If the configuration information is missing or incomplete, immediately halt and prompt the user to provide the exact details.

3. **Deploy**
   Run the appropriate Firebase deployment commands (e.g., `firebase deploy`).

4. **Verify Deployment**
   Test the deployed environment or output to ensure a successful push.

5. **Update Documentation**
   Upon a successful deployment, automatically append or update `firebase.md` with the newly verified project configuration details so future deployments are fully automated.
"@
    ".agent/workflows/github_push.md"            = @"
---
description: How to safely push to GitHub, handling mismatches and configuration
---

# GitHub Push Workflow

This workflow ensures safe pushes to GitHub by validating repository configuration and gracefully handling states where the local directory does not match the remote branch (e.g., conflicts, upstream changes).

1. **Verify `github.md`**
   Check the `github.md` file in the project's root folder to ensure all required GitHub configuration parameters (e.g., repository URL, default branch) are present.

2. **Prompt if Missing Info**
   If the configuration information is missing or incomplete, halt and prompt the user to provide the necessary details.

3. **Check Remote Status**
   Before pushing, fetch from the remote repository (`git fetch`). Check the status to see if the local branch is behind, ahead, or has diverged from the remote branch.

4. **Handle Mismatched States (Edge Cases)**
   If the local working directory does not match the remote (e.g., diverged branches, remote has new commits):
   Prompt the user *in plain English* explaining the situation and offering options:
   - **Merge**: Merge the remote changes into the local branch.
   - **Rebase**: Reapply local commits on top of the remote branch.
   - **Overwrite Web (Force Push)**: Overwrite the remote version with the local version (Dangerous).
   - **Overwrite Local (Hard Reset)**: Discard local commits and match the remote version exactly (Dangerous).
   Wait for the user's decision before proceeding.

5. **Deploy/Push**
   Run the appropriate `git push` command based on the user's choice (or a standard `git push` if everything is up to date and there are no conflicts).

6. **Update Documentation**
   Upon a successful push, update `github.md` if any new configuration or remote details were provided.
"@
    "testing.md"                                 = @"
# TESTING SPECIFICATION

## CORE PHILOSOPHY
[Testing goals and coverage expectations]

## PHASE 1 TESTS
### T1.1: [Test Name]
* Condition: [Trigger condition]
* Expected: [Expected outcome]
"@
    "todo.md"                                    = @"
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
        $parent = Split-Path $file
        if ($parent -and -not (Test-Path $parent)) {
            New-Item -ItemType Directory -Force -Path $parent | Out-Null
        }
        Set-Content -Path $file -Value $templates[$file]
        Write-Host "Created: $file" -ForegroundColor Green
    }
    else {
        Write-Host "Skipped (Already exists): $file" -ForegroundColor Yellow
    }
}

Write-Host "Scaffolding complete!" -ForegroundColor Magenta

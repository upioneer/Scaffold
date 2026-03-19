# Project Template Generator
# This script generates standard markdown templates for a new project.

$templates = @{
   ".gitignore"                                 = @"
*.md

# Allow specific mandatory files
!readme.md
!license.md

# OS generated files
.DS_Store
Thumbs.db

# Project generated/maintained files
/apps/
/local project files/
/TEMPLATE/
/template/
/project artifacts/
"@
   "apps/docker/.gitkeep"                       = ""
   "apps/mobile/.gitkeep"                       = ""
   "apps/walkthrough/.gitkeep"                  = ""
   "apps/walkthrough/readme.md"                 = @"
# WALKTHROUGH DOCUMENTATION

## VERSION: v1.0.0
### OVERVIEW
Summary of changes in this version.

### TESTING WORKFLOWS
[Detailed testing steps and results]
"@
   "apps/website/.gitkeep"                      = ""
   "project artifacts/agent.md"                 = @"
# AGENT OPERATING PARAMETERS

## ROLE DESCRIPTION
You function as the lead architect and frontend developer for the portfolio project. Your objective is to translate complex technical concepts into a refined digital experience.

## INITIALIZATION PROTOCOL
Upon system startup you must access the Input folder located at the root of the project. This directory contains essential artifacts regarding professional experience and personal interests. Analyze these materials to understand the project persona before generating implementation code.

## VERIFICATION MANDATE
You are required to formulate and present clarifying questions to the user based on your analysis of the Input folder. You must achieve full understanding of the persona and receive explicit confirmation from the user before integrating these details into the project site.

## PRIMARY DIRECTIVES
* Prioritize performance and smooth transitions over complex animations
* Maintain the Deep Space aesthetic and Innovator persona in all code comments
* Implement robust state management for the Developer Mode toggle
* Ensure the persistent sidebar remains mounted and active across all views

## TECHNICAL CONSTRAINTS
* Use Tailwind CSS for all styling to ensure rapid iteration
* Utilize Lucide React or inline SVG for all technical icons
* Implement Framer Motion for non jarring transitions between system states
* Ensure all audio assets are preloaded to prevent latency during interactions

## ARTIFACT & VERSIONING PROTOCOL
* Always create unique version specific folders for walkthroughs and deployment records (e.g. apps/walkthrough/v1.1.0/)
* Never modify or overwrite existing version documentation once established
* Ensure each significant deployment cycle results in a new immutable artifact folder

## COMMUNICATION PROTOCOL
* Provide full file contents during iterations to maintain context       
* Use technical and concise language in all documentation
* Avoid restricted characters including emojis, em dashes, hyphens, and semicolons
"@
   "project artifacts/brand.md"                 = @"
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
   "project artifacts/design.md"                = @"
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
   "project artifacts/firebase.md"              = @"
---
description: Firebase Project Setup Template
---

# Firebase Project Configuration

## Project Details
* **Project ID:** [YOUR_PROJECT_ID]
* **Hosting Site ID:** (Optional - Defaults to Project ID if there's only one site)
* **Region:** (Optional - Defaults to your Firebase project's default region, typically us-central1)

## Agent Instructions
When an agent sees this file:
1. Verify Firebase CLI is installed and authenticated (`firebase login`). Prompt user if not.
2. Verify the `firebase.json` configuration matches the intended Hosting setup.
3. Build the application (`npm run build`).
4. Execute `firebase deploy --only hosting` (or appropriate command).    
5. Document the deployment status and update any relevant deployment logs.
"@
   "project artifacts/github.md"                = @"
---
description: GitHub Project Setup Template
---

# GitHub Project Configuration

## Identity Configuration
* **Git User Name:** [YOUR_USERNAME]
* **Git User Email:** [YOUR_EMAIL]

## Repository Details
* **Remote URL:** [YOUR_REMOTE_URL]
* **Visibility:** [YOUR_VISIBILITY]
* **Default Branch:** main

## Agent Instructions
When an agent sees this file:
1. Verify Remote URL is valid. Prompt user if not.
2. Verify Visibility (Public/Private) if the user has not declared.      
3. Initialize git (git init).
4. Configure local identity using variables above.
5. Make initial commit.
6. Add remote origin.
7. Push to main.
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
   "project artifacts/plan.md"                  = @"
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
* **Monorepo Structure:** Creates organized directories for managing complex projects:
  * `\apps` - Contains individual applications or services for a monorepo setup. Also stores testing workflows in `\apps\walkthrough\[AppVersion]\readme.md`
  * `\project artifacts` - Stores the core generated markdown templates (todo, plan, skills, etc.) output by the scaffolding script.
* **Comprehensive Templates:** Generates purpose-built files including:
  * `agent.md` - Instructions and personas for AI agents
  * `brand.md` - Generic template for managing project branding, colors, typography, logos
  * `design.md` - Architecture, core components, and data integrity specs
  * `firebase.md` - Firebase project configuration and deployment instructions
  * `github.md` - GitHub project configuration and agent Git instructions
  * `plan.md` - Phased project roadmap and goals
  * `skills.md` - Specialized logic and AI skills instructions
    * `Firebase Deployment Routine`
    * `GitHub Push Routine`
    * `Supabase Management Routine`
    * `Resend Email Services`
    * `Telegram Notifications`
    * `Node Development`
  * `testing.md` - Testing philosophy and test cases
  * `todo.md` - Project backlog and priorities
  * Standard `readme.md` and `license.md`
* **AI Tooling & Workflows:** Generates an `.agent` directory complete with predefined `github_push` and `firebase_push` workflows and logic skills to enable AI agents to handle safe deployments and conflict resolution automatically
* **Safe Generation:** Safely checks if files already exist and skips them, preventing accidental overwrites of your existing documentation

## GETTING STARTED
[Installation or run instructions]
"@
   "project artifacts/skills.md"                = @"
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

## SKILL: Supabase Management Routine
* Purpose: Keep database schemas properly synchronized via migrations and maintain strictly typed front-ends
* Logic:
  1. Check `supabase.md` for project configuration (e.g., project ID, database URL)
  2. When prompted to migrate: run `npx supabase db push` and verify success
  3. When prompted to sync types: run `npx supabase gen types typescript --project-id "[ID]" > types/supabase.ts`
  4. Verify the type generation was successful and update any relevant documentation

## SKILL: Resend Email Services
* Purpose: Standardize initialization of Email API services and transactional email wrappers
* Logic:
  1. Check for valid Resend API keys or `resend.md` configuration in the environment
  2. Inject key into local `.env` file safely if instructed
  3. Scaffold a reusable `sendEmail` utility function wrapping the Resend SDK
  4. Use template parameters (To, From, Subject, HTML body) to verify email functionality

## SKILL: Telegram Notifications
* Purpose: Dispatch critical system alerts or CI/CD deployment statuses to a Telegram chat
* Logic:
  1. Verify the presence of `TELEGRAM_BOT_TOKEN` and `DEFAULT_CHAT_ID`   
  2. Format a concise markdown string detailing the deployment success or error state
  3. Execute an HTTP POST request to the Telegram Bot API to deliver the alert
  4. Log the notification timestamp locally if requested

## SKILL: Node Development
* Purpose: Manage Node.js development environments, including starting/stopping dev servers, building, testing, and linting.
* Logic:
  1. Determine the package manager in use (npm, yarn, pnpm) via lockfiles.
  2. For starting the server, run `npm run dev` in the background and monitor for successful start.
  3. For stopping the server, terminate the associated background process.
  4. Build (`npm run build`), test (`npm test`), or lint (`npm run lint`) when requested and report output.
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

6. **Generate Versioned Walkthrough**
   Ensure we capture significant system changes on each push to Firebase. You MUST generate a `walkthrough.md` file that summarizes the new features, fixes, and changes included in this deployment.
   - Save this walkthrough in `apps/walkthrough/<version>/walkthrough.md`.
   - Use a Semantic Versioning strategy (e.g., `v1.0`, `v1.1`, `v2.0`) for the folder names. Evaluate the scope of the deployment to determine the appropriate version increment.
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
   ".agent/skills/supabase_management/SKILL.md" = @"
---
name: supabase_management
description: Specialized skill for executing Supabase migrations and generating strict TypeScript types from the database schema.
---

# Supabase Management Skill

When the user asks to manage the Supabase database, migrate schemas, or sync types, follow these instructions exactly:

1. **Check for `supabase.md`**
   Check for configuration details like the Supabase Project ID. 

2. **Database Migrations**
   If the user asks to push changes to the remote database:
   - Run `npx supabase db push`
   - Verify the command executed successfully without conflicts.

3. **Type Generation**
   If the user asks to sync or generate types:
   - Run `npx supabase gen types typescript --project-id "[PROJECT_ID]" > types/supabase.ts` (replacing the ID with the actual project ID).
   - Verify the file was created/updated successfully.
"@
   ".agent/workflows/supabase_management.md"    = @"
---
description: How to safely migrate Supabase databases and synchronize frontend types
---

# Supabase Management Workflow

This workflow ensures database changes are safely pushed to Supabase and that frontend TypeScript definitions are immediately updated to reflect the new schema.

1. **Push Migrations**
   Run `npx supabase db push` to push any pending local migrations to the remote database. Provide output to the user.
2. **Generate Types**
   Run `npx supabase gen types typescript --project-id "[PROJECT_ID]" > types/supabase.ts`.
3. **Verify Sync**
   Ensure the `types/supabase.ts` file exists and contains the updated schema definitions.
"@
   ".agent/skills/resend_email/SKILL.md"        = @"
---
name: resend_email
description: Specialized skill for initializing Resend email services and scaffolding a reusable email utility function.
---

# Resend Email Skill

When the user asks to set up emails, notifications, or Resend, follow these instructions exactly:

1. **Check for Resend Configuration**
   Check for `resend.md` or look for a `RESEND_API_KEY` in the local `.env` files.

2. **Prompt if Missing**
   If missing, prompt the user for their Resend API key and the verified sending domain. Insert these safely into `.env.local` or `.env`. 

3. **Scaffold Utility**
   Create a generic `sendEmail.ts` (or `.js`) utility function that wraps the Resend Node.js SDK. It should accept `to`, `subject`, `html`, and optionally `from` parameters.

4. **Verify Implementation**
   Ensure the utility is cleanly separated from the UI logic and handles API errors via try/catch blocks gracefully. 
"@
   ".agent/skills/telegram_notify/SKILL.md"     = @"
---
name: telegram_notify
description: Specialized skill for dispatching alerts, deployment statuses, or critical errors to a designated Telegram chat via the Bot API.
---

# Telegram Notifications Skill

When the user asks to set up Telegram notifications, deploy hooks, or chat alerts, follow these instructions exactly:

1. **Verify Credentials**
   Ensure the project contains a `TELEGRAM_BOT_TOKEN` and a `DEFAULT_CHAT_ID` in the local environment variables. Prompt the user for them if missing.

2. **Format Message**
   Construct a clean markdown-formatted string for the alert (e.g., *Deployment Successful*, or **Critical Error on Edge Function**).

3. **Dispatch HTTP Post**
   Make a standard HTTP POST request to `https://api.telegram.org/bot<TELEGRAM_BOT_TOKEN>/sendMessage` with the payload `{ "chat_id": "<DEFAULT_CHAT_ID>", "text": "<Message>", "parse_mode": "Markdown" }`. 
"@
   ".agent/skills/node_dev/SKILL.md"            = @"
---
name: node_dev
description: Specialized skill for managing Node.js development environments, including starting/stopping dev servers, building, testing, and lints.
---

# Node Development Skill

When the user asks to start, stop, or manage a Node application, follow these instructions exactly:

1. **Detect Package Manager**
   Check for `package-lock.json`, `yarn.lock`, or `pnpm-lock.yaml` to determine the correct package manager (`npm`, `yarn`, or `pnpm`).

2. **Starting the Dev Server**
   To start the app (e.g., `npm run dev` or `npm start`):
   - Run the command in the background.
   - Wait to ensure the server starts successfully and note the local URL/port.
   - If the port is blocked, terminate the background command running the dev server.

3. **Stopping the Dev Server**
   To stop the app:
   - Terminate the background command running the dev server.

4. **Other Dev Commands**
   - **Install**: Run `npm install` to add dependencies.
   - **Build**: Run `npm run build` to compile the project and verify success.
   - **Test & Lint**: Run `npm run test` or `npm run lint` to enforce quality. Report any errors to the user.
"@
   "project artifacts/testing.md"               = @"
# TESTING SPECIFICATION

## CORE PHILOSOPHY
[Testing goals and coverage expectations]

## PHASE 1 TESTS
### T1.1: [Test Name]
* Condition: [Trigger condition]
* Expected: [Expected outcome]
"@
   "project artifacts/todo.md"                  = @"
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

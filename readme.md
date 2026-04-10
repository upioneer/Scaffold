# SCAFFOLD - Project Template Generator

## OVERVIEW
SCAFFOLD is a lightweight PowerShell script (`scaffold.ps1`) designed to quickly generate a comprehensive set of standard Markdown templates for new projects. It ensures a consistent documentation structure right from the start, providing scaffolding for project architecture, planning, testing, and AI assistant instructions

## FEATURES
* **Rapid Scaffolding:** Instantly generates essential overarching Markdown files for project management
* **Monorepo Structure:** Creates organized directories for managing complex projects:
  * `\apps` - Contains individual applications or services for a monorepo setup. Also stores testing workflows in `\apps\walkthrough\[AppVersion]\readme.md`
  * `\project artifacts` - Stores the core generated markdown templates (todo, plan, skills, etc.) output by the scaffolding script.
* **Comprehensive Templates:** Generates purpose-built files including:
  * `agent.md` - Instructions and personas for AI agents
  * `brand.md` - Generic template for managing project branding, colors, typography, logos
  * `design.md` - Architecture, core components, and data integrity specs
  * `github.md` - GitHub project configuration and agent Git instructions
  * `plan.md` - Phased project roadmap and goals
  * `skills.md` - Specialized logic and AI skills instructions
    * `Firebase Deployment Routine`
    * `GitHub Push Routine`
    * `Supabase Management Routine`
    * `Resend Email Services`
    * `Telegram Notifications`
    * `Node Development`
    * `Marp Presentations`
  * `testing.md` - Testing philosophy and test cases
  * `todo.md` - Project backlog and priorities
  * Standard `readme.md` and `license.md`
* **AI Tooling & Workflows:** Generates an `.agent` directory complete with predefined `github_push` and `firebase_push` workflows and logic skills to enable AI agents to handle safe deployments and conflict resolution automatically
* **Safe Generation:** Safely checks if files already exist and skips them, preventing accidental overwrites of your existing documentation

## GETTING STARTED
1. Save or copy `scaffold.ps1` into the root directory of your new project
2. Open a PowerShell terminal and navigate to your project directory
3. Execute the script:
   ```powershell
   .\scaffold.ps1
   ```
4. The script will output its progress to the console. It will create any missing `.md` files and populate them with the template content
5. Open the newly generated markdown files and begin customizing them for your specific project needs

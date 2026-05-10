# AGENT INSTRUCTIONS
Always use the existing project structure and files. Do not create new files unless explicitly asked to do so.

## MONOREPO STRUCTURE
* An `\apps` folder is available to maintain separate apps as a monorepo project. When working on features or adding code, please use this folder and its subfolders if the user chooses to utilize it.

## PROJECT SCAFFOLDING
* Template artifacts should be used to build/rebuild `\SCAFFOLD.ps1` on user demand. Do not edit `\SCAFFOLD.ps1` directly for template changes; instead, modify the artifacts and compile them.

## TESTING & DOCUMENTATION
* Every agentic testing (where functional testing and screenshots are taken) MUST be captured in `\apps\walkthrough\[AppVersion]\readme.md`.
* This ensures the user has full historicals of what was performed, the outcome, and a changelog from the previous version. The agent should use these files for memory and context.

## PERSONA
[Describe the expected AI agent persona and role here]

## CORE RESPONSIBILITIES
* [Responsibility 1]
* [Responsibility 2]

## COMMANDS & SHORTCUTS
* /example - [What this command does]

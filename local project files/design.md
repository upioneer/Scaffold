# DESIGN.md

## Project Overview
This document outlines the design for a modular, TUI based project generator. The tool provides an interactive interface to select specific artifacts and directory structures while featuring a high fidelity splash screen inspired by agentic frameworks.

## Visual Identity
The interface will utilize a specific color palette and centered typography to establish a professional terminal aesthetic.
* **Primary Foreground**: #484d46.
* **Complimentary Background**: A deep slate or charcoal to ensure high contrast with the muted green foreground.
* **Splash Screen**: The word SCAFFOLD will be rendered in large ASCII block text, centered horizontally and vertically on launch.
* **Inspiration**: The layout and boot sequence will mirror the feel of OpenClaw and Hermes.

## Functional Design
The script will function as a modular selection engine for project initialization.

### 1. Interactive Selection (TUI)
* Users will toggle the eight mandatory artifacts: AGENT.md, DESIGN.md, LICENSE.md, PLAN.md, README.md, SKILLS.md, TESTING.md, and TODO.md.
* Directory selection will include src, tests, docs, scripts, and .github.
* The interface will support Space for selection and Enter for execution.

### 2. Scaffolding Logic
* The generator will create the selected directory tree first.
* It will then populate selected markdown files with standardized headers.
* To prevent data loss, the script will skip any files or folders that already exist in the root.

### 3. Clean Execution
* The script will maintain the self-destruct mechanism to remove itself from the project root after successful scaffolding.

## Constraints and Compliance
* **No Emojis**: All UI elements and generated file content will be strictly text based.
* **No Semicolons**: The underlying PowerShell logic will avoid semicolons entirely.
* **No Em Dashes or Hyphens**: Documentation artifacts will use alternative punctuation or spacing to comply with formatting rules.
* **Artifact Integrity**: The system must always support the core structure of AGENT.md, DESIGN.md, LICENSE.md, PLAN.md, README.md, SKILLS.md, TESTING.md, and TODO.md.
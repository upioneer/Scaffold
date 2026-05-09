---
description: How to safely push to GitHub, handling mismatches and configuration
---

# GitHub Push Workflow

This workflow ensures safe pushes to GitHub by validating repository configuration and gracefully handling states where the local directory does not match the remote branch (e.g., conflicts, upstream changes).

1. **Verify github.md**
   Check the github.md file in the project's root folder to ensure all required GitHub configuration parameters (e.g., repository URL, default branch) are present.

2. **Prompt if Missing Info**
   If the configuration information is missing or incomplete, halt and prompt the user to provide the necessary details.

3. **Check Remote Status**
   Before pushing, fetch from the remote repository (git fetch). Check the status to see if the local branch is behind, ahead, or has diverged from the remote branch.

4. **Handle Mismatched States (Edge Cases)**
   If the local working directory does not match the remote (e.g., diverged branches, remote has new commits):
   Prompt the user *in plain English* explaining the situation and offering options:
   - **Merge**: Merge the remote changes into the local branch.
   - **Rebase**: Reapply local commits on top of the remote branch.
   - **Overwrite Web (Force Push)**: Overwrite the remote version with the local version (Dangerous).
   - **Overwrite Local (Hard Reset)**: Discard local commits and match the remote version exactly (Dangerous).
   Wait for the user's decision before proceeding.

5. **Deploy/Push**
   Run the appropriate git push command based on the user's choice (or a standard git push if everything is up to date and there are no conflicts).

6. **Update Documentation**
   Upon a successful push, update github.md if any new configuration or remote details were provided.

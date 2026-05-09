---
name: github_push
description: Specialized skill for pushing to GitHub, verifying configuration, and handling edge cases like rebasing, diverging, or conflicts.
---

# GitHub Push Skill

When the user asks to push, deploy, or sync with GitHub, follow these instructions exactly:

1. **Check for github.md**
   Read the github.md file in the project workspace to verify it contains the necessary GitHub repository configuration and deployment information.

2. **Prompt the User if Info is Missing**
   If github.md does not exist or lacks necessary details, use the 
otify_user or ask the user directly for the missing configuration information. Do not proceed until this information is provided.

3. **Fetch and Check Status**
   Run git fetch and then git status to determine the relationship between the local working directory and the remote repository on GitHub (the web).

4. **Handle Edge Cases (Mismatches)**
   If the local branch does not match the remote branch (e.g., the local branch is behind, both have diverged, or there are other conflicts):
   - **DO NOT** automatically push, pull, or merge.
   - Use 
otify_user to prompt the user in plain English explaining the exact mismatch.
   - Offer them the following specific options to resolve the situation:
     - **Merge**: Combine the remote changes with the local changes.
     - **Rebase**: Move local changes to the tip of the remote changes (often preferred for a cleaner history).
     - **Overwrite Web (Force Push)**: Push the local state to GitHub, destroying any differing changes made remotely.
     - **Overwrite Local (Hard Reset)**: Perform a hard reset locally to match GitHub exactly, destroying local unpushed changes.
   - Wait for the user to explicitly select an option.

5. **Execute Option and Push**
   Perform the Git commands corresponding to the user's choice. Once the state is resolved (or if the branch was simply ahead with no conflicts), execute the appropriate git push command.

6. **Update github.md**
   After a successful push or resolution, update github.md with any new configuration details or successful state information if needed.

---
description: How to safely deploy to Firebase and document configuration
---

# Firebase Deployment Workflow

This workflow ensures safe, documented deployments to Firebase by validating irebase.md configuration prior to executing the push, and updating it once successful.

1. **Verify irebase.md**
   Check the irebase.md file in the project's root folder to ensure all required Firebase deployment parameters (e.g., project ID, active site, region) are present.

2. **Prompt if Missing Info**
   If the configuration information is missing or incomplete, immediately halt and prompt the user to provide the exact details.

3. **Deploy**
   Run the appropriate Firebase deployment commands (e.g., irebase deploy).

4. **Verify Deployment**
   Test the deployed environment or output to ensure a successful push.

5. **Update Documentation**
   Upon a successful deployment, automatically append or update irebase.md with the newly verified project configuration details so future deployments are fully automated.

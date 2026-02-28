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

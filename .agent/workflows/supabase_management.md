---
description: How to safely migrate Supabase databases and synchronize frontend types
---

# Supabase Management Workflow

This workflow ensures database changes are safely pushed to Supabase and that frontend TypeScript definitions are immediately updated to reflect the new schema.

1. **Push Migrations**
   Run 
px supabase db push to push any pending local migrations to the remote database. Provide output to the user.
2. **Generate Types**
   Run 
px supabase gen types typescript --project-id "[PROJECT_ID]" > types/supabase.ts.
3. **Verify Sync**
   Ensure the 	ypes/supabase.ts file exists and contains the updated schema definitions.

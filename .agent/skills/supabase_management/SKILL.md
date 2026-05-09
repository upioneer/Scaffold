---
name: supabase_management
description: Specialized skill for executing Supabase migrations and generating strict TypeScript types from the database schema.
---

# Supabase Management Skill

When the user asks to manage the Supabase database, migrate schemas, or sync types, follow these instructions exactly:

1. **Check for supabase.md**
   Check for configuration details like the Supabase Project ID. 

2. **Database Migrations**
   If the user asks to push changes to the remote database:
   - Run 
px supabase db push
   - Verify the command executed successfully without conflicts.

3. **Type Generation**
   If the user asks to sync or generate types:
   - Run 
px supabase gen types typescript --project-id "[PROJECT_ID]" > types/supabase.ts (replacing the ID with the actual project ID).
   - Verify the file was created/updated successfully.

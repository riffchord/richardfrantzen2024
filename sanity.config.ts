// sanity.config.ts
import { defineConfig } from "sanity";
import { deskTool } from "sanity/desk";

export default defineConfig({
  name: "richardfrantzen",
  title: "Richardfrantzen.se",
  projectId: "yxcxwx9i",
  dataset: "production",
  plugins: [deskTool()],
  schema: {
    types: [
      /* your content types here*/
    ],
  },
});
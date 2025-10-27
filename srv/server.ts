import cds from "@sap/cds";
import cov2ap from "@cap-js-community/odata-v2-adapter";
import type { Express } from "express";

(cds as any).on("bootstrap", (app: Express) => {
  app.use(cov2ap());
});
export = cds.server;

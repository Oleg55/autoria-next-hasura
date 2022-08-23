CREATE TABLE "public"."users_cars" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "brand" text NOT NULL, "engine" Integer NOT NULL, "model" text NOT NULL, "price" integer NOT NULL, "spec_model" text NOT NULL, "type" text NOT NULL, "year" integer NOT NULL, PRIMARY KEY ("id") );COMMENT ON TABLE "public"."users_cars" IS E'cars that was add by users';
CREATE EXTENSION IF NOT EXISTS pgcrypto;

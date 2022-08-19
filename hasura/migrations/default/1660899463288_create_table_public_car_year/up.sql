CREATE TABLE "public"."car_year" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "year" integer NOT NULL, PRIMARY KEY ("id") );COMMENT ON TABLE "public"."car_year" IS E'car year';
CREATE EXTENSION IF NOT EXISTS pgcrypto;

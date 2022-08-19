CREATE TABLE "public"."car_engine" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "engine" integer NOT NULL, PRIMARY KEY ("id") );COMMENT ON TABLE "public"."car_engine" IS E'car engine 2L 3L';
CREATE EXTENSION IF NOT EXISTS pgcrypto;

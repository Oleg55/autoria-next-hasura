CREATE TABLE "public"."car_price" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "price" integer NOT NULL, PRIMARY KEY ("id") );COMMENT ON TABLE "public"."car_price" IS E'car prise';
CREATE EXTENSION IF NOT EXISTS pgcrypto;

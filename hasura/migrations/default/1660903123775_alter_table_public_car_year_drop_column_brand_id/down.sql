comment on column "public"."car_year"."brand_id" is E'car year';
alter table "public"."car_year" alter column "brand_id" drop not null;
alter table "public"."car_year" add column "brand_id" uuid;

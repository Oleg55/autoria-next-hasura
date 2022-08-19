alter table "public"."car_year"
  add constraint "car_year_brand_id_fkey"
  foreign key ("brand_id")
  references "public"."car_brands"
  ("id") on update restrict on delete restrict;

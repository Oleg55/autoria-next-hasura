alter table "public"."car_spec_model"
  add constraint "car_spec_model_models_id_fkey"
  foreign key ("models_id")
  references "public"."car_models"
  ("id") on update restrict on delete restrict;

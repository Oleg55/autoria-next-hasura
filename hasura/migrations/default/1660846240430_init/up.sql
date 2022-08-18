SET check_function_bodies = false;
CREATE TABLE IF NOT EXISTS public.car_brands (
    id uuid DEFAULT public.gen_random_uuid() NOT NULL,
    brand text NOT NULL
);
COMMENT ON TABLE public.car_brands IS 'car brands';
CREATE TABLE IF NOT EXISTS public.car_models (
    id uuid DEFAULT public.gen_random_uuid() NOT NULL,
    model text NOT NULL,
    brand_id uuid NOT NULL
);
COMMENT ON TABLE public.car_models IS 'car models';
CREATE TABLE IF NOT EXISTS public.car_spec_model (
    id uuid DEFAULT public.gen_random_uuid() NOT NULL,
    spec_model text NOT NULL
);
COMMENT ON TABLE public.car_spec_model IS 'car spec model like bmw 320d';
CREATE TABLE IF NOT EXISTS public.car_types (
    id uuid DEFAULT public.gen_random_uuid() NOT NULL,
    type text NOT NULL
);
COMMENT ON TABLE public.car_types IS 'car types';
ALTER TABLE ONLY public.car_brands
    ADD CONSTRAINT car_brands_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.car_models
    ADD CONSTRAINT car_models_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.car_spec_model
    ADD CONSTRAINT car_spec_model_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.car_types
    ADD CONSTRAINT car_types_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.car_models
    ADD CONSTRAINT car_models_brand_id_fkey FOREIGN KEY (brand_id) REFERENCES public.car_brands(id) ON UPDATE RESTRICT ON DELETE RESTRICT;

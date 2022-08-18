SET check_function_bodies = false;
CREATE TABLE public.car_brands (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    brand text NOT NULL
);
COMMENT ON TABLE public.car_brands IS 'car brands';
CREATE TABLE public.car_models (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    model text NOT NULL,
    brand_id uuid NOT NULL
);
COMMENT ON TABLE public.car_models IS 'car models';
ALTER TABLE ONLY public.car_brands
    ADD CONSTRAINT car_brands_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.car_models
    ADD CONSTRAINT car_models_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.car_models
    ADD CONSTRAINT car_models_brand_id_fkey FOREIGN KEY (brand_id) REFERENCES public.car_brands(id) ON UPDATE RESTRICT ON DELETE RESTRICT;

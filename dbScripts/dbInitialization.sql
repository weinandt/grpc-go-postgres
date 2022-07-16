CREATE DATABASE new_db;

/* psql to change the db */
\c new_db;

CREATE TABLE IF NOT EXISTS public.example (
  id uuid DEFAULT gen_random_uuid() PRIMARY KEY, /* does not prevent someone from overriding the default. */
  name text
);

INSERT INTO
    public.example (name)
VALUES
    ('val1'), ('val2'), ('val3');

SELECT * FROM public.example;
-- Depends on:
-- TODO

create schema if not exists "net.monitoring";

comment on schema "net.monitoring" is 'The "net.monitoring" schema contains network monitoring configuration';

grant all   on schema "net.monitoring" to aoadmin;
grant usage on schema "net.monitoring" to aoserv_app;

-- Depends on:
-- TODO

create schema if not exists master;

comment on schema master is 'The master schema regulates access to AOServ Master';

grant all   on schema master to aoadmin;
grant usage on schema master to aoserv_app;
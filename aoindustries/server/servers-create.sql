create sequence         server.servers_pkey_seq cycle;
grant all            on server.servers_pkey_seq to aoadmin;
grant select, update on server.servers_pkey_seq to aoserv_app;

create table servers (
  pkey integer
    default nextval('server.servers_pkey_seq')
    primary key,
  farm text
    not null,
  description text not null,
  operating_system_version integer,
  package integer not null,
  "name" text not null check (length("name") > 0 and "name" not like '%/%'),
  monitoring_enabled boolean not null default true
);
grant all                    on servers to aoadmin;
grant select, insert, update on servers to aoserv_app;
grant select                 on servers to kaori;

create table dns_zones (
  zone text primary key,
  file text not null unique,
  accounting text not null,
  hostmaster text not null default 'hostmaster.aoindustries.com.',
  serial int8 not null,
  ttl integer not null
);
grant all on dns_zones to aoadmin;
grant select, insert, update, delete on dns_zones to aoserv_app;

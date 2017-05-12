create sequence ip_addresses_pkey_seq cycle;
grant all on ip_addresses_pkey_seq to aoadmin;
grant select, update on ip_addresses_pkey_seq to aoserv_app;

create table ip_addresses (
  pkey integer
    default nextval('ip_addresses_pkey_seq')
    constraint ip_addresses_pkey primary key,
  ip_address text
    not null,
  net_device int,
  is_alias bool
    not null,
  hostname text,
  package text
    not null,
  created timestamp with time zone
    not null
    default now(),
  available bool
    not null,
  is_overflow bool
    not null
    default false,
  is_dhcp bool
    not null
    default false,
  ping_monitor_enabled bool
    not null
    default true,
  external_ip_address text,
  netmask text
    not null,
  check_blacklists_over_smtp boolean not null default true,
  unique(ip_address, net_device),
  check (
    -- Only the unspecified IP addresses may have a null hostname
    (ip_address='0.0.0.0')
    =(hostname is null)
  )
);
grant all on ip_addresses to aoadmin;
grant select, update on ip_addresses to aoserv_app;

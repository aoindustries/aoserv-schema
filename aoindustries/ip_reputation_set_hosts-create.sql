-- Tracks the per-host reputation for one set.
create sequence ip_reputation_set_hosts_pkey_seq cycle;
grant all on ip_reputation_set_hosts_pkey_seq to aoadmin;
grant select, update on ip_reputation_set_hosts_pkey_seq to aoserv_app;

create table ip_reputation_set_hosts (
  pkey int8
    default nextval('ip_reputation_set_hosts_pkey_seq')
    constraint ip_reputation_set_hosts_pkey primary key,
  "set" integer
    not null,
  "host" integer -- The big-endian 32-bit IP address.
    not null,
  good_reputation smallint
    not null
    check (
        good_reputation>=0
        -- and good_reputation<=1023: TODO: Less than max_definite_reputation
    ),
  bad_reputation smallint
    not null
    check (
        bad_reputation>=0
        -- and bad_reputation<=1023: TODO: Less than max_definite_reputation
    ),
  check (
    -- Will be deleted once both decay back to zero
    good_reputation>0
    or bad_reputation>0
  ),
  unique("set", "host")
);
grant all on ip_reputation_set_hosts to aoadmin;
grant select, insert, update, delete on ip_reputation_set_hosts to aoserv_app;
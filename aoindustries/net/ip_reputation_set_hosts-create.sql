-- Tracks the per-host reputation for one set.
create sequence         net.ip_reputation_set_hosts_pkey_seq cycle;
grant all            on net.ip_reputation_set_hosts_pkey_seq to aoadmin;
grant select, update on net.ip_reputation_set_hosts_pkey_seq to aoserv_app;

create table ip_reputation_set_hosts (
  pkey bigint
    default nextval('net.ip_reputation_set_hosts_pkey_seq')
    primary key,
  "set" integer
    not null,
  -- TODO: Switch to "inet" type
  "host" integer -- The big-endian 32-bit IP address.
    not null
    check ("host"!=0),
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
grant all                            on ip_reputation_set_hosts to aoadmin;
grant select, insert, update, delete on ip_reputation_set_hosts to aoserv_app;

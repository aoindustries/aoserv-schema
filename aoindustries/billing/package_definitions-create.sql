create sequence         package_definitions_pkey_seq cycle;
grant all            on package_definitions_pkey_seq to aoadmin;
grant select, update on package_definitions_pkey_seq to aoserv_app;

create table package_definitions (
  pkey integer
    default nextval('package_definitions_pkey_seq')
    primary key,
  accounting text
    not null,
  category text
    not null,
  "name" text
    not null,
  version text
    not null,
  display text
    not null,
  description text
    not null,
  setup_fee numeric(9,2),
  setup_fee_transaction_type text,
  monthly_rate numeric(9,2)
    not null,
  monthly_rate_transaction_type text
    not null,
  active boolean
    not null,
  approved boolean
    not null
);

grant all                            on package_definitions to aoadmin;
grant select, insert, update, delete on package_definitions to aoserv_app;

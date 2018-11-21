create sequence         billing.monthly_charges_pkey_seq cycle;
grant all            on billing.monthly_charges_pkey_seq to aoadmin;
grant select, update on billing.monthly_charges_pkey_seq to aoserv_app;

create table monthly_charges (
  pkey integer
    default nextval('billing.monthly_charges_pkey_seq')
    primary key,
  accounting text
    not null,
  package text
    not null,
  "type" text
    not null,
  description text,
  quantity numeric(8,3)
    not null
    default 1
    constraint quantity_chk
      check (quantity>0),
  rate numeric(9,2)
    not null,
  created timestamp with time zone
    not null
    default now(),
  created_by text
    not null,
  active boolean
    not null
    default 'true'
);

grant all    on monthly_charges to aoadmin;
grant select on monthly_charges to aoserv_app;

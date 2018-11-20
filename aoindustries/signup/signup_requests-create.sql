create sequence signup_requests_pkey_seq cycle;
grant all            on signup_requests_pkey_seq to aoadmin;
grant select, update on signup_requests_pkey_seq to aoserv_app;

create table signup_requests (
  pkey integer
    default nextval('signup_requests_pkey_seq')
    constraint signup_requests_pkey primary key,
  brand text not null,
  time timestamp with time zone not null default now(),
  ip_address text not null,
  package_definition integer not null,
  business_name text not null,
  business_phone text not null,
  business_fax text,
  business_address1 text not null,
  business_address2 text,
  business_city text not null,
  business_state text,
  business_country char(2) not null,
  business_zip text,
  ba_name text not null,
  ba_title text,
  ba_work_phone text not null,
  ba_cell_phone text,
  ba_home_phone text,
  ba_fax text,
  ba_email text not null,
  ba_address1 text,
  ba_address2 text,
  ba_city text,
  ba_state text,
  ba_country char(2),
  ba_zip text,
  ba_username text not null,
  billing_contact text not null,
  billing_email text not null,
  billing_use_monthly bool not null,
  billing_pay_one_year bool not null,
  -- The encrypted credit card details and password
  encrypted_data text not null,
  -- The public key that was used to encrypt the credit card details and password
  encryption_from integer not null,
  -- The recipient for the encrypted content
  encryption_recipient integer not null,
  completed_by text,
  completed_time timestamp with time zone
);
grant all                            on signup_requests to aoadmin;
grant select, insert, update, delete on signup_requests to aoserv_app;
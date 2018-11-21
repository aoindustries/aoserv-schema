create sequence         postgresql.postgres_server_users_pkey_seq cycle;
grant all            on postgresql.postgres_server_users_pkey_seq to aoadmin;
grant select, update on postgresql.postgres_server_users_pkey_seq to aoserv_app;

create table postgres_server_users (
  pkey integer
    default nextval('postgresql.postgres_server_users_pkey_seq')
    primary key,
  username text
    not null,
  postgres_server integer
    not null,
  disable_log integer,
  predisable_password text,
  unique (username, postgres_server)
);
grant all                            on postgres_server_users to aoadmin;
grant select, insert, update, delete on postgres_server_users to aoserv_app;

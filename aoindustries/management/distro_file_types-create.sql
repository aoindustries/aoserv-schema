create table distro_file_types (
  type text
    primary key,
  description text
    not null
);
grant all    on distro_file_types to aoadmin;
grant select on distro_file_types to aoserv_app;

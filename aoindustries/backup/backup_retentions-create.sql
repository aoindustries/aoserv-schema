create table backup_retentions (
  days smallint
    primary key,
  display text
    not null
);
grant all            on backup_retentions to aoadmin;
grant select, update on backup_retentions to aoserv_app;

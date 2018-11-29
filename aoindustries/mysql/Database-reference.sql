alter table mysql."Database"
  add constraint mysql_server_fkey
  foreign key (mysql_server)
  references mysql."Server" (bind)
  on delete restrict
  on update cascade
;
alter table mysql."Database"
  add constraint package_fkey
  foreign key (package)
  references billing."Package" ("name")
  on delete restrict
  on update cascade
;

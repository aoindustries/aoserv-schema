alter table mysql."MysqlDatabaseUser"
  add constraint mysql_database_fkey
  foreign key (mysql_database)
  references mysql."Database" (pkey)
  on delete restrict
  on update cascade
;
alter table mysql."MysqlDatabaseUser"
  add constraint mysql_server_user_fkey
  foreign key (mysql_server_user)
  references mysql."MysqlUserServer" (pkey)
  on delete restrict
  on update cascade
;

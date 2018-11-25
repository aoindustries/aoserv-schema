alter table web."HttpdServer"
  add constraint ao_server_fkey
  foreign key (ao_server)
  references linux."Server" (server)
  on delete restrict
  on update cascade
;
alter table web."HttpdServer"
  add constraint linux_server_account_fkey
  foreign key (linux_server_account)
  references linux."UserServer" (pkey)
  on delete restrict
  on update cascade
;
alter table web."HttpdServer"
  add constraint linux_server_group_fkey
  foreign key (linux_server_group)
  references linux."GroupServer" (pkey)
  on delete restrict
  on update cascade
;
alter table web."HttpdServer"
  add constraint mod_php_version_fkey
  foreign key (mod_php_version)
  references distribution."SoftwareVersion" (pkey)
  on delete restrict
  on update cascade
;
alter table web."HttpdServer"
  add constraint package_fkey
  foreign key (package)
  references billing."Package" (pkey)
  on delete restrict
  on update cascade
;

alter table management."DistroFile"
  add constraint operating_system_version_fkey
  foreign key (operating_system_version)
  references distribution."OperatingSystemVersion" (pkey)
  on delete restrict
  on update cascade
;
alter table management."DistroFile"
  add constraint type_fkey
  foreign key ("type")
  references management."DistroFileType" ("type")
  on delete restrict
  on update cascade
;
alter table management."DistroFile"
  add constraint linux_account_fkey
  foreign key (linux_account)
  references linux."User" (username)
  on delete restrict
  on update cascade
;
alter table management."DistroFile"
  add constraint linux_group_fkey
  foreign key (linux_group)
  references linux."Group" ("name")
  on delete restrict
  on update cascade
;

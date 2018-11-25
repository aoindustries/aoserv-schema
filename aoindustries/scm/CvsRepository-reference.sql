alter table scm."CvsRepository"
  add constraint linux_server_account_fkey
  foreign key (linux_server_account)
  references linux."UserServer" (pkey)
  on delete restrict
  on update cascade
;
alter table scm."CvsRepository"
  add constraint linux_server_group_fkey
  foreign key (linux_server_group)
  references linux."GroupServer" (pkey)
  on delete restrict
  on update cascade
;
alter table scm."CvsRepository"
  add constraint disable_log_fkey
  foreign key (disable_log)
  references account."DisableLog" (pkey)
  on delete restrict
  on update cascade
;
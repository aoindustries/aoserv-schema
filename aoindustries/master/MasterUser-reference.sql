alter table master."MasterUser"
  add constraint username_fkey
  foreign key (username)
  references account."Administrator" (username)
  on delete restrict
  on update cascade
;
alter table linux."DaemonAcl"
  add constraint ao_server_fkey
  foreign key (ao_server)
  references linux."Server" (server)
  on delete restrict
  on update cascade
;
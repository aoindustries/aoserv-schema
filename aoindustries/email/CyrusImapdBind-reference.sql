alter table email."CyrusImapdBind"
  add constraint net_bind_fkey
  foreign key (net_bind)
  references net_binds (pkey)
  on delete cascade
  on update cascade
;
alter table email."CyrusImapdBind"
  add constraint cyrus_imapd_server_fkey
  foreign key (cyrus_imapd_server)
  references email."CyrusImapdServer" (ao_server)
  on delete restrict
  on update cascade
;
alter table email."CyrusImapdBind"
  add constraint certificate_fkey
  foreign key (certificate)
  references ssl_certificates (pkey)
  on delete restrict
  on update cascade
;
alter table email."AttachmentBlocks"
  add constraint linux_server_account_fkey
  foreign key (linux_server_account)
  references linux_server_accounts (pkey)
  on delete restrict
  on update cascade
;
alter table email."AttachmentBlocks"
  add constraint extension_fkey
  foreign key (extension)
  references email."AttachmentType" (extension)
  on delete restrict
  on update cascade
;
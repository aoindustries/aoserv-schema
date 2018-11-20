alter table credit_cards
  add constraint accounting_fkey
  foreign key (accounting)
  references businesses (accounting)
  on delete restrict
  on update cascade
;
alter table credit_cards
  add constraint processor_id_fkey
  foreign key (processor_id)
  references credit_card_processors (provider_id)
  on delete restrict
  on update cascade
;
alter table credit_cards
  add constraint country_code_fkey
  foreign key (country_code)
  references country_codes (code)
  on delete restrict
  on update cascade
;
alter table credit_cards
  add constraint created_by_fkey
  foreign key (created_by)
  references business_administrators (username)
  on delete restrict
  on update cascade
;
alter table credit_cards
  add constraint encryption_card_number_from_fkey
  foreign key (encryption_card_number_from)
  references encryption_keys (pkey)
  on delete restrict
  on update cascade
;
alter table credit_cards
  add constraint encryption_card_number_recipient_fkey
  foreign key (encryption_card_number_recipient)
  references encryption_keys (pkey)
  on delete restrict
  on update cascade
;
alter table credit_cards
  add constraint encryption_expiration_from_fkey
  foreign key (encryption_expiration_from)
  references encryption_keys (pkey)
  on delete restrict
  on update cascade
;
alter table credit_cards
  add constraint encryption_expiration_recipient_fkey
  foreign key (encryption_expiration_recipient)
  references encryption_keys (pkey)
  on delete restrict
  on update cascade
;
select "schema".add_foreign_key('credit_cards', 'accounting', 'businesses', 'accounting', '1.0a100', null);
select "schema".add_foreign_key('credit_cards', 'processor_id', 'credit_card_processors', 'provider_id', '1.29', null);
select "schema".add_foreign_key('credit_cards', 'country_code', 'country_codes', 'code', '1.29', '1.68');
select "schema".add_foreign_key('credit_cards', 'country_code', 'country_codes', 'code', '1.69', null);
select "schema".add_foreign_key('credit_cards', 'created_by', 'business_administrators', 'username', '1.0a100', null);
select "schema".add_foreign_key('credit_cards', 'encryption_card_number_from', 'encryption_keys', 'pkey', '1.31', null);
select "schema".add_foreign_key('credit_cards', 'encryption_card_number_recipient', 'encryption_keys', 'pkey', '1.31', null);
select "schema".add_foreign_key('credit_cards', 'encryption_expiration_from', 'encryption_keys', 'pkey', '1.31', null);
select "schema".add_foreign_key('credit_cards', 'encryption_expiration_recipient', 'encryption_keys', 'pkey', '1.31', null);
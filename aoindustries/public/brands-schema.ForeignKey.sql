select "schema".add_foreign_key('brands', 'accounting', 'businesses', 'accounting', '1.44', null);
select "schema".add_foreign_key('brands', 'smtp_linux_server_account', 'linux_server_accounts', 'pkey', '1.44', null);
select "schema".add_foreign_key('brands', 'imap_linux_server_account', 'linux_server_accounts', 'pkey', '1.44', null);
select "schema".add_foreign_key('brands', 'support_email_address', 'email_addresses', 'pkey', '1.44', null);
select "schema".add_foreign_key('brands', 'signup_email_address', 'email_addresses', 'pkey', '1.44', null);
select "schema".add_foreign_key('brands', 'ticket_encryption_from', 'encryption_keys', 'pkey', '1.44', null);
select "schema".add_foreign_key('brands', 'ticket_encryption_recipient', 'encryption_keys', 'pkey', '1.44', null);
select "schema".add_foreign_key('brands', 'signup_encryption_from', 'encryption_keys', 'pkey', '1.44', null);
select "schema".add_foreign_key('brands', 'signup_encryption_recipient', 'encryption_keys', 'pkey', '1.44', null);
select "schema".add_foreign_key('brands', 'aoweb_struts_vnc_bind', 'net_binds', 'pkey', '1.52', null);
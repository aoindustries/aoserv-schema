select "schema".add_foreign_key('email', 'email_attachment_blocks', 'linux_server_account', 'public', 'linux_server_accounts',  'pkey',      '1.0a116', null);
select "schema".add_foreign_key('email', 'email_attachment_blocks', 'extension',                      'email_attachment_types', 'extension', '1.0a116', null);

select "schema".add_foreign_key('email', 'email_domains', 'ao_server', 'server',  'ao_servers', 'server', '1.0a100', null);
select "schema".add_foreign_key('email', 'email_domains', 'package',   'billing', 'packages',   'name',   '1.0a100', '1.80');
select "schema".add_foreign_key('email', 'email_domains', 'package',   'billing', 'packages',   'name',   '1.80.0',  null);
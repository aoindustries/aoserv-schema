select "schema".add_foreign_key('web', 'httpd_binds', 'net_bind',     'net', 'net_binds',     'pkey', '1.0a100', '1.81.17');
select "schema".add_foreign_key('web', 'httpd_binds', 'net_bind',     'net', 'net_binds',     'id',   '1.81.18', null);
select "schema".add_foreign_key('web', 'httpd_binds', 'httpd_server', 'web', 'httpd_servers', 'pkey', '1.0a100', null);

select "schema".add_foreign_key('web.jboss', 'httpd_jboss_sites', 'tomcat_site',     'web.tomcat', 'httpd_tomcat_sites',   'httpd_site', '1.0a100', null);
select "schema".add_foreign_key('web.jboss', 'httpd_jboss_sites', 'version',         'web.jboss',  'httpd_jboss_versions', 'version',    '1.0a100', null);
select "schema".add_foreign_key('web.jboss', 'httpd_jboss_sites', 'jnp_bind',        'net',        'net_binds',            'pkey',       '1.0a100', null);
select "schema".add_foreign_key('web.jboss', 'httpd_jboss_sites', 'webserver_bind',  'net',        'net_binds',            'pkey',       '1.0a100', null);
select "schema".add_foreign_key('web.jboss', 'httpd_jboss_sites', 'rmi_bind',        'net',        'net_binds',            'pkey',       '1.0a100', null);
select "schema".add_foreign_key('web.jboss', 'httpd_jboss_sites', 'hypersonic_bind', 'net',        'net_binds',            'pkey',       '1.0a100', null);
select "schema".add_foreign_key('web.jboss', 'httpd_jboss_sites', 'jmx_bind',        'net',        'net_binds',            'pkey',       '1.0a100', null);

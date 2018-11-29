select "schema".add_foreign_key('web.tomcat', 'httpd_shared_tomcats', 'ao_server',               'linux',      'ao_servers',            'server',  '1.0a100', null);
select "schema".add_foreign_key('web.tomcat', 'httpd_shared_tomcats', 'version',                 'web.tomcat', 'httpd_tomcat_versions', 'version', '1.0a100', null);
select "schema".add_foreign_key('web.tomcat', 'httpd_shared_tomcats', 'linux_server_account',    'linux',      'linux_server_accounts', 'pkey',    '1.0a100', null);
select "schema".add_foreign_key('web.tomcat', 'httpd_shared_tomcats', 'linux_server_group',      'linux',      'linux_server_groups',   'pkey',    '1.0a100', null);
select "schema".add_foreign_key('web.tomcat', 'httpd_shared_tomcats', 'config_backup_level',     'backup',     'backup_levels',         'level',   '1.0a100', '1.30');
select "schema".add_foreign_key('web.tomcat', 'httpd_shared_tomcats', 'config_backup_retention', 'backup',     'backup_retentions',     'days',    '1.0a100', '1.30');
select "schema".add_foreign_key('web.tomcat', 'httpd_shared_tomcats', 'file_backup_level',       'backup',     'backup_levels',         'level',   '1.0a100', '1.30');
select "schema".add_foreign_key('web.tomcat', 'httpd_shared_tomcats', 'file_backup_retention',   'backup',     'backup_retentions',     'days',    '1.0a100', '1.30');
select "schema".add_foreign_key('web.tomcat', 'httpd_shared_tomcats', 'log_backup_level',        'backup',     'backup_levels',         'level',   '1.0a100', '1.30');
select "schema".add_foreign_key('web.tomcat', 'httpd_shared_tomcats', 'log_backup_retention',    'backup',     'backup_retentions',     'days',    '1.0a100', '1.30');
select "schema".add_foreign_key('web.tomcat', 'httpd_shared_tomcats', 'disable_log',             'account',    'disable_log',           'pkey',    '1.0a100', null);
select "schema".add_foreign_key('web.tomcat', 'httpd_shared_tomcats', 'tomcat4_worker',          'web.tomcat', 'httpd_workers',         'pkey',    '1.0a100', '1.81.17');
select "schema".add_foreign_key('web.tomcat', 'httpd_shared_tomcats', 'tomcat4_worker',          'web.tomcat', 'httpd_workers',         'bind',    '1.81.18', null);
select "schema".add_foreign_key('web.tomcat', 'httpd_shared_tomcats', 'tomcat4_shutdown_port',   'net',        'net_binds',             'pkey',    '1.0a100', '1.81.17');
select "schema".add_foreign_key('web.tomcat', 'httpd_shared_tomcats', 'tomcat4_shutdown_port',   'net',        'net_binds',             'id',      '1.81.18', null);

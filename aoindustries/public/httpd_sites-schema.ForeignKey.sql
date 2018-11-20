select "schema".add_foreign_key(          'httpd_sites', 'ao_server',                          'ao_servers',          'server',   '1.0a100', null);
select "schema".add_foreign_key('public', 'httpd_sites', 'package',                 'billing', 'packages',            'name',     '1.0a100', '1.80');
select "schema".add_foreign_key('public', 'httpd_sites', 'package',                 'billing', 'packages',            'name',     '1.80.0',  null);
select "schema".add_foreign_key(          'httpd_sites', 'linux_account',                      'linux_accounts',      'username', '1.0a100', null);
select "schema".add_foreign_key(          'httpd_sites', 'linux_group',                        'linux_groups',        'name',     '1.0a100', '1.80');
select "schema".add_foreign_key(          'httpd_sites', 'linux_group',                        'linux_groups',        'name',     '1.80.0',  null);
select "schema".add_foreign_key('public', 'httpd_sites', 'config_backup_level',     'backup',  'backup_levels',       'level',    '1.0a100', '1.30');
select "schema".add_foreign_key('public', 'httpd_sites', 'config_backup_retention', 'backup',  'backup_retentions',   'days',     '1.0a100', '1.30');
select "schema".add_foreign_key('public', 'httpd_sites', 'file_backup_level',       'backup',  'backup_levels',       'level',    '1.0a100', '1.30');
select "schema".add_foreign_key('public', 'httpd_sites', 'file_backup_retention',   'backup',  'backup_retentions',   'days',     '1.0a100', '1.30');
select "schema".add_foreign_key('public', 'httpd_sites', 'ftp_backup_level',        'backup',  'backup_levels',       'level',    '1.0a100', '1.30');
select "schema".add_foreign_key('public', 'httpd_sites', 'ftp_backup_retention',    'backup',  'backup_retentions',   'days',     '1.0a100', '1.30');
select "schema".add_foreign_key('public', 'httpd_sites', 'log_backup_level',        'backup',  'backup_levels',       'level',    '1.0a100', '1.30');
select "schema".add_foreign_key('public', 'httpd_sites', 'log_backup_retention',    'backup',  'backup_retentions',   'days',     '1.0a100', '1.30');
select "schema".add_foreign_key(          'httpd_sites', 'disable_log',                        'disable_log',         'pkey',     '1.0a100', null);
select "schema".add_foreign_key(          'httpd_sites', 'php_version',                        'technology_versions', 'pkey',     '1.78',    null);

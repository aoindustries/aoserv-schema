select "schema".add_foreign_key('net', 'net_binds', 'package',       'billing',     'packages',             'name',     '1.0a100', '1.80');
select "schema".add_foreign_key('net', 'net_binds', 'package',       'billing',     'packages',             'name',     '1.80.0',  null);
select "schema".add_foreign_key('net', 'net_binds', 'ao_server',     'linux',       'ao_servers',           'server',   '1.0a100', '1.32');
select "schema".add_foreign_key('net', 'net_binds', 'server',        'server',      'servers',              'pkey',     '1.33',    null);
select "schema".add_foreign_key('net', 'net_binds', 'ip_address',    'net',         'ip_addresses',         'pkey',     '1.0a100', null);
select "schema".add_foreign_key('net', 'net_binds', 'port',          'net',         'net_ports',            'port',     '1.0a100', '1.68');
select "schema".add_foreign_key('net', 'net_binds', 'port',          'net',         'net_ports',            'port',     '1.69',    '1.80');
select "schema".add_foreign_key('net', 'net_binds', 'net_protocol',  'net',         'net_protocols',        'protocol', '1.0a100', '1.80');
select "schema".add_foreign_key('net', 'net_binds', 'app_protocol',  'net',         'protocols',            'protocol', '1.0a100', null);
select "schema".add_foreign_key('net', 'net_binds', 'monitor_delay', 'monitoring',  'net_monitoring_times', 'time',     '1.0a100', '1.0a103');
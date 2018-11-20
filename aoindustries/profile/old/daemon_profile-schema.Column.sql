select "schema".add_column('profile', 'daemon_profile', 'server', 0, 'hostname', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('profile', 'daemon_profile', 'ao_server', 1, 'hostname', false, false, false, '', '1.31', '1.68');
select "schema".add_column('profile', 'daemon_profile', 'ao_server', 2, 'domain_name', false, false, false, '', '1.69', '1.76');
select "schema".add_column('profile', 'daemon_profile', 'level', 3, 'int', false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('profile', 'daemon_profile', 'classname', 4, 'string', false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('profile', 'daemon_profile', 'method_name', 5, 'string', false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('profile', 'daemon_profile', 'parameter', 6, 'string', true, false, false, '', '1.0a100', '1.76');
select "schema".add_column('profile', 'daemon_profile', 'use_count', 7, 'long', false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('profile', 'daemon_profile', 'total_time', 8, 'interval', false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('profile', 'daemon_profile', 'min_time', 9, 'interval', true, false, false, '', '1.0a100', '1.76');
select "schema".add_column('profile', 'daemon_profile', 'max_time', 10, 'interval', true, false, false, '', '1.0a100', '1.76');

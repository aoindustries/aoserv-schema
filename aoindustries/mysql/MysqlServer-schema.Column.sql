select "schema".add_column('mysql', 'mysql_servers', 'pkey',            'pkey',              false,  true, false, 'a unique, generated primary key', '1.4', null);
select "schema".add_column('mysql', 'mysql_servers', 'name',            'string',            false, false, false, 'the name of the server', '1.4', '1.80');
select "schema".add_column('mysql', 'mysql_servers', 'name',            'mysql_server_name', false, false, false, 'the name of the server', '1.80.0', null);
select "schema".add_column('mysql', 'mysql_servers', 'ao_server',       'fkey',              false, false, false, 'the pkey of the server that this database is hosted on', '1.4', null);
select "schema".add_column('mysql', 'mysql_servers', 'version',         'fkey',              false, false, false, 'the pkey of the MySQL version', '1.4', null);
select "schema".add_column('mysql', 'mysql_servers', 'max_connections', 'int',               false, false, false, 'the maximum number of connections for the db', '1.4', null);
select "schema".add_column('mysql', 'mysql_servers', 'net_bind',        'fkey',              false,  true, false, 'the port the server binds to', '1.4', null);
select "schema".add_column('mysql', 'mysql_servers', 'package',         'string',            false, false, false, 'the package who owns the instance', '1.28', '1.80');
select "schema".add_column('mysql', 'mysql_servers', 'package',         'accounting',        false, false, false, 'the package who owns the instance', '1.80.0', null);
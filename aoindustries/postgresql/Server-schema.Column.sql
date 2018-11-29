select "schema".add_column('postgresql', 'postgres_servers', 'pkey',                   'pkey',                 false,  true, false, 'a unique, generated primary key', '1.0a100', '1.81.17');
select "schema".add_column('postgresql', 'postgres_servers', 'bind',                   'fkey',                 false,  true, false, 'the port the server binds to', '1.81.18', null);
select "schema".add_column('postgresql', 'postgres_servers', 'name',                   'string',               false, false, false, 'the name of the database', '1.0a100', '1.80');
select "schema".add_column('postgresql', 'postgres_servers', 'name',                   'postgres_server_name', false, false, false, 'the name of the database', '1.80.0', null);
select "schema".add_column('postgresql', 'postgres_servers', 'ao_server',              'fkey',                 false, false, false, 'the pkey of the server that this database is hosted on', '1.0a100', null);
select "schema".add_column('postgresql', 'postgres_servers', 'version',                'fkey',                 false, false, false, 'the pkey of the PostgreSQL version', '1.0a100', null);
select "schema".add_column('postgresql', 'postgres_servers', 'max_connections',        'int',                  false, false, false, 'the maximum number of connections for the db', '1.0a100', null);
select "schema".add_column('postgresql', 'postgres_servers', 'net_bind',               'fkey',                 false,  true, false, 'the port the server binds to', '1.0a100', '1.81.17');
select "schema".add_column('postgresql', 'postgres_servers', 'sort_mem',               'int',                  false, false, false, 'the amount of shared memory used for sorting', '1.0a100', null);
select "schema".add_column('postgresql', 'postgres_servers', 'shared_buffers',         'int',                  false, false, false, 'the number of shared buffers', '1.0a100', null);
select "schema".add_column('postgresql', 'postgres_servers', 'fsync',                  'boolean',              false, false, false, 'indicates that writes are synchronous', '1.0a100', null);
select "schema".add_column('postgresql', 'postgres_servers', 'last_postgres_usesysid', 'fkey',                 false, false, false, 'the last usesysid assigned on the server', '1.0a100', '1.0a130');

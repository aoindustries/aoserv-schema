select "schema".add_foreign_key('postgresql', 'postgres_users', 'username',    'account', 'usernames',   'username', '1.0a100', '1.80');
select "schema".add_foreign_key('postgresql', 'postgres_users', 'username',    'account', 'usernames',   'username', '1.80.0',  null);
select "schema".add_foreign_key('postgresql', 'postgres_users', 'disable_log', 'account', 'disable_log', 'pkey',     '1.0a100', null);

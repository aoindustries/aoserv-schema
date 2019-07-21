select "schema".add_column('billing', 'notice_log', 'pkey',            'pkey',       false,  true, false, '', '1.0a100', null);
select "schema".add_column('billing', 'notice_log', 'create_time',     'time',       false, false, false, '', '1.0a100', null);
select "schema".add_column('billing', 'notice_log', 'accounting',      'accounting', false, false, false, '', '1.0a100', null);
select "schema".add_column('billing', 'notice_log', 'billing_contact', 'string',     false, false, false, '', '1.0a100', null);
select "schema".add_column('billing', 'notice_log', 'billing_email',   'email',      false, false, false, '', '1.0a100', null);
select "schema".add_column('billing', 'notice_log', 'balance',         'decimal_2',  false, false, false, '', '1.0a100', '1.82.1');
select "schema".add_column('billing', 'notice_log', 'notice_type',     'string',     false, false, false, '', '1.0a100', null);
select "schema".add_column('billing', 'notice_log', 'transid',         'int',         true, false, false, '', '1.0a100', '1.68');
select "schema".add_column('billing', 'notice_log', 'transid',         'fkey',        true, false, false, '', '1.69',    null);

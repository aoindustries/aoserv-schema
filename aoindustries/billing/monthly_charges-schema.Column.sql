select "schema".add_column('billing', 'monthly_charges', 'pkey',        0, 'pkey',        true,  true, false, 'a unique, generated number for reference',          '1.0a100', null);
select "schema".add_column('billing', 'monthly_charges', 'accounting',  1, 'accounting', false, false, false, 'the account code that is charged to',               '1.0a100', null);
select "schema".add_column('billing', 'monthly_charges', 'package',     2, 'package',    false, false, false, 'the package that this is charged for',              '1.0a100', '1.80');
select "schema".add_column('billing', 'monthly_charges', 'package',     3, 'accounting', false, false, false, 'the package that this is charged for',              '1.80.0', null);
select "schema".add_column('billing', 'monthly_charges', 'type',        4, 'string',     false, false, false, 'the type of charge, as found in transaction types', '1.0a100', null);
select "schema".add_column('billing', 'monthly_charges', 'description', 5, 'string',      true, false, false, 'the description that is placed in the transaction', '1.0a100', null);
select "schema".add_column('billing', 'monthly_charges', 'quantity',    6, 'decimal_3',  false, false, false, 'the quantity',                                      '1.0a100', null);
select "schema".add_column('billing', 'monthly_charges', 'rate',        7, 'decimal_2',  false, false, false, 'the rate',                                          '1.0a100', null);
select "schema".add_column('billing', 'monthly_charges', 'created',     8, 'time',       false, false, false, 'the time this entry was created',                   '1.0a100', null);
select "schema".add_column('billing', 'monthly_charges', 'created_by',  9, 'username',   false, false, false, 'the business_administrator who created the entry',  '1.0a100', null);
select "schema".add_column('billing', 'monthly_charges', 'active',     10, 'boolean',    false, false, false, 'flags if this entry is active',                     '1.0a100', null);
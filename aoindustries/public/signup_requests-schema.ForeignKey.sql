select "schema".add_foreign_key(          'signup_requests', 'accounting',                    'businesses',              'accounting', '1.23', '1.43');
select "schema".add_foreign_key(          'signup_requests', 'brand',                         'brands',                  'accounting', '1.44', null);
select "schema".add_foreign_key('public', 'signup_requests', 'package_definition', 'billing', 'package_definitions',     'pkey',       '1.23', null);
select "schema".add_foreign_key(          'signup_requests', 'business_country',              'country_codes',           'code',       '1.23', '1.68');
select "schema".add_foreign_key(          'signup_requests', 'business_country',              'country_codes',           'code',       '1.69', null);
select "schema".add_foreign_key(          'signup_requests', 'ba_country',                    'country_codes',           'code',       '1.23', '1.68');
select "schema".add_foreign_key(          'signup_requests', 'ba_country',                    'country_codes',           'code',       '1.69', null);
select "schema".add_foreign_key(          'signup_requests', 'encryption_from',               'encryption_keys',         'pkey',       '1.31', null);
select "schema".add_foreign_key(          'signup_requests', 'encryption_key',                'encryption_keys',         'pkey',       '1.23', '1.30');
select "schema".add_foreign_key(          'signup_requests', 'encryption_recipient',          'encryption_keys',         'pkey',       '1.31', null);
select "schema".add_foreign_key(          'signup_requests', 'completed_by',                  'business_administrators', 'username',   '1.23', null);

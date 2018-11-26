select "schema".add_column('net.reputation', 'ip_reputation_limiter_limits', 'pkey',                'pkey',   false,  true, false, 'a generated, unique key',       '1.66', null);
select "schema".add_column('net.reputation', 'ip_reputation_limiter_limits', 'limiter',             'fkey',   false, false, false, 'the identifier of the limiter', '1.66', null);
select "schema".add_column('net.reputation', 'ip_reputation_limiter_limits', 'class',               'string', false, false, false, 'the reputation class',          '1.66', null);
select "schema".add_column('net.reputation', 'ip_reputation_limiter_limits', 'syn_per_ip_burst',    'short',  false, false, false, '',                              '1.66', null);
select "schema".add_column('net.reputation', 'ip_reputation_limiter_limits', 'syn_per_ip_rate',     'short',  false, false, false, '',                              '1.66', null);
select "schema".add_column('net.reputation', 'ip_reputation_limiter_limits', 'syn_per_ip_unit',     'string', false, false, false, '',                              '1.66', null);
select "schema".add_column('net.reputation', 'ip_reputation_limiter_limits', 'syn_per_ip_size',     'short',  false, false, false, '',                              '1.66', null);
select "schema".add_column('net.reputation', 'ip_reputation_limiter_limits', 'syn_burst',           'short',  false, false, false, '',                              '1.66', null);
select "schema".add_column('net.reputation', 'ip_reputation_limiter_limits', 'syn_rate',            'short',  false, false, false, '',                              '1.66', null);
select "schema".add_column('net.reputation', 'ip_reputation_limiter_limits', 'syn_unit',            'string', false, false, false, '',                              '1.66', null);
select "schema".add_column('net.reputation', 'ip_reputation_limiter_limits', 'packet_per_ip_burst', 'short',  false, false, false, '',                              '1.66', null);
select "schema".add_column('net.reputation', 'ip_reputation_limiter_limits', 'packet_per_ip_rate',  'short',  false, false, false, '',                              '1.66', null);
select "schema".add_column('net.reputation', 'ip_reputation_limiter_limits', 'packet_per_ip_unit',  'string', false, false, false, '',                              '1.66', null);
select "schema".add_column('net.reputation', 'ip_reputation_limiter_limits', 'packet_per_ip_size',  'short',  false, false, false, '',                              '1.66', null);
select "schema".add_column('net.reputation', 'ip_reputation_limiter_limits', 'packet_burst',        'short',  false, false, false, '',                              '1.66', null);
select "schema".add_column('net.reputation', 'ip_reputation_limiter_limits', 'packet_rate',         'short',  false, false, false, '',                              '1.66', null);
select "schema".add_column('net.reputation', 'ip_reputation_limiter_limits', 'packet_unit',         'string', false, false, false, '',                              '1.66', null);

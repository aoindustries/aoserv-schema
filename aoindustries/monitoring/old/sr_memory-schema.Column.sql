select "schema".add_column('monitoring', 'sr_memory', 'server_report',    'fkey',  false,  true, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'mem_total_min',    'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'mem_total_avg',    'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'mem_total_max',    'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'mem_free_min',     'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'mem_free_avg',     'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'mem_free_max',     'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'mem_shared_min',   'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'mem_shared_avg',   'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'mem_shared_max',   'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'buffers_min',      'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'buffers_avg',      'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'buffers_max',      'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'cached_min',       'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'cached_avg',       'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'cached_max',       'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'swap_cached_min',  'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'swap_cached_avg',  'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'swap_cached_max',  'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'active_min',       'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'active_avg',       'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'active_max',       'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'inact_dirty_min',  'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'inact_dirty_avg',  'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'inact_dirty_max',  'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'inact_clean_min',  'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'inact_clean_avg',  'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'inact_clean_max',  'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'inact_target_min', 'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'inact_target_avg', 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'inact_target_max', 'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'high_total_min',   'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'high_total_avg',   'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'high_total_max',   'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'high_free_min',    'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'high_free_avg',    'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'high_free_max',    'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'low_total_min',    'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'low_total_avg',    'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'low_total_max',    'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'low_free_min',     'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'low_free_avg',     'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'low_free_max',     'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('backup', 'failover_file_replications', 'pkey',             'pkey',       false,  true, false, 'a generated, unique id', '1.0a100', null);
select "schema".add_column('backup', 'failover_file_replications', 'from_server',      'fkey',       false, false, false, 'the pkey of the server that the files are coming from', '1.0a100', '1.30');
select "schema".add_column('backup', 'failover_file_replications', 'server',           'fkey',       false, false, false, 'the pkey of the server that the files are coming from', '1.31', null);
select "schema".add_column('backup', 'failover_file_replications', 'to_server',        'fkey',       false, false, false, 'the pkey of the server that files are being sent to', '1.0a100', '1.30');
select "schema".add_column('backup', 'failover_file_replications', 'backup_partition', 'fkey',       false, false, false, 'the pkey of the backup partition that the files are going to', '1.31', null);
select "schema".add_column('backup', 'failover_file_replications', 'max_bit_rate',     'int',         true, false, false, 'the maximum bit rate for files being replicated', '1.0a105', '1.61');
select "schema".add_column('backup', 'failover_file_replications', 'max_bit_rate',     'long',        true, false, false, 'the maximum bit rate for files being replicated', '1.61', null);
select "schema".add_column('backup', 'failover_file_replications', 'last_start_time',  'time',        true, false, false, 'the last time the replication was started or null if never ran', '1.0a100', '1.30');
select "schema".add_column('backup', 'failover_file_replications', 'use_compression',  'boolean',    false, false, false, 'when compression is enabled, chunk mode is used on mirroring, resulting in more CPU and disk, but less bandwidth', '1.9', null);
select "schema".add_column('backup', 'failover_file_replications', 'retention',        'short',      false, false, false, 'the number of days backups will be kept', '1.13', null);
select "schema".add_column('backup', 'failover_file_replications', 'connect_address',  'string',      true, false, false, 'an address that overrides regular AOServ connections for failovers', '1.14', '1.68');
select "schema".add_column('backup', 'failover_file_replications', 'connect_address',  'hostname',    true, false, false, 'an address or hostname that overrides regular AOServ connections for failovers', '1.69', null);
select "schema".add_column('backup', 'failover_file_replications', 'connect_from',     'string',      true, false, false, 'an address that overrides regular AOServ connection source addresses for failovers', '1.22', '1.68');
select "schema".add_column('backup', 'failover_file_replications', 'connect_from',     'ip_address',  true, false, false, 'an address that overrides regular AOServ connection source addresses for failovers', '1.69', null);
select "schema".add_column('backup', 'failover_file_replications', 'enabled',          'boolean',    false, false, false, 'the enabled flag for failovers', '1.15', null);
select "schema".add_column('backup', 'failover_file_replications', 'to_path',          'string',     false, false, false, 'the destination path for the replication', '1.17','1.30');
select "schema".add_column('backup', 'failover_file_replications', 'chunk_always',     'boolean',    false, false, false, 'when true chunking will always be performed (mtime+length will not be considered a sufficient match)', '1.17', '1.30');
select "schema".add_column('backup', 'failover_file_replications', 'quota_gid',        'int',         true, false, false, 'the gid used on the backup_partition for quota reports, required if backup_partitions quotas are enabled, not allowed otherwise', '1.31', '1.68');
select "schema".add_column('backup', 'failover_file_replications', 'quota_gid',        'fkey',        true, false, false, 'the gid used on the backup_partition for quota reports, required if backup_partitions quotas are enabled, not allowed otherwise', '1.69', '1.80');
select "schema".add_column('backup', 'failover_file_replications', 'quota_gid',        'linux_id',    true, false, false, 'the gid used on the backup_partition for quota reports, required if backup_partitions quotas are enabled, not allowed otherwise', '1.80.0', null);

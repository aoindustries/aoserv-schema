select "schema".add_column('httpd', 'httpd_shared_tomcats', 'pkey', 0, 'pkey', false, true, false, 'pkey for this jvm', '1.0a100', null);
select "schema".add_column('httpd', 'httpd_shared_tomcats', 'name', 1, 'string',false, false, false, 'unique name for this jvm', '1.0a100', null);
select "schema".add_column('httpd', 'httpd_shared_tomcats', 'ao_server', 2, 'fkey',false, false, false, 'the pkey of the server on which this jvm resides', '1.0a100', null);
select "schema".add_column('httpd', 'httpd_shared_tomcats', 'version', 3, 'fkey',false, false, false, 'the tomcat version', '1.0a100', null);
select "schema".add_column('httpd', 'httpd_shared_tomcats', 'linux_server_account', 4, 'fkey', false, false, false, 'the account under which this tomcat runs', '1.0a100', null);
select "schema".add_column('httpd', 'httpd_shared_tomcats', 'linux_server_group', 5, 'fkey', false, false, false, 'the group to which this tomcat is assigned', '1.0a100', null);
select "schema".add_column('httpd', 'httpd_shared_tomcats', 'is_secure', 6, 'boolean', false, false, false, 'is the jvm secure', '1.0a100', '1.81.9');
select "schema".add_column('httpd', 'httpd_shared_tomcats', 'is_overflow', 7, 'boolean', false, false, false, 'is an overflow JVM for several accounts', '1.0a100', '1.81.9');
select "schema".add_column('httpd', 'httpd_shared_tomcats', 'config_backup_level', 8, 'short', false, false, false, 'the number of copies of config backups to store', '1.0a100', '1.30');
select "schema".add_column('httpd', 'httpd_shared_tomcats', 'config_backup_retention', 9, 'short', false, false, false, 'the number of days backups are maintained', '1.0a100', '1.30');
select "schema".add_column('httpd', 'httpd_shared_tomcats', 'file_backup_level', 10, 'short', false, false, false, 'the number of copies of backups to store', '1.0a100', '1.30');
select "schema".add_column('httpd', 'httpd_shared_tomcats', 'file_backup_retention', 11, 'short', false, false, false, 'the number of days backups are maintained', '1.0a100', '1.30');
select "schema".add_column('httpd', 'httpd_shared_tomcats', 'log_backup_level', 12, 'short', false, false, false, 'the number of copies of log file backups to store', '1.0a100', '1.30');
select "schema".add_column('httpd', 'httpd_shared_tomcats', 'log_backup_retention', 13, 'short', false, false, false, 'the number of days backups are maintained', '1.0a100', '1.30');
select "schema".add_column('httpd', 'httpd_shared_tomcats', 'disable_log', 14, 'fkey', true, false, false, 'indicates that the JVM is disabled', '1.0a100', null);
select "schema".add_column('httpd', 'httpd_shared_tomcats', 'tomcat4_worker', 15, 'fkey', true, true, false, 'the httpd_worker for Tomcat version 4', '1.0a100', null);
select "schema".add_column('httpd', 'httpd_shared_tomcats', 'tomcat4_shutdown_port', 16, 'fkey', true, true, false, 'the port that will shut down this JVM', '1.0a100', null);
select "schema".add_column('httpd', 'httpd_shared_tomcats', 'tomcat4_shutdown_key', 17, 'string', true, false, false, 'the key used to shut down the JVM', '1.0a100', null);
select "schema".add_column('httpd', 'httpd_shared_tomcats', 'is_manual', 18, 'boolean', false, false, false, 'the configuration files are manually maintained', '1.0a100', null);
select "schema".add_column('httpd', 'httpd_shared_tomcats', 'max_post_size', 19, 'int', true, false, false, 'the maximum POST size allowed', '1.80.1', null);
select "schema".add_column('httpd', 'httpd_shared_tomcats', 'unpack_wars', 20, 'boolean', false, false, false, 'the unpackWARs setting for this Tomcat', '1.80.1', null);
select "schema".add_column('httpd', 'httpd_shared_tomcats', 'auto_deploy', 21, 'boolean', false, false, false, 'the autoDeploy setting for this Tomcat', '1.80.1', null);
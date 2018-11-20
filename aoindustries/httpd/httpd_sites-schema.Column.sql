select "schema".add_column('httpd', 'httpd_sites', 'pkey',                     0, 'pkey',       false, true,  false, 'a generated primary key', '1.0a100', null);
select "schema".add_column('httpd', 'httpd_sites', 'ao_server',                1, 'fkey',       false, false, false, 'the pkey of the server the site is hosted on', '1.0a100', null);
select "schema".add_column('httpd', 'httpd_sites', 'site_name',                2, 'string',     false, false, false, 'the name of the site, as used in the /www directory.', '1.0a100', null);
select "schema".add_column('httpd', 'httpd_sites', 'list_first',               3, 'boolean',    false, false, false, 'if <code>true</code>, this site will be listed first in the Apache configs.  This is normally used only for the "not found" site for each httpd_server.', '1.0a100', null);
select "schema".add_column('httpd', 'httpd_sites', 'package',                  4, 'package',    false, false, false, 'the package that the site is part of', '1.0a100', '1.80');
select "schema".add_column('httpd', 'httpd_sites', 'package',                  5, 'accounting', false, false, false, 'the package that the site is part of', '1.80.0', null);
select "schema".add_column('httpd', 'httpd_sites', 'linux_account',            6, 'username',   false, false, false, 'the user the site "runs as"', '1.0a100', null);
select "schema".add_column('httpd', 'httpd_sites', 'linux_group',              7, 'string',     false, false, false, 'the primary group that can edit the site content', '1.0a100', '1.80');
select "schema".add_column('httpd', 'httpd_sites', 'linux_group',              8, 'group_id',   false, false, false, 'the primary group that can edit the site content', '1.80.0', null);
select "schema".add_column('httpd', 'httpd_sites', 'server_admin',             9, 'email',      false, false, false, 'the email address of the server administrator.  This address is provided when an error occurs.  The value is most often <code>webmaster@<i>domain.com</i></code>', '1.0a100', null);
select "schema".add_column('httpd', 'httpd_sites', 'content_src',             10, 'path',       true,  false, false, 'optional content added to site on creation', '1.0a100', '1.81.9');
select "schema".add_column('httpd', 'httpd_sites', 'config_backup_level',     11, 'short',      false, false, false, 'the number of copies of config backup files', '1.0a100', '1.30');
select "schema".add_column('httpd', 'httpd_sites', 'config_backup_retention', 12, 'short',      false, false, false, 'the number of days backups will be kept', '1.0a100', '1.30');
select "schema".add_column('httpd', 'httpd_sites', 'file_backup_level',       13, 'short',      false, false, false, 'the number of copies of backup files', '1.0a100', '1.30');
select "schema".add_column('httpd', 'httpd_sites', 'file_backup_retention',   14, 'short',      false, false, false, 'the number of days backups will be kept', '1.0a100', '1.30');
select "schema".add_column('httpd', 'httpd_sites', 'ftp_backup_level',        15, 'short',      false, false, false, 'the number of copies of FTP backup files', '1.0a100', '1.30');
select "schema".add_column('httpd', 'httpd_sites', 'ftp_backup_retention',    16, 'short',      false, false, false, 'the number of days backups will be kept', '1.0a100', '1.30');
select "schema".add_column('httpd', 'httpd_sites', 'log_backup_level',        17, 'short',      false, false, false, 'the number of copies of log backup files', '1.0a100', '1.30');
select "schema".add_column('httpd', 'httpd_sites', 'log_backup_retention',    18, 'short',      false, false, false, 'the number of days backups will be kept', '1.0a100', '1.30');
select "schema".add_column('httpd', 'httpd_sites', 'disable_log',             19, 'fkey',       true,  false, false, 'indicates that the site is disabled', '1.0a100', null);
select "schema".add_column('httpd', 'httpd_sites', 'is_manual',               20, 'boolean',    false, false, false, 'configuration of this server is performed manually', '1.0a100', null);
select "schema".add_column('httpd', 'httpd_sites', 'awstats_skip_files',      21, 'string',     true,  false, false, 'the SkipFiles setting for AWStats', '1.0a129', null);
select "schema".add_column('httpd', 'httpd_sites', 'php_version',             22, 'fkey',       true,  false, false, 'the active version of PHP, if any', '1.78', null);
select "schema".add_column('httpd', 'httpd_sites', 'enable_cgi',              23, 'boolean',    false, false, false, 'CGI is enabled on this website', '1.80', null);
select "schema".add_column('httpd', 'httpd_sites', 'enable_ssi',              24, 'boolean',    false, false, false, 'Server-side includes are enabled on this website', '1.80.1', null);
select "schema".add_column('httpd', 'httpd_sites', 'enable_htaccess',         25, 'boolean',    false, false, false, '.htaccess files are enabled on this website', '1.80.1', null);
select "schema".add_column('httpd', 'httpd_sites', 'enable_indexes',          26, 'boolean',    false, false, false, 'Directory indexes are enabled on this website', '1.80.1', null);
select "schema".add_column('httpd', 'httpd_sites', 'enable_follow_symlinks',  27, 'boolean',    false, false, false, 'Symbolic link following is enabled on this website (required for mod_rewrite)', '1.80.1', null);
select "schema".add_column('httpd', 'httpd_sites', 'enable_anonymous_ftp',    28, 'boolean',    false, false, false, 'Enables the anonymous FTP area for this site.', '1.80.1', null);
select "schema".add_column('httpd', 'httpd_sites', 'block_trace_track',       29, 'boolean',    false, false, false, 'Enables the blocking of TRACE and TRACK HTTP methods on this site.', '1.81.6', null);
select "schema".add_column('httpd', 'httpd_sites', 'block_scm',               30, 'boolean',    false, false, false, 'Enables the blocking of URL patterns associated with source control management systems.', '1.81.6', null);
select "schema".add_column('httpd', 'httpd_sites', 'block_core_dumps',        31, 'boolean',    false, false, false, 'Enables the blocking of core dumps.', '1.81.6', null);
select "schema".add_column('httpd', 'httpd_sites', 'block_editor_backups',    32, 'boolean',    false, false, false, 'Enables the blocking filename patterns associated with editor automatic backups.', '1.81.6', null);

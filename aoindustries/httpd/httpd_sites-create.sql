create sequence httpd_sites_pkey_seq cycle;
grant all            on httpd_sites_pkey_seq to aoadmin;
grant select, update on httpd_sites_pkey_seq to aoserv_app;

create table httpd_sites (
  pkey integer
    default nextval('httpd_sites_pkey_seq')
    constraint httpd_sites_pkey primary key,
  ao_server integer
    not null,
  "name" text
    not null
    -- Site may not conflict with standard packages
    check (
      -- Note: This matches keepWwwDirs in HttpdSiteManager.
      -- Note: This matches isValidSiteName in HttpdSite.
      "name" not in (
        'disabled', -- Provided by aoserv-httpd-site-disabled package
        -- CentOS 5 only
        'cache', -- nginx only?
        'fastcgi',
        'error',
        'icons',
        -- CentOS 7
        'cgi-bin',
        'html',
        'mrtg',
		-- Other filesystem patterns
        'lost+found',
        'aquota.group',
        'aquota.user'
      )
    ),
  list_first boolean
    default false
    not null,
  package text
    not null,
  linux_account text -- TODO: This should go to linux_server_accounts.pkey on the same server
    not null,
  linux_group text -- TODO: This should go to linux_server_groups.pkey on the same server
    not null,
  server_admin text
    not null,
  disable_log integer,
  is_manual bool not null default false,
  awstats_skip_files text,
  php_version integer,
  enable_cgi boolean not null default false,
  check (
    -- CGI required for per-site PHP
    enable_cgi or php_version is null
  ),
  enable_ssi boolean not null default false,
  enable_htaccess boolean not null default false,
  enable_indexes boolean not null default false,
  enable_follow_symlinks boolean not null default false,
  enable_anonymous_ftp boolean not null default false,
  block_trace_track boolean not null default true,
  block_scm boolean not null default true,
  block_core_dumps boolean not null default true,
  block_editor_backups boolean not null default true,
  unique(ao_server, "name")
);
grant all                            on httpd_sites to aoadmin;
grant select, insert, update, delete on httpd_sites to aoserv_app;
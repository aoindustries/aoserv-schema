-- See http://localhost:8080/docs/ao/management/remove/unused#procedure
create or replace view
  management."remove-unused"
as
-- TODO: email.CyrusImapdServer without any email.CyrusImapdBind
-- TODO: email.List with no addresses
-- TODO: email.Domain with no addresses
-- TODO: email.Pipe with no addresses
-- TODO: web.SharedTomcat
-- web.HttpdServer
          (select 'web'::name as "schema", 'HttpdServer'::name as "table", count(*) as unused from management."remove-httpd-server"
           where num_site_binds=0)
-- TODO: mysql.Database (without any mysql.DatabaseUser)
-- TODO: mysql.MysqlUserServer (without any mysql.DatabaseUser)
-- TODO: mysql.User (orphaned)
-- mysql.Server
union all (select 'mysql'::name as "schema", 'Server'::name as "table", count(*) as unused from management."remove-mysql-server"
           where num_databases=0 or num_users=0)
-- TODO: postgresql.Database (without any postgresql.User in same business?/package?)
-- TODO: postgresql.UserServer (without any postgresql.Database in same business?/package?)
-- TODO: postgresql.User (orphaned)
-- postgresql.Server
union all (select 'postgresql'::name as "schema", 'Server'::name as "table", count(*) as unused from management."remove-postgresql-server"
           where num_databases=0 or num_users=0)
-- TODO: email.SendmailServer without any email.SendmailBind
-- TODO: net.FirewallZone
union all (select 'net'::name as "schema", 'IpAddress'::name as "table", count(*) as unused from management."release-net.IpAddress"
           where num_binds=0 and "AO_SERVER" is not null)
-- pki.Certificate
union all (select 'pki'::name as "schema", 'Certificate'::name as "table", count(*) as unused from management."remove-ssl-certificate"
           where num_cyrus_imapd_binds=0 and num_cyrus_imapd_servers=0 and num_httpd_site_binds=0 and num_sendmail_servers=0 and num_other_uses=0)
-- TODO: ftp.GuestUser
-- TODO: linux.LinuxUser (orphaned)
-- TODO: linux.LinuxGroupServer (orphaned or with no linux.LinuxGroupUser)
-- TODO: linux.LinuxGroup (orphaned or with no linux.LinuxGroupUser)
-- TODO: account.Username (orphaned)
-- TODO: business_servers (access to a server but without any resources - useful?)
;

revoke all    on management."remove-unused" from aoadmin;
grant  select on management."remove-unused" to   aoadmin;

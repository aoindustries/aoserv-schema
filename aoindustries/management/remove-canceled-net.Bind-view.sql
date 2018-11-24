create or replace view
  management."remove-canceled-net.Bind"
as
select
  bu.accounting,
  -- TODO: A non-pkey selector might be more helpful, like done for the remove_dns_record command
  -- TODO: Would be based on matching the add_net_bind command, but for unique set of columns, currently (server, ip_address, port, net_protocol)
  'echo "' || nb.package || '"
remove_net_bind ' || nb.pkey as aosh_command,
  nb.port
from
             net."Bind"        nb
  inner join billing."Package" pk on nb.package    = pk."name"
  inner join account."Account" bu on pk.accounting = bu.accounting
where
  bu.canceled is not null and bu.canceled < (now()-'30 days'::interval);

revoke all    on management."remove-canceled-net.Bind" from aoadmin;
grant  select on management."remove-canceled-net.Bind" to   aoadmin;
begin;
insert into
  "web.jboss"."Version"
select
  tv1.id,
  tv2.id,
  '/usr/aoserv/templates/jboss-2.2.2'
from
  distribution."SoftwareVersion" tv1,
  distribution."SoftwareVersion" tv2
where
  tv1."name"='JBoss'
  and tv1.version='2.2.2'
  and tv2."name"='jakarta-tomcat'
  and tv2.version='3.2.4'
  and tv1.operating_system_version=tv2.operating_system_version
;
commit;

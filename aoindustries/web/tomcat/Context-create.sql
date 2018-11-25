create sequence         "web/tomcat"."Context_pkey_seq" cycle;
grant all            on "web/tomcat"."Context_pkey_seq" to aoadmin;
grant select, update on "web/tomcat"."Context_pkey_seq" to aoserv_app;

create table "web/tomcat"."Context" (
  pkey integer
    default nextval('"web/tomcat"."Context_pkey_seq"')
    primary key,
  tomcat_site integer
    not null,
  class_name text,
  -- TODO: Make these nullable and let Tomcat use defaults for cleaner configs
  cookies boolean
    not null,
  cross_context boolean
    not null,
  doc_base text
    not null,
  override boolean
    not null,
  "path" text
    not null,
  privileged boolean
    not null,
  reloadable boolean
    not null,
  use_naming boolean
    not null,
  wrapper_class text,
  debug integer
    not null,
  work_dir text,
  server_xml_configured boolean
    not null,
  unique(tomcat_site, "path")
);
grant all                            on "web/tomcat"."Context" to aoadmin;
grant select, insert, update, delete on "web/tomcat"."Context" to aoserv_app;
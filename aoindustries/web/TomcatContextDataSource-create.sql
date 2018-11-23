create sequence         web."TomcatContextDataSource_pkey_seq" cycle;
grant all            on web."TomcatContextDataSource_pkey_seq" to aoadmin;
grant select, update on web."TomcatContextDataSource_pkey_seq" to aoserv_app;

create table web."TomcatContextDataSource" (
  pkey integer
    default nextval('web."TomcatContextDataSource_pkey_seq"')
    primary key,
  tomcat_context integer
    not null,
  "name" text
    not null,
  driver_class_name text
    not null,
  url text
    not null,
  username text
    not null,
  password text
    not null,
  max_active integer
    not null,
  max_idle integer
    not null,
  max_wait integer
    not null,
  validation_query text,
  unique(tomcat_context, "name")
);
grant all                            on web."TomcatContextDataSource" to aoadmin;
grant select, insert, update, delete on web."TomcatContextDataSource" to aoserv_app;
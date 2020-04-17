/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2018, 2020  AO Industries, Inc.
 *     support@aoindustries.com
 *     7262 Bull Pen Cir
 *     Mobile, AL 36695
 *
 * This file is part of aoserv-schema.
 *
 * aoserv-schema is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * aoserv-schema is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with aoserv-schema.  If not, see <http://www.gnu.org/licenses/>.
 */

create table "web.jboss"."Site" (
  tomcat_site integer
    primary key,
  version integer
    not null,
  jnp_bind integer -- TODO: Should this be unique?
    not null,
  webserver_bind integer -- TODO: Should this be unique?
    not null,
  rmi_bind integer -- TODO: Should this be unique?
    not null,
  hypersonic_bind integer -- TODO: Should this be unique?
    not null,
  jmx_bind integer -- TODO: Should this be unique?
    not null
);
grant all                            on "web.jboss"."Site" to aoadmin;
grant select, insert, update, delete on "web.jboss"."Site" to aoserv_app;

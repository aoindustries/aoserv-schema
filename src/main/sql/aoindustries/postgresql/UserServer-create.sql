/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2018, 2019, 2020  AO Industries, Inc.
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

create sequence         postgresql."UserServer_id_seq" cycle;
grant all            on postgresql."UserServer_id_seq" to aoadmin;
grant select, update on postgresql."UserServer_id_seq" to aoserv_app;
grant select, update on postgresql."UserServer_id_seq" to management;

create table postgresql."UserServer" (
  id integer
    default nextval('postgresql."UserServer_id_seq"')
    primary key,
  username text
    not null,
  postgres_server integer
    not null,
  disable_log integer,
  predisable_password text,
  unique (username, postgres_server)
);
grant all                            on postgresql."UserServer" to aoadmin;
grant select, insert, update, delete on postgresql."UserServer" to aoserv_app;
grant select, insert, delete         on postgresql."UserServer" to management;

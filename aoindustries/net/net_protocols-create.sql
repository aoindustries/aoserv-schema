create table net_protocols (
  protocol text
    primary key
);
grant all            on net_protocols to aoadmin;
grant select, update on net_protocols to aoserv_app;

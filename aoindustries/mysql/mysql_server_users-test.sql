COPY mysql_server_users FROM stdin;
2	root	1	127.0.0.1	\N	\N	0	0	0	0
3	root	2	127.0.0.1	\N	\N	0	0	0	0
40	newmediaworks	1	\N	\N	\N	0	0	0	0
\.
SELECT setval ('mysql.mysql_server_users_pkey_seq', 41, true);

COPY mysql_db_users FROM stdin;
14	1	40	40	t	t	t	t	t	t	f	f	t	t	t	t	f	f	f	f	f	f	f
\.
SELECT setval ('"mysql_db_users_pkey_seq"', 15, true);

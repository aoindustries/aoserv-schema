COPY "aoserv_howtos" FROM stdin;
add_postgres_database	2004-01-08 04:41:28.758249-06	2	postgresql	Adding a PostgreSQL Database	Add PostgreSQL Database	Add Database	How to create a new PostgreSQL database using the AO Serv System	how, to, howto, add, postgresql, postgres, database, ao, serv, aoserv	Before creating a new PostgreSQL database, please make sure that a <A class='aoLightLink' href='@URL(com.aoindustries.website.aoserv.components.client.howto.HowToPage?name=add_postgres_user)'>PostgreSQL user</A> has been added for use as the Database Administrator (DBA).<BR>\r\n<BR>\r\nThe possible values for <code>encoding</code> may be found in the <A class='aoLightLink' href='@(com.aoindustries.website.aoserv.components.client.tables.PublicTables?table_name=postgres_encodings)'><code>postgres_encodings</code></A> table.	<PRE>\r\nadd_postgres_database <i>database_name</i> <i>database_server</i> <i>server</i> <i>dba_username</i> <i>encoding</i>\r\n</PRE>	<PRE>\r\n/**\r\n * Adds a <code>PostgresDatabase</code> to a <code>Server</code>\r\n *\r\n * @param  aoClient        the <code>SimpleAOClient</code> to use\r\n * @param  name            the name of the database to add\r\n * @param  postgresServer  the name of the PostgreSQL server\r\n * @param  server          the hostname of the server to add the database to\r\n * @param  datdba          the username of the database administrator <code>PostgresUser</code>\r\n * @param  encoding        the encoding to use\r\n */\r\npublic static void addPostgresDatabase(\r\n    SimpleAOClient aoClient,\r\n    String name,\r\n    String postgresServer,\r\n    String server,\r\n    String datdba,\r\n    String encoding\r\n) throws IOException, SQLException {\r\n    aoClient.addPostgresDatabase(name, postgresServer, server, datdba, encoding);\r\n}\r\n</PRE>	<PRE>\r\n/**\r\n * Adds a <code>PostgresDatabase</code> to a <code>Server</code>\r\n *\r\n * @param  conn            the <code>AOServConnector</code> to use\r\n * @param  name            the name of the database to add\r\n * @param  postgresServer  the name of the PostgreSQL server\r\n * @param  server          the hostname of the server to add the database to\r\n * @param  datdba          the username of the database administrator <code>PostgresUser</code>\r\n * @param  encoding        the encoding to use\r\n *\r\n * @return  the new <code>PostgresDatabase</code>\r\n */\r\npublic static PostgresDatabase addPostgresDatabase(\r\n    AOServConnector conn,\r\n    String name,\r\n    String postgresServer,\r\n    String server,\r\n    String datdba,\r\n    String encoding\r\n) throws IOException, SQLException {\r\n\r\n    // Resolve the Server\r\n    Server se=conn.getServerTable().getServer(server);\r\n\r\n    // Resolve the PostgresServer\r\n    PostgresServer ps=se.getPostgresServer(postgresServer);\r\n\r\n    // Resolve the datdba PostgresServerUser\r\n    PostgresServerUser psu=ps.getPostgresServerUser(datdba);\r\n\r\n    // Resolve the PostgresEncoding\r\n    PostgresEncoding pe=ps.getPostgresVersion().getPostgresEncoding(conn, encoding);\r\n\r\n    // Add the PostgresDatabase\r\n    int pdPKey=ps.addPostgresDatabase(name, psu, pe);\r\n    \r\n    // Return the object\r\n    return conn.getPostgresDatabaseTable().getPostgresDatabase(pdPKey);\r\n}\r\n</PRE>\r\n
add_mysql_database	2001-12-28 15:45:28-06	1	mysql	Adding a MySQL Database	Add MySQL Database	Add Database	How to create a new MySQL database using the AO Serv System	how, to, howto, add, mysql, database, ao, serv, aoserv	\N	<PRE>\r\nadd_mysql_database <i>database_name</i> <i>server</i> <i>package</i>\r\n</PRE>	<PRE>\r\n/**\r\n * Adds a <code>MySQLDatabase</code> to a <code>Server</code>\r\n *\r\n * @param  aoClient     the <code>SimpleAOClient</code> to use\r\n * @param  name         the name of the database to add\r\n * @param  server       the hostname of the server to add the database to\r\n * @param  packageName  the name of the <code>Package</code> that owns the new database\r\n */\r\npublic static void addMySQLDatabase(\r\n    SimpleAOClient aoClient,\r\n    String name,\r\n    String server,\r\n    String packageName\r\n) throws IOException, SQLException {\r\n    aoClient.addMySQLDatabase(name, server, packageName);\r\n}\r\n</PRE>	<PRE>\r\n/**\r\n * Adds a <code>MySQLDatabase</code> to a <code>Server</code>\r\n *\r\n * @param  aoClient  the <code>SimpleAOClient</code> to use\r\n * @param  name  the name of the database to add\r\n * @param  server  the hostname of the server to add the database to\r\n * @param  packageName  the name of the <code>Package</code> that owns the new database\r\n *\r\n * @return  the new <code>MySQLDatabase</code>\r\n */\r\npublic static MySQLDatabase addMySQLDatabase(\r\n    AOServConnector conn,\r\n    String name,\r\n    String server,\r\n    String packageName\r\n) throws IOException, SQLException {\r\n\r\n    // Resolve the Server\r\n    Server se=conn.getServerTable().getServer(server);\r\n\r\n    // Resolve the Package\r\n    Package pk=conn.getPackageTable().getPackage(packageName);\r\n\r\n    // Add the MySQLDatabase\r\n    int mdPKey=se.addMySQLDatabase(name, pk);\r\n    MySQLDatabase md=conn.getMySQLDatabaseTable().getMySQLDatabase(mdPKey);\r\n\r\n    // Return the object\r\n    return md;\r\n}\r\n</PRE>\r\n
add_ftp_guest_user	2002-01-29 19:47:58-06	1	ftp	Adding a FTP Guest User	Add FTP Guest User	Add FTP User	How to add an FTP Guest User using the AO Serv System	how, to, howto, add, ftp, guest, user, ao, serv, aoserv	An FTP Guest User is a restricted Linux Account.  The account is allowed to transfer files via FTP only.  The account may\r\nnot be used for use as an email inbox.  If the user logs into the server via SSH or telnet, they are allowed to change their\r\npassword and then they are immediately disconnected.<BR>\r\n<BR>\r\nFTP Guest Users may only transfer files into and out of their home directories.  By making the home directory of the user be\r\nthe <code>/www/<i>sitename</i>/webapps</code> directory, the account is effectively restricted to accessing and updating the\r\ncontent of a single web site.  Keep in mind, however, that the user may still upload\r\ncode that can access files outside the site.\r\n	<PRE>\r\nadd_username <i>package</i> <i>username</i>\r\nadd_linux_account <i>username</i> <i>group</i> <i>full_name</i> "" "" "" ftponly /usr/bin/ftppasswd\r\nadd_ftp_guest_user <i>username</i>\r\nadd_linux_server_account <i>username</i> <i>server</i> /www/<i>sitename</i>/webapps\r\nwait_for_linux_account_rebuild <i>server</i>\r\nset_linux_server_account_password <i>username</i> <i>server</i> <i>password</i>\r\n</PRE>\r\n	<PRE>\r\n/**\r\n * Adds a <code>FtpGuestUser</code> to the system.\r\n *\r\n * @param  aoClient     the <code>SimpleAOClient</code> to use\r\n * @param  packageName  the name of the package to add the account to\r\n * @param  username     the username to allocate\r\n * @param  fullName     the full name of the user\r\n * @param  group        the name of the Linux group they can access\r\n * @param  server       the hostname of the server to add the database to\r\n * @param  home         the directory the user has access to\r\n * @param  password     the password for the new account\r\n */\r\npublic static void addFTPGuestuser(\r\n    SimpleAOClient aoClient,\r\n    String packageName,\r\n    String username,\r\n    String fullName,\r\n    String group,\r\n    String server,\r\n    String home,\r\n    String password\r\n) throws IOException, SQLException {\r\n    // Allocate the username\r\n    aoClient.addUsername(packageName, username);\r\n    \r\n    // Reserve the username for use as a Linux account\r\n    aoClient.addLinuxAccount(username, group, fullName, null, null, null, LinuxAccountType.FTPONLY, Shell.FTPPASSWD);\r\n\r\n    // Limit the FTP transfers to the users home directory\r\n    aoClient.addFtpGuestUser(username);\r\n    \r\n    // Grant the user access to the server\r\n    aoClient.addLinuxServerAccount(username, server, home);\r\n\r\n    // Wait for rebuild\r\n    aoClient.waitForLinuxAccountRebuild(server);\r\n\r\n    // Set the password\r\n    aoClient.setLinuxServerAccountPassword(username, server, password);\r\n}\r\n</PRE>	<PRE>\r\n/**\r\n * Adds a <code>FtpGuestUser</code> to the system.\r\n *\r\n * @param  conn         the <code>AOServConnector</code> to use\r\n * @param  packageName  the name of the package to add the account to\r\n * @param  username     the username to allocate\r\n * @param  fullName     the full name of the user\r\n * @param  group        the name of the Linux group they can access\r\n * @param  server       the hostname of the server to add the database to\r\n * @param  home         the directory the user has access to\r\n * @param  password     the password for the new account\r\n *\r\n * @return  the new <code>LinuxServerAccount</code>\r\n */\r\npublic static LinuxServerAccount addFTPGuestuser(\r\n    AOServConnector conn,\r\n    String packageName,\r\n    String username,\r\n    String fullName,\r\n    String group,\r\n    String server,\r\n    String home,\r\n    String password\r\n) throws IOException, SQLException {\r\n    // Resolve the Package\r\n    Package pk=conn.getPackageTable().getPackage(packageName);\r\n\r\n    // Allocate the username\r\n    pk.addUsername(username);\r\n    Username un=conn.getUsernameTable().getUsername(username);\r\n    \r\n    // Reserve the username for use as a Linux account\r\n    un.addLinuxAccount(fullName, group, null, null, null, LinuxAccountType.FTPONLY, Shell.FTPPASSWD);\r\n    LinuxAccount la=un.getLinuxAccount();\r\n\r\n    // Limit the FTP transfers to the users home directory\r\n    la.addFtpGuestUser();\r\n\r\n    // Grant the user access to the server\r\n    int lsaPKey=la.addLinuxServerAccount(server, home);\r\n    LinuxServerAccount lsa=conn.getLinuxServerAccountTable().getLinuxServerAccount(lsaPKey);\r\n\r\n    // Wait for rebuild\r\n    conn.getServerTable().getServer(server).waitForLinuxAccountRebuild();\r\n\r\n    // Set the password\r\n    lsa.setPassword(password);\r\n    \r\n    // Return the new object\r\n    return lsa;\r\n}\r\n</PRE>
add_mysql_user	2001-12-28 16:32:17-06	2	mysql	Adding a MySQL User	Add MySQL User	Add User	How to create a new MySQL user using the AO Serv System	how, to, howto, add, mysql, user ao, serv, aoserv	\N	<PRE>\r\nadd_username <i>package</i> <i>username</i>\r\nadd_mysql_user <i>username</i>\r\nadd_mysql_server_user <i>username</i> <i>server</i> ""\r\nadd_mysql_db_user <i>database_name</i> <i>server</i> <i>username</i> true true true true true true true true\r\nwait_for_mysql_user_rebuild <i>server</i>\r\nset_mysql_server_user_password <i>username</i> <i>server</i> <i>password</i>\r\n</PRE>\r\n	<PRE>\r\n/**\r\n * Adds a <code>MySQLUser</code> to the system.\r\n *\r\n * @param  aoClient     the <code>SimpleAOClient</code> to use\r\n * @param  packageName  the name of the <code>Package</code>\r\n * @param  username     the new username to allocate\r\n * @param  server       the hostname of the server to add the account to\r\n * @param  database     the new user will be granted access to this database\r\n * @param  password     the password for the new account\r\n */\r\npublic static void addMySQLUser(\r\n    SimpleAOClient aoClient,\r\n    String packageName,\r\n    String username,\r\n    String server,\r\n    String database,\r\n    String password\r\n) throws IOException, SQLException {\r\n    // Reserve the username\r\n    aoClient.addUsername(packageName, username);\r\n\r\n    // Indicate the username will be used for MySQL accounts\r\n    aoClient.addMySQLUser(username);\r\n\r\n    // Grant access to the server\r\n    aoClient.addMySQLServerUser(username, server, MySQLHost.ANY_LOCAL_HOST);\r\n\r\n    // Grant access to the database\r\n    aoClient.addMySQLDBUser(database, server, username, true, true, true, true, true, true, true, true);\r\n\r\n    // Commit the changes before setting the password\r\n    aoClient.waitForMySQLUserRebuild(server);\r\n\r\n    // Set the password\r\n    aoClient.setMySQLServerUserPassword(username, server, password);\r\n}\r\n</PRE>\r\n	<PRE>\r\n/**\r\n * Adds a <code>MySQLUser</code> to the system.\r\n *\r\n * @param  conn         the <code>AOServConnector/code> to use\r\n * @param  packageName  the name of the <code>Package</code>\r\n * @param  username     the new username to allocate\r\n * @param  server       the hostname of the server to add the account to\r\n * @param  database     the new user will be granted access to this database\r\n * @param  password     the password for the new account\r\n *\r\n * @return  the new <code>MySQLServerUser</code>\r\n */\r\npublic static MySQLServerUser addMySQLUser(\r\n    AOServConnector conn,\r\n    String packageName,\r\n    String username,\r\n    String server,\r\n    String database,\r\n    String password\r\n) throws IOException, SQLException {\r\n    // Find the Package\r\n    Package pk=conn.getPackageTable().getPackage(packageName);\r\n\r\n    // Reserve the username\r\n    pk.addUsername(username);\r\n    Username un=conn.getUsernameTable().getUsername(username);\r\n\r\n    // Indicate the username will be used for MySQL accounts\r\n    un.addMySQLUser();\r\n    MySQLUser mu=un.getMySQLUser();\r\n\r\n    // Resolve the Server\r\n    Server se=conn.getServerTable().getServer(server);\r\n\r\n    // Grant access to the server\r\n    int msuPKey=mu.addMySQLServerUser(se, MySQLHost.ANY_LOCAL_HOST);\r\n    MySQLServerUser msu=conn.getMySQLServerUserTable().getMySQLServerUser(msuPKey);\r\n    \r\n    // Find the MySQLDatabase\r\n    MySQLDatabase md=se.getMySQLDatabase(database);\r\n\r\n    // Grant access to the database\r\n    md.addMySQLServerUser(msu, true, true, true, true, true, true, true, true);\r\n\r\n    // Commit the changes before setting the password\r\n    se.waitForMySQLUserRebuild();\r\n\r\n    // Set the password\r\n    msu.setPassword(password);\r\n    \r\n    // Return the object\r\n    return msu;\r\n}\r\n</PRE>\r\n
add_email_inbox	2003-06-18 03:51:01.959568-05	1	email	Adding an Email Inbox	Adding an Email Inbox	Add Inbox	How to add an email inbox	how, to, howto, add, email, inbox, ao, serv, aoserv, instructions	An email inbox is a restricted Linux account.  It can be used for sending\r\nand receiving email using the <code>POP2</code>, <code>POP3</code>,\r\n<code>IMAP</code>, <code>SPOP3</code>, <code>SIMAP</code>, and <code>SMTP</code>\r\nprotocols.  If a shell connection is established, either via SSH or Telnet, the\r\nuser is prompted to change their password.  All other protocols are refused,\r\nincluding <code>FTP</code>.	<PRE>\r\nadd_username <i>package</i> <i>username</i>\r\nadd_linux_account <i>username</i> mailonly <i>full_name</i> "" "" "" email /usr/bin/passwd\r\nadd_linux_server_account <i>username</i> <i>server</i> ""\r\nadd_linux_acc_address <i>address@domain.com</i> <i>server</i> <i>username</i>\r\nwait_for_linux_account_rebuild <i>server</i>\r\nset_linux_server_account_password <i>username</i> <i>server</i> <i>password</i>\r\n</PRE>\r\n	<PRE>\r\n/**\r\n * Creates a new email inbox.\r\n *\r\n * @param  aoClient     the <code>SimpleAOClient</code> to use\r\n * @param  packageName  the name of the <code>Package</code>\r\n * @param  username     the new username to allocate\r\n * @param  fullName     the user's full name\r\n * @param  server       the hostname of the server to add the user to\r\n * @param  address      the part of the email address before the <code>@</code>\r\n * @param  password     the password for the new user\r\n */\r\npublic static void addEmailInbox(\r\n    SimpleAOClient aoClient,\r\n    String packageName,\r\n    String username,\r\n    String fullName,\r\n    String server,\r\n    String address,\r\n    String domain,\r\n    String password\r\n) throws IOException, SQLException {\r\n    // Reserve the username\r\n    aoClient.addUsername(packageName, username);\r\n\r\n    // Indicate the username will be used for Linux accounts\r\n    aoClient.addLinuxAccount(username, LinuxGroup.MAILONLY, fullName, null, null, null, LinuxAccountType.EMAIL, Shell.PASSWD);\r\n\r\n    // Grant the new Linux account access to the server\r\n    aoClient.addLinuxServerAccount(username, server, null);\r\n\r\n    // Attach the email address to the new inbox\r\n    aoClient.addLinuxAccAddress(address, domain, server, username);\r\n    \r\n    // Wait for rebuild\r\n    aoClient.waitForLinuxAccountRebuild(server);\r\n\r\n    // Set the password\r\n    aoClient.setLinuxServerAccountPassword(username, server, password);\r\n}\r\n</PRE>\r\n	<PRE>\r\n/**\r\n * Creates a new email inbox.\r\n *\r\n * @param  conn         the <code>AOServConnector</code> to use\r\n * @param  packageName  the name of the <code>Package</code>\r\n * @param  username     the new username to allocate\r\n * @param  fullName     the user's full name\r\n * @param  server       the hostname of the server to add the user to\r\n * @param  address      the part of the email address before the <code>@</code>\r\n * @param  password     the password for the new account\r\n *\r\n * @return  the new <code>LinuxServerAccount</code>\r\n */\r\npublic static LinuxServerAccount addEmailInbox(\r\n    AOServConnector conn,\r\n    String packageName,\r\n    String username,\r\n    String fullName,\r\n    String server,\r\n    String address,\r\n    String domain,\r\n    String password\r\n) throws IOException, SQLException {\r\n    // Resolve the Package\r\n    Package pk=conn.getPackageTable().getPackage(packageName);\r\n\r\n    // Reserve the username\r\n    pk.addUsername(username);\r\n    Username un=conn.getUsernameTable().getUsername(username);\r\n\r\n    // Indicate the username will be used for Linux accounts\r\n    un.addLinuxAccount(LinuxGroup.MAILONLY, fullName, null, null, null, LinuxAccountType.EMAIL, Shell.PASSWD);\r\n    LinuxAccount la=un.getLinuxAccount();\r\n\r\n    // Grant the new Linux account access to the server\r\n    int lsaPKey=la.addLinuxServerAccount(server, LinuxServerAccount.getDefaultHomeDirectory(username));\r\n    LinuxServerAccount lsa=conn.getLinuxServerAccountTable().getLinuxServerAccount(lsaPKey);\r\n\r\n    // Find the Server\r\n    Server se=conn.getServerTable().getServer(server);\r\n\r\n    // Find the EmailDomain\r\n    EmailDomain sd=se.getEmailDomain(domain);\r\n\r\n    // Create the new email address\r\n    int eaPKey=sd.addEmailAddress(address);\r\n    EmailAddress ea=conn.getEmailAddressTable().getEmailAddress(eaPKey);\r\n\r\n    // Attach the email address to the new inbox\r\n    la.addEmailAddress(ea);\r\n\r\n    // Wait for rebuild\r\n    se.waitForLinuxAccountRebuild();\r\n\r\n    // Set the password\r\n    lsa.setPassword(password);\r\n    \r\n    // Return the new object\r\n    return lsa;\r\n}\r\n</PRE>\r\n
connect_with_username	2004-01-08 04:42:54.892979-06	1	connecting	Connecting With Username and Password	Connecting With Username and Password	With Username	How to connect to the AO Serv System with a specific username and password	howto, connect, ao, serv, aoserv, username, password, using, with	If the username and password are not <A class='aoLightLink' href='@URL(com.aoindustries.website.aoserv.components.client.howto.HowToPage?name=connect_with_properties)'>defined in the <code>aoserv-client.properties</code> file</A> or a different username and password is desired, connections may be established using a specific username and password.	First, log into the server using either SSH or Telnet, preferably SSH.  Once authenticated, type:<BR>\r\n<BR>\r\n<TABLE border=0 cellspacing=0 cellpadding='2'>\r\n<TR>\r\n<TD>For interactive mode:</TD>\r\n<TD><code>aosh -i</code></TD>\r\n</TR><TR>\r\n<TD>For script mode:</TD>\r\n<TD><code>aosh</code></TD>\r\n</TR>\r\n</TABLE>\r\n<BR>\r\nYou will be prompted for your username and password as the shell starts.	<PRE> \r\nimport com.aoindustries.aoserv.client.SimpleAOClient; \r\n\r\n// ... \r\n\r\nString username="my_username";\r\nString password="my_strong_password";\r\nSimpleAOClient aoClient=new SimpleAOClient(username, password);\r\n\r\n// ... \r\n</PRE>	<PRE> \r\nimport com.aoindustries.aoserv.client.*; \r\n\r\n// ... \r\n\r\nString username="my_username";\r\nString password="my_strong_password";\r\nAOServConnector aoConn=new AOServConnector(username, password);\r\n\r\n// ... \r\n</PRE>
add_postgres_user	2003-06-18 03:56:53.054196-05	1	postgresql	Adding a PostgreSQL User	Add PostgreSQL User	Add User	How to add a PostgreSQL user through the AO Serv System.	howto, how, to, add, postgresql, postgres, user, account, aoserv, ao, serv, system	\N	<PRE>\r\nadd_username <i>package</i> <i>username</i>\r\nadd_postgres_user <i>username</i>\r\nadd_postgres_server_user <i>username</i> <i>postgres_server</i> <i>server</i>\r\nwait_for_postgres_user_rebuild <i>server</i>\r\nset_postgres_server_user_password <i>username</i> <i>postgres_server</i> <i>server</i> <i>password</i>\r\n</PRE>	<PRE>\r\n/**\r\n * Adds a <code>PostgresUser</code> to the system.\r\n *\r\n * @param  aoClient        the <code>SimpleAOClient</code> to use\r\n * @param  packageName     the name of the <code>Package</code>\r\n * @param  username        the new username to allocate\r\n * @param  postgresServer  the name of the PostgreSQL server\r\n * @param  server          the hostname of the server to add the account to\r\n * @param  password        the password for the new account\r\n */\r\npublic static void addPostgresUser(\r\n    SimpleAOClient aoClient,\r\n    String packageName,\r\n    String username,\r\n    String postgresServer,\r\n    String server,\r\n    String password\r\n) throws IOException, SQLException {\r\n    // Reserve the username\r\n    aoClient.addUsername(packageName, username);\r\n\r\n    // Indicate the username will be used for PostgreSQL accounts\r\n    aoClient.addPostgresUser(username);\r\n\r\n    // Grant access to the server\r\n    aoClient.addPostgresServerUser(username, postgresServer, server);\r\n    \r\n    // Commit the changes before setting the password\r\n    aoClient.waitForPostgresUserRebuild(server);\r\n    \r\n    // Set the password\r\n    aoClient.setPostgresServerUserPassword(username, postgresServer, server, password);\r\n}\r\n</PRE>	<PRE>\r\n/**\r\n * Adds a <code>PostgresUser</code> to the system.\r\n *\r\n * @param  conn            the <code>AOServConnector</code> to use\r\n * @param  packageName     the name of the <code>Package</code>\r\n * @param  username        the new username to allocate\r\n * @param  postgresServer  the name of the PostgreSQL server\r\n * @param  server          the hostname of the server to add the account to\r\n * @param  password        the password for the new account\r\n *\r\n * @return  the new <code>PostgresServerUser</code>\r\n */\r\npublic static PostgresServerUser addPostgresUser(\r\n    AOServConnector conn,\r\n    String packageName,\r\n    String username,\r\n    String postgresServer,\r\n    String server,\r\n    String password\r\n) throws IOException, SQLException {\r\n    // Find the Package\r\n    Package pk=conn.getPackageTable().getPackage(packageName);\r\n\r\n    // Reserve the username\r\n    pk.addUsername(username);\r\n    Username un=conn.getUsernameTable().getUsername(username);\r\n\r\n    // Indicate the username will be used for PostgreSQL accounts\r\n    un.addPostgresUser();\r\n    PostgresUser pu=un.getPostgresUser();\r\n\r\n    // Resolve the Server\r\n    Server se=conn.getServerTable().getServer(server);\r\n\r\n    // Resolve the PostgresServer\r\n    PostgresServer ps=se.getPostgresServer(postgresServer);\r\n\r\n    // Grant access to the server\r\n    int psuPKey=pu.addPostgresServerUser(ps);\r\n    PostgresServerUser psu=conn.getPostgresServerUserTable().getPostgresServerUser(psuPKey);\r\n    \r\n    // Commit the changes before setting the password\r\n    se.waitForPostgresUserRebuild();\r\n\r\n    // Set the password\r\n    psu.setPassword(password);\r\n    \r\n    // Return the object\r\n    return psu;\r\n}\r\n</PRE>
connect_with_properties	2003-07-07 19:34:02.141441-05	2	connecting	Connecting Using Properties File	Connecting Using Properties File	With Properties	How to connect to the AO Serv System using the username and password contained in aoserv-client.properties	connect, aoserv, ao, serv, Java, properties, file	The username and password for connections may be stored in the AO Serv Client properties file named <code>/com/aoindustries/aoserv/client/aoserv-client.properties</code>.  The default properties look like the following:\r\n<PRE>\r\naoserv.client.username=\r\naoserv.client.password=\r\n\r\n# List of supported protocols\r\naoserv.client.protocols=tcp\r\n\r\n# Socket specific parameters\r\naoserv.client.tcp.hostname=master.aoindustries.com\r\naoserv.client.tcp.port=4582\r\naoserv.client.tcp.connection.pool.size=8\r\n</PRE>\r\n<BR>\r\nBy placing this resource in your <code>CLASSPATH</code> before <code>aoserv-client.jar</code>, you can override the default settings.  Adding the username and password for your connection will avoid login prompts for the <code>aosh</code> and allow you to use the <code>AOServConnector.getConnector()</code> call to establish connections.\r\n<PRE>\r\naoserv.client.username=my_username\r\naoserv.client.password=my_strong_password\r\n\r\n# List of supported protocols\r\naoserv.client.protocols=tcp\r\n\r\n# Socket specific parameters\r\naoserv.client.tcp.hostname=master.aoindustries.com\r\naoserv.client.tcp.port=4582\r\naoserv.client.tcp.connection.pool.size=8\r\n</PRE>	First, log into the server using either SSH or Telnet, preferably SSH.  Once authenticated, type:<BR>\r\n<BR>\r\n<TABLE border=0 cellspacing=0 cellpadding='2'>\r\n  <TR>\r\n    <TD>For interactive mode:</TD>\r\n    <TD><code>aosh -i</code></TD>\r\n  </TR><TR>\r\n    <TD>For script mode:</TD>\r\n    <TD><code>aosh</code></TD>\r\n  </TR>\r\n</TABLE>	<PRE>\r\nimport com.aoindustries.aoserv.client.SimpleAOClient;\r\n\r\n// ...\r\n\r\nSimpleAOClient aoClient=new SimpleAOClient();\r\n\r\n// ...\r\n</PRE>	<PRE>\r\nimport com.aoindustries.aoserv.client.*;\r\n\r\n// ...\r\n\r\nAOServConnector aoConn=new AOServConnector();\r\n\r\n// ...\r\n</PRE>
\.

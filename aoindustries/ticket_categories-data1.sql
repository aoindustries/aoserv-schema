begin;
insert into ticket_categories values(1, null, 'email');
    insert into ticket_categories values(2, 1, 'abuse');
    insert into ticket_categories values(3, 1, 'blacklist');
    insert into ticket_categories values(4, 1, 'spam');
    insert into ticket_categories values(5, 1, 'smtp');
    insert into ticket_categories values(6, 1, 'pop');
    insert into ticket_categories values(7, 1, 'imap');
    insert into ticket_categories values(8, 1, 'spf');
    insert into ticket_categories values(9, 1, 'forwarding');
    insert into ticket_categories values(10, 1, 'lists');
        insert into ticket_categories values(11, 10, 'majordomo');
insert into ticket_categories values(12, null, 'databases');
    insert into ticket_categories values(13, 12, 'mysql');
        insert into ticket_categories values(14, 13, 'innodb');
        insert into ticket_categories values(15, 13, 'replication');
    insert into ticket_categories values(16, 12, 'postgresql');
        insert into ticket_categories values(17, 16, 'postgis');
    insert into ticket_categories values(18, 12, 'interbase');
insert into ticket_categories values(19, null, 'billing');
    insert into ticket_categories values(20, 19, 'history');
    insert into ticket_categories values(21, 19, 'payment');
insert into ticket_categories values(22, null, 'programming');
    insert into ticket_categories values(23, 22, 'cgi');
    insert into ticket_categories values(24, 22, 'java');
        insert into ticket_categories values(25, 24, 'j2ee');
        insert into ticket_categories values(26, 24, 'java_ee_5');
        insert into ticket_categories values(27, 24, 'struts');
        insert into ticket_categories values(28, 24, 'spring');
        insert into ticket_categories values(29, 24, 'appfuse');
        insert into ticket_categories values(30, 24, 'servlets');
        insert into ticket_categories values(31, 24, 'jsp');
            insert into ticket_categories values(32, 31, 'jstl');
        insert into ticket_categories values(33, 24, 'jdbc');
        insert into ticket_categories values(34, 24, 'hibernate');
    insert into ticket_categories values(35, 22, 'python');
    insert into ticket_categories values(36, 22, 'php');
    insert into ticket_categories values(37, 22, 'gcc');
    insert into ticket_categories values(38, 22, 'perl');
    insert into ticket_categories values(39, 22, 'ruby');
        insert into ticket_categories values(40, 39, 'rails');
    insert into ticket_categories values(41, 22, 'groovy');
        insert into ticket_categories values(42, 41, 'grails');
insert into ticket_categories values(43, null, 'server_access');
    insert into ticket_categories values(44, 43, 'shell_account');
    insert into ticket_categories values(45, 43, 'telnet');
    insert into ticket_categories values(46, 43, 'ftp');
    insert into ticket_categories values(47, 43, 'ssh');
        insert into ticket_categories values(48, 47, 'sftp');
insert into ticket_categories values(49, null, 'web_servers');
    insert into ticket_categories values(50, 49, 'apache');
    insert into ticket_categories values(51, 49, 'tomcat');
    insert into ticket_categories values(52, 49, 'glassfish');
    insert into ticket_categories values(53, 49, 'jboss');
insert into ticket_categories values(54, null, 'version_control');
    insert into ticket_categories values(55, 54, 'cvs');
    insert into ticket_categories values(56, 54, 'subversion');
insert into ticket_categories values(57, null, 'dns');
insert into ticket_categories values(58, null, 'web_design');
    insert into ticket_categories values(59, 58, 'html');
    insert into ticket_categories values(60, 58, 'css');
    insert into ticket_categories values(61, 58, 'ajax');
    insert into ticket_categories values(62, 58, 'flash');
    insert into ticket_categories values(63, 58, 'applets');
insert into ticket_categories values(64, null, 'logging_stats');
    insert into ticket_categories values(65, 64, 'awstats');
insert into ticket_categories values(66, null, 'security');
    insert into ticket_categories values(67, 66, 'encryption');
        insert into ticket_categories values(68, 67, 'gpg');
        insert into ticket_categories values(69, 67, 'openssl');
        insert into ticket_categories values(70, 67, 'bouncycastle');
    insert into ticket_categories values(71, 66, 'firewalls');
insert into ticket_categories values(72, null, 'reseller_system');
    insert into ticket_categories values(73, 72, 'package_builder');
    insert into ticket_categories values(74, 72, 'support_system');
    insert into ticket_categories values(75, 72, 'aoweb_struts');
insert into ticket_categories values(76, null, 'cms');
    insert into ticket_categories values(77, 76, 'xoops');
    insert into ticket_categories values(78, 76, 'wiki');
        insert into ticket_categories values(79, 78, 'mediawiki');
        insert into ticket_categories values(80, 78, 'tikiwiki');
    insert into ticket_categories values(81, 76, 'drupal');
    insert into ticket_categories values(82, 76, 'joomla');
    insert into ticket_categories values(83, 76, 'mambo');
    insert into ticket_categories values(84, 76, 'wordpress');
insert into ticket_categories values(85, null, 'forums');
    insert into ticket_categories values(86, 85, 'smf');
    insert into ticket_categories values(87, 85, 'phpbb');
insert into ticket_categories values(88, null, 'groupware');
    insert into ticket_categories values(89, 88, 'phpgroupware');
insert into ticket_categories values(90, null, 'feedback');
    insert into ticket_categories values(91, 90, 'testimonial');
insert into ticket_categories values(92, null, 'aoserv');
    insert into ticket_categories values(93, 92, 'aoserv_client');
    insert into ticket_categories values(94, 92, 'aosh');
    insert into ticket_categories values(95, 92, 'aoweb_daemon');
    insert into ticket_categories values(96, 92, 'aoweb_struts');
insert into ticket_categories values(97, null, 'ip_addresses');
insert into ticket_categories values(98, null, 'performance');
insert into ticket_categories values(99, null, 'reliability');
    insert into ticket_categories values(100, 99, 'monitoring');
insert into ticket_categories values(101, null, 'support_systems');
    insert into ticket_categories values(102, 101, 'web_interface');
    insert into ticket_categories values(103, 101, 'email_support');
insert into ticket_categories values(104, null, 'hardware');
commit;

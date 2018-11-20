select "schema".add_column('httpd', 'httpd_site_authenticated_locations', 'pkey',                  0, 'pkey',    false,  true, false, 'a generated primary key',                                                                    '1.18',    null);
select "schema".add_column('httpd', 'httpd_site_authenticated_locations', 'httpd_site',            1, 'fkey',    false, false, false, 'the site that is being referenced',                                                          '1.18',    null);
select "schema".add_column('httpd', 'httpd_site_authenticated_locations', 'path',                  2, 'string',  false, false, false, 'the path to protect, unique per httpd_site',                                                 '1.18',    null);
select "schema".add_column('httpd', 'httpd_site_authenticated_locations', 'is_regular_expression', 3, 'boolean', false, false, false, 'regular expressions may be used, resulting in LocationMatch directives instead of Location', '1.18',    null);
select "schema".add_column('httpd', 'httpd_site_authenticated_locations', 'auth_name',             4, 'string',  false, false, false, 'the prompt given to the user during authentication',                                         '1.18',    null);
select "schema".add_column('httpd', 'httpd_site_authenticated_locations', 'auth_group_file',       5, 'path',    false, false, false, 'the full path to the file containing the group list',                                        '1.18',    null);
select "schema".add_column('httpd', 'httpd_site_authenticated_locations', 'auth_user_file',        6, 'path',    false, false, false, 'the full path to the file containing the user list',                                         '1.18',    null);
select "schema".add_column('httpd', 'httpd_site_authenticated_locations', 'require',               7, 'string',  false, false, false, 'the require directive parameter(s) for Apache',                                              '1.18',    null);
select "schema".add_column('httpd', 'httpd_site_authenticated_locations', 'handler',               8, 'string',   true, false, false, 'the optional handler for this location',                                                     '1.81.13', null);

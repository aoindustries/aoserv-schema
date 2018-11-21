create sequence ip_reputation_sets_pkey_seq cycle;
grant all            on ip_reputation_sets_pkey_seq to aoadmin;
--grant select, update on ip_reputation_sets_pkey_seq to aoserv_app;

-- TODO: Move this to ipsets function since it is more general.
--
-- ipset has maximum name length of 31, and we prefix four characters, leaving 27 characters max.
--   Prefixes:
--     IpReputationSets:
--       character 0: 'R': Reputation
--       character 1: 'G': Good,      'B': Bad
--       character 2: 'U': Uncertain, 'D': Definite, 'N': Network
--       character 3: '_': Separator, 'N': New list (for loading while old copy active)
--     IpSets:
--       character 0: 'I': IP Set
--       character 1: 'H': Hosts, 'N': Networks, 'U': Union (rules should normally use the union)
--       character 2: '_': Reserved
--       character 3: '_': Separator, 'N': New list (for loading while old copy active)
-- length("identifier")>=1 and length("identifier")<=27

-- Be safe by only allowing specific characters, even though ipset probably allows many more, we'll be shell-safe.
CREATE OR REPLACE FUNCTION net."isValidIpReputationIdentifier"(identifier text)
    RETURNS boolean
    AS $$
        BEGIN
            IF identifier IS NULL THEN
                RAISE EXCEPTION 'Identifiers may not be null';
            END IF;
            IF NOT LENGTH(identifier) BETWEEN 1 AND 27 THEN
                RAISE EXCEPTION 'Identifiers must have between 1 and 27 characters: ''%''', identifier;
            END IF;
            IF identifier !~ E'^[a-zA-Z0-9_]' THEN
                RAISE EXCEPTION 'Identifiers may only start with a-z, A-Z, 0-9, or _: ''%''', identifier;
            END IF;

            IF identifier !~ E'^.[a-zA-Z0-9_\.-]*$' THEN
                RAISE EXCEPTION 'Identifiers may only contain a-z, A-Z, 0-9, ''.'', _, or -: ''%''', identifier;
            END IF;

            -- All is OK
            RETURN true;
        END;
    $$
    LANGUAGE plpgsql
    IMMUTABLE
;

-- TODO: Track the last time new reputation data was added, and monitor for failed reputation sources.
create table ip_reputation_sets (
  pkey integer
    default nextval('ip_reputation_sets_pkey_seq')
    primary key,
  accounting text
    not null,
  identifier text
    not null
    check (
        net."isValidIpReputationIdentifier"(identifier)
    )
    unique,
  -- Allows a subaccount to use the set.  They cannot query the specific set members, however.
  allow_subaccount_use boolean
    not null,
  max_hosts integer
    not null
    check (max_hosts>0),
  max_uncertain_reputation smallint
    not null
    check (
        max_uncertain_reputation>=0
    ),
  max_definite_reputation smallint
    not null
    check (
        max_definite_reputation>=1
    ),
  check (
    -- Definite must equal to or be higher than uncertain
    max_definite_reputation>=max_uncertain_reputation
  ),
  network_prefix smallint
    not null
    check (network_prefix>=8 and network_prefix<=31),
  max_network_reputation smallint
    not null
    check (
        -- There must be enough bits in 31-bits to store counters for an network with both maximum reputation and size.
        -- Maximum network size is /8, which takes 24 bits for counters, leaving 8 bits.
        max_network_reputation>=1 and max_network_reputation<=127
    ),
  host_decay_interval integer
    not null
    check (host_decay_interval>=60),
  last_host_decay timestamp with time zone
    not null
    default now(),
  network_decay_interval integer
    not null
    check (network_decay_interval>=60),
  last_network_decay timestamp with time zone
    not null
    default now(),
  last_reputation_added timestamp with time zone -- TODO: Monitor when no new reputation for a certain amount of time
    not null
    default now()
);
grant all            on ip_reputation_sets to aoadmin;
grant select, update on ip_reputation_sets to aoserv_app;

BEGIN;
INSERT INTO ip_reputation_sets VALUES (
    1,
    'AOINDUSTRIES',
    'global',
    true,
    1000000,
    127,
    1023,
    24,
    15,
    3600,
    '2012-08-13 05:45:38.629683-05',
    3600,
    '2012-08-13 05:45:38.629683-05',
    '2012-08-13 05:45:38.629683-05',
);
-- XLITE667
INSERT INTO ip_reputation_sets VALUES (
    2,
    'XLITE667',
    'xlite_users_43594',
    false,
    1000000,
    127,
    1023,
    24,
    15,
    3600,
    '2012-08-13 05:47:37.638487-05',
    3600,
    '2012-08-13 05:47:37.638487-05',
    '2012-08-13 05:47:37.638487-05'
);
INSERT INTO usernames VALUES ('xlite_ipreputation', 'XLITE667', null);
INSERT INTO business_administrators VALUES (
    'xlite_ipreputation',
    '9Knpnj2HM4JcW+XkMXcSWBcL1l8=',
    'IP Reputation Source',
    null,
    null,
    false,
    true,
    '2012-08-17 05:44:46.372192',
    '(205)454-2556',
    null,
    null,
    null,
    'support@lnxhosting.ca',
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    false,
    null
);
-- EMORTALZ
INSERT INTO ip_reputation_sets VALUES (
    3,
    'EMORTALZ',
    'emortalz',
    false,
    1000000,
    127,
    1023,
    24,
    15,
    3600,
    '2012-10-08 19:11:22.781276-05',
    3600,
    '2012-10-08 19:11:22.781276-05',
    '2012-10-08 19:11:22.781276-05'
);
INSERT INTO usernames VALUES ('emortalz_ipreputation', 'EMORTALZ', null);
INSERT INTO business_administrators VALUES (
    'emortalz_ipreputation',
    '3P046fBA7XbUyPwQnLXavb66OkE=', -- 95ShelshBrin
    'IP Reputation Source',
    null,
    null,
    false,
    true,
    '2012-10-09 01:04:23.828338-05',
    '(205)454-2556',
    null,
    null,
    null,
    'support@lnxhosting.ca',
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    false,
    null
);
-- PROJECT_LA
INSERT INTO ip_reputation_sets VALUES (
    4,
    'PROJECT_LA',
    'pla',
    false,
    1000000,
    127,
    1023,
    24,
    15,
    3600,
    '2012-10-08 19:12:02.405987-05',
    3600,
    '2012-10-08 19:12:02.405987-05',
    '2012-10-08 19:12:02.405987-05'
);
INSERT INTO usernames VALUES ('pla_ipreputation', 'PROJECT_LA', null);
INSERT INTO business_administrators VALUES (
    'pla_ipreputation',
    'nBtCz/A4hzfMroXSRvIR3j7sI8k=', -- Clerd7Ejar4
    'IP Reputation Source',
    null,
    null,
    false,
    true,
    '2012-10-09 01:05:05.634743-05',
    '(205)454-2556',
    null,
    null,
    null,
    'support@lnxhosting.ca',
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    false,
    null
);
-- RUNEREBE
INSERT INTO ip_reputation_sets VALUES (
    5,
    'RUNEREBE',
    'runerebe',
    false,
    1000000,
    127,
    1023,
    24,
    15,
    3600,
    '2012-10-08 19:12:46.554972-05',
    3600,
    '2012-10-08 19:12:46.554972-05',
    '2012-10-08 19:12:46.554972-05'
);
INSERT INTO usernames VALUES ('runerebe_ipreputation', 'RUNEREBE', null);
INSERT INTO business_administrators VALUES (
    'runerebe_ipreputation',
    'r3Qcv7WrPdlaEy7B9xK6JwOWrpg=', -- HonarUslah83
    'IP Reputation Source',
    null,
    null,
    false,
    true,
    '2012-10-09 01:06:01.827199-05',
    '(205)454-2556',
    null,
    null,
    null,
    'support@lnxhosting.ca',
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    false,
    null
);
-- WEBLARA
INSERT INTO ip_reputation_sets VALUES (
    6,
    'WEBLARA',
    'weblara',
    false,
    1000000,
    127,
    1023,
    24,
    15,
    3600,
    '2012-10-08 19:13:17.79102-05',
    3600,
    '2012-10-08 19:13:17.79102-05',
    '2012-10-08 19:13:17.79102-05'
);
INSERT INTO usernames VALUES ('weblara_ipreputation', 'WEBLARA', null);
INSERT INTO business_administrators VALUES (
    'weblara_ipreputation',
    'vZs0tdZY1bcc+sbPqsOf7SrqBZc=', -- Dwex8Oloh7
    'IP Reputation Source',
    null,
    null,
    false,
    true,
    '2012-10-09 01:07:33.439727-05',
    '(205)454-2556',
    null,
    null,
    null,
    'support@lnxhosting.ca',
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    false,
    null
);
-- LOSTHOPERSPS
INSERT INTO ip_reputation_sets VALUES (
    7,
    'LOSTHOPERSPS',
    'losthopersps',
    false,
    1000000,
    127,
    1023,
    24,
    15,
    3600,
    '2012-10-08 22:07:20.030039-05',
    3600,
    '2012-10-08 22:07:20.030039-05',
    '2012-10-08 22:07:20.030039-05'
);
INSERT INTO usernames VALUES ('losthopersps_ipreputation', 'LOSTHOPERSPS', null);
INSERT INTO business_administrators VALUES (
    'losthopersps_ipreputation',
    'FuMGKMko4XiRnW+E5YOPTtOIq48=', -- 7Gworvyo4Ajo
    'IP Reputation Source',
    null,
    null,
    false,
    true,
    '2012-10-09 01:08:15.662196-05',
    '(205)454-2556',
    null,
    null,
    null,
    'support@lnxhosting.ca',
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    false,
    null
);
-- GTAPOLICEMODS
INSERT INTO ip_reputation_sets VALUES (
    8,
    'GTAPOLICEMODS',
    'gtapolicemods',
    false,
    1000000,
    127,
    1023,
    24,
    15,
    3600,
    '2012-10-09 00:12:35.149496-05',
    3600,
    '2012-10-09 00:12:35.149496-05',
    '2012-10-09 00:12:35.149496-05'
);
INSERT INTO usernames VALUES ('gtapolicemods_ipreputation', 'GTAPOLICEMODS', null);
INSERT INTO business_administrators VALUES (
    'gtapolicemods_ipreputation',
    'phJUN8xiPPc/nwPl+wEu2gQPVcA=', -- 2Swuss2Siveor
    'IP Reputation Source',
    null,
    null,
    false,
    true,
    '2012-10-09 01:09:33.587995-05',
    '(205)454-2556',
    null,
    null,
    null,
    'support@lnxhosting.ca',
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    false,
    null
);
-- SERVER9803
INSERT INTO ip_reputation_sets VALUES (
    9,
    'SERVER9803',
    'server9803',
    false,
    1000000,
    127,
    1023,
    24,
    15,
    3600,
    '2012-12-13 14:06:00.037015-06',
    3600,
    '2012-12-13 14:06:00.037015-06',
    '2012-12-13 14:06:00.037015-06'
);
INSERT INTO usernames VALUES ('server9803_ipreputation', 'SERVER9803', null);
INSERT INTO business_administrators VALUES (
    'server9803_ipreputation',
    '/JyltqZ7EK/26', -- Cuxio7Igrio2
    'IP Reputation Source',
    null,
    null,
    false,
    true,
    '2012-12-13 14:06:00.037015-06',
    '(205)454-2556',
    null,
    null,
    null,
    'support@lnxhosting.ca',
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    false,
    null
);
-- GATEWAYNS_COM_2
INSERT INTO ip_reputation_sets VALUES (
    10,
    'GATEWAYNS_COM_2',
    'gatewayns',
    false,
    1000000,
    127,
    1023,
    24,
    15,
    3600,
    '2013-01-17 15:47:52.959342-06',
    3600,
    '2013-01-17 15:47:52.959342-06',
    '2013-01-17 15:47:52.959342-06'
);
INSERT INTO usernames VALUES ('gatewayns_ipreputation', 'GATEWAYNS_COM_2', null);
INSERT INTO business_administrators VALUES (
    'gatewayns_ipreputation',
    'DY.7ZiblIt/ok', -- Ceg37Oskarth
    'IP Reputation Source',
    null,
    null,
    false,
    true,
    '2013-01-17 15:49:09.230783-06',
    '(205)454-2556',
    null,
    null,
    null,
    'support@lnxhosting.ca',
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    false,
    null
);
-- MCRP
INSERT INTO ip_reputation_sets VALUES (
    11,
    'MCRP',
    'mcrp',
    false,
    1000000,
    127,
    1023,
    24,
    15,
    3600,
    '2013-02-09 14:43:49.508057-06',
    3600,
    '2013-02-09 14:43:49.508057-06',
    '2013-02-09 14:43:49.508057-06'
);
INSERT INTO usernames VALUES ('mcrp_ipreputation', 'MCRP', null);
INSERT INTO business_administrators VALUES (
    'mcrp_ipreputation',
    'E5hAHvDg8bvFQK82CWSa7O32044=', -- 4ChirthScrilk3
    'IP Reputation Source',
    null,
    null,
    false,
    true,
    '2013-02-09 14:44:36.312202-06',
    '(205)454-2556',
    null,
    null,
    null,
    'support@aoindustries.com',
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    false,
    null
);
-- NAPIHOST_COM
INSERT INTO ip_reputation_sets VALUES (
    12,
    'NAPIHOST_COM',
    'napihost',
    false,
    1000000,
    127,
    1023,
    24,
    15,
    3600,
    '2013-02-10 17:14:49.552482-06',
    3600,
    '2013-02-10 17:14:49.552482-06',
    '2013-02-10 17:14:49.552482-06'
);
INSERT INTO usernames VALUES ('napihost_ipreputation', 'NAPIHOST_COM', null);
INSERT INTO business_administrators VALUES (
    'napihost_ipreputation',
    'AwT6AxtZ0GV5V9XAZskauog9gGA=', -- Splifar98Orchya
    'IP Reputation Source',
    null,
    null,
    false,
    true,
    '2013-02-10 17:18:12.568276-06',
    '(205)454-2556',
    null,
    null,
    null,
    'support@aoindustries.com',
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    false,
    null
);
-- WEB_MCRP
INSERT INTO ip_reputation_sets VALUES (
    13,
    'WEB_MCRP',
    'web_mcrp',
    false,
    1000000,
    127,
    1023,
    24,
    15,
    3600,
    '2013-02-13 17:19:01.883687-06',
    3600,
    '2013-02-13 17:19:01.883687-06',
    '2013-02-13 17:19:01.883687-06'
);
INSERT INTO usernames VALUES ('web_mcrp_ipreputation', 'WEB_MCRP', null);
INSERT INTO business_administrators VALUES (
    'web_mcrp_ipreputation',
    '25hTwYzQJrCSGnahmhxV44Xu63c=', -- 9Caphoy4Cralp
    'IP Reputation Source',
    null,
    null,
    false,
    true,
    '2013-02-13 17:20:08.032276-06',
    '(205)454-2556',
    null,
    null,
    null,
    'support@aoindustries.com',
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    false,
    null
);
-- VHF
INSERT INTO ip_reputation_sets VALUES (
    14,
    'VHF',
    'vhf',
    false,
    1000000,
    127,
    1023,
    24,
    15,
    3600,
    '2013-02-17 19:33:54.40538-06',
    3600,
    '2013-02-17 19:33:54.40538-06',
    '2013-02-17 19:33:54.40538-06'
);
INSERT INTO usernames VALUES ('vhf_ipreputation', 'VHF', null);
INSERT INTO business_administrators VALUES (
    'vhf_ipreputation',
    'osg3q3B+NNQTRRTNibeCApLzL/g=', -- 2UthreyUsnirf7
    'IP Reputation Source',
    null,
    null,
    false,
    true,
    '2013-02-17 19:35:03.22937-06',
    '(205)454-2556',
    null,
    null,
    null,
    'support@aoindustries.com',
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    false,
    null
);
-- LB3_CK101_COM
INSERT INTO ip_reputation_sets VALUES (
    15,
    'LB3_CK101_COM',
    'ck101',
    false,
    1000000,
    127,
    1023,
    24,
    15,
    3600,
    '2013-04-10 05:11:55.219715-05',
    3600,
    '2013-04-10 05:11:55.219715-05',
    '2013-04-10 05:11:55.219715-05'
);
INSERT INTO usernames VALUES ('ck101_ipreputation', 'LB3_CK101_COM', null);
INSERT INTO business_administrators VALUES (
    'ck101_ipreputation',
    '1lFAa9daKmvAmpuxqt8onMmEOkE=', -- CavyDrilt59
    'IP Reputation Source',
    null,
    null,
    false,
    true,
    '2013-04-10 05:13:30.132862-05',
    '(205)454-2556',
    null,
    null,
    null,
    'support@aoindustries.com',
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    false,
    null
);
-- CHANGEME_COM
INSERT INTO ip_reputation_sets VALUES (
    16,
    'CHANGEME_COM',
    'changeme',
    false,
    1000000,
    127,
    1023,
    24,
    15,
    3600,
    '2014-03-14 02:44:30.853719-05',
    3600,
    '2014-03-14 02:44:30.853719-05',
    '2014-03-14 02:44:30.853719-05'
);
INSERT INTO usernames VALUES ('changeme_ipreputation', 'CHANGEME_COM', null);
INSERT INTO business_administrators VALUES (
    'changeme_ipreputation',
    'aqDRzNnooeETghd5N6vt7duBZeo=', -- Shok86Unkave
    'IP Reputation Source',
    null,
    null,
    false,
    true,
    '2014-03-14 02:50:26.671396-05',
    '(205)454-2556',
    null,
    null,
    null,
    'support@aoindustries.com',
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    false,
    null
);
SELECT setval('ip_reputation_sets_pkey_seq', 17, false);
COMMIT;

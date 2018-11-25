-- Initial Data
begin;
-- XLITE667
insert into ip_reputation_limiter_sets values (
    1,
    1,
    (select pkey from "net/reputation"."ReputationSet" where identifier='xlite_users_43594'),
    1
);
insert into ip_reputation_limiter_sets values (
    2,
    1,
    (select pkey from "net/reputation"."ReputationSet" where identifier='global'),
    2
);
-- EMORTALZ
insert into ip_reputation_limiter_sets values (
    3,
    2,
    (select pkey from "net/reputation"."ReputationSet" where identifier='emortalz'),
    1
);
insert into ip_reputation_limiter_sets values (
    4,
    2,
    (select pkey from "net/reputation"."ReputationSet" where identifier='global'),
    2
);
-- PROJECT_LA
insert into ip_reputation_limiter_sets values (
    5,
    3,
    (select pkey from "net/reputation"."ReputationSet" where identifier='pla'),
    1
);
insert into ip_reputation_limiter_sets values (
    6,
    3,
    (select pkey from "net/reputation"."ReputationSet" where identifier='global'),
    2
);
insert into ip_reputation_limiter_sets values (
    23,
    8,
    (select pkey from "net/reputation"."ReputationSet" where identifier='pla'),
    1
);
insert into ip_reputation_limiter_sets values (
    24,
    8,
    (select pkey from "net/reputation"."ReputationSet" where identifier='global'),
    2
);
insert into ip_reputation_limiter_sets values (
    25,
    9,
    (select pkey from "net/reputation"."ReputationSet" where identifier='pla'),
    1
);
insert into ip_reputation_limiter_sets values (
    26,
    9,
    (select pkey from "net/reputation"."ReputationSet" where identifier='global'),
    2
);
insert into ip_reputation_limiter_sets values (
    27,
    15,
    (select pkey from "net/reputation"."ReputationSet" where identifier='pla'),
    1
);
insert into ip_reputation_limiter_sets values (
    28,
    15,
    (select pkey from "net/reputation"."ReputationSet" where identifier='global'),
    2
);
insert into ip_reputation_limiter_sets values (
    29,
    16,
    (select pkey from "net/reputation"."ReputationSet" where identifier='pla'),
    1
);
insert into ip_reputation_limiter_sets values (
    30,
    16,
    (select pkey from "net/reputation"."ReputationSet" where identifier='global'),
    2
);
-- RUNEREBE
insert into ip_reputation_limiter_sets values (
    7,
    4,
    (select pkey from "net/reputation"."ReputationSet" where identifier='runerebe'),
    1
);
insert into ip_reputation_limiter_sets values (
    8,
    4,
    (select pkey from "net/reputation"."ReputationSet" where identifier='global'),
    2
);
insert into ip_reputation_limiter_sets values (
    41,
    22,
    (select pkey from "net/reputation"."ReputationSet" where identifier='runerebe'),
    1
);
insert into ip_reputation_limiter_sets values (
    42,
    22,
    (select pkey from "net/reputation"."ReputationSet" where identifier='global'),
    2
);
insert into ip_reputation_limiter_sets values (
    43,
    23,
    (select pkey from "net/reputation"."ReputationSet" where identifier='runerebe'),
    1
);
insert into ip_reputation_limiter_sets values (
    44,
    23,
    (select pkey from "net/reputation"."ReputationSet" where identifier='global'),
    2
);
insert into ip_reputation_limiter_sets values (
    45,
    24,
    (select pkey from "net/reputation"."ReputationSet" where identifier='runerebe'),
    1
);
insert into ip_reputation_limiter_sets values (
    46,
    24,
    (select pkey from "net/reputation"."ReputationSet" where identifier='global'),
    2
);
-- WEBLARA
insert into ip_reputation_limiter_sets values (
    9,
    5,
    (select pkey from "net/reputation"."ReputationSet" where identifier='weblara'),
    1
);
insert into ip_reputation_limiter_sets values (
    10,
    5,
    (select pkey from "net/reputation"."ReputationSet" where identifier='global'),
    2
);
insert into ip_reputation_limiter_sets values (
    17,
    11,
    (select pkey from "net/reputation"."ReputationSet" where identifier='weblara'),
    1
);
insert into ip_reputation_limiter_sets values (
    18,
    11,
    (select pkey from "net/reputation"."ReputationSet" where identifier='global'),
    2
);
insert into ip_reputation_limiter_sets values (
    21,
    13,
    (select pkey from "net/reputation"."ReputationSet" where identifier='weblara'),
    1
);
insert into ip_reputation_limiter_sets values (
    22,
    13,
    (select pkey from "net/reputation"."ReputationSet" where identifier='global'),
    2
);
-- LOSTHOPERSPS
insert into ip_reputation_limiter_sets values (
    11,
    6,
    (select pkey from "net/reputation"."ReputationSet" where identifier='losthopersps'),
    1
);
insert into ip_reputation_limiter_sets values (
    12,
    6,
    (select pkey from "net/reputation"."ReputationSet" where identifier='global'),
    2
);
-- GTAPOLICEMODS
insert into ip_reputation_limiter_sets values (
    13,
    7,
    (select pkey from "net/reputation"."ReputationSet" where identifier='gtapolicemods'),
    1
);
insert into ip_reputation_limiter_sets values (
    14,
    7,
    (select pkey from "net/reputation"."ReputationSet" where identifier='global'),
    2
);
-- SERVER9803
insert into ip_reputation_limiter_sets values (
    15,
    10,
    (select pkey from "net/reputation"."ReputationSet" where identifier='server9803'),
    1
);
insert into ip_reputation_limiter_sets values (
    16,
    10,
    (select pkey from "net/reputation"."ReputationSet" where identifier='global'),
    2
);
insert into ip_reputation_limiter_sets values (
    19,
    12,
    (select pkey from "net/reputation"."ReputationSet" where identifier='server9803'),
    1
);
insert into ip_reputation_limiter_sets values (
    20,
    12,
    (select pkey from "net/reputation"."ReputationSet" where identifier='global'),
    2
);
insert into ip_reputation_limiter_sets values (
    21,
    14,
    (select pkey from "net/reputation"."ReputationSet" where identifier='server9803'),
    1
);
insert into ip_reputation_limiter_sets values (
    22,
    14,
    (select pkey from "net/reputation"."ReputationSet" where identifier='global'),
    2
);
-- GATEWAYNS_COM_2
insert into ip_reputation_limiter_sets values (
    31,
    17,
    (select pkey from "net/reputation"."ReputationSet" where identifier='gatewayns'),
    1
);
insert into ip_reputation_limiter_sets values (
    32,
    17,
    (select pkey from "net/reputation"."ReputationSet" where identifier='global'),
    2
);
insert into ip_reputation_limiter_sets values (
    33,
    18,
    (select pkey from "net/reputation"."ReputationSet" where identifier='gatewayns'),
    1
);
insert into ip_reputation_limiter_sets values (
    34,
    18,
    (select pkey from "net/reputation"."ReputationSet" where identifier='global'),
    2
);
insert into ip_reputation_limiter_sets values (
    35,
    19,
    (select pkey from "net/reputation"."ReputationSet" where identifier='gatewayns'),
    1
);
insert into ip_reputation_limiter_sets values (
    36,
    19,
    (select pkey from "net/reputation"."ReputationSet" where identifier='global'),
    2
);
insert into ip_reputation_limiter_sets values (
    37,
    20,
    (select pkey from "net/reputation"."ReputationSet" where identifier='gatewayns'),
    1
);
insert into ip_reputation_limiter_sets values (
    38,
    20,
    (select pkey from "net/reputation"."ReputationSet" where identifier='global'),
    2
);
insert into ip_reputation_limiter_sets values (
    39,
    21,
    (select pkey from "net/reputation"."ReputationSet" where identifier='gatewayns'),
    1
);
insert into ip_reputation_limiter_sets values (
    40,
    21,
    (select pkey from "net/reputation"."ReputationSet" where identifier='global'),
    2
);
-- MCRP
insert into ip_reputation_limiter_sets values (
    47,
    25,
    (select pkey from "net/reputation"."ReputationSet" where identifier='mcrp'),
    1
);
insert into ip_reputation_limiter_sets values (
    48,
    25,
    (select pkey from "net/reputation"."ReputationSet" where identifier='global'),
    2
);
insert into ip_reputation_limiter_sets values (
    49,
    26,
    (select pkey from "net/reputation"."ReputationSet" where identifier='mcrp'),
    1
);
insert into ip_reputation_limiter_sets values (
    50,
    26,
    (select pkey from "net/reputation"."ReputationSet" where identifier='global'),
    2
);
insert into ip_reputation_limiter_sets values (
    51,
    27,
    (select pkey from "net/reputation"."ReputationSet" where identifier='mcrp'),
    1
);
insert into ip_reputation_limiter_sets values (
    52,
    27,
    (select pkey from "net/reputation"."ReputationSet" where identifier='global'),
    2
);
insert into ip_reputation_limiter_sets values (
    53,
    28,
    (select pkey from "net/reputation"."ReputationSet" where identifier='mcrp'),
    1
);
insert into ip_reputation_limiter_sets values (
    54,
    28,
    (select pkey from "net/reputation"."ReputationSet" where identifier='global'),
    2
);
-- NAPIHOST_COM
insert into ip_reputation_limiter_sets values (
    55,
    29,
    (select pkey from "net/reputation"."ReputationSet" where identifier='napihost'),
    1
);
insert into ip_reputation_limiter_sets values (
    56,
    29,
    (select pkey from "net/reputation"."ReputationSet" where identifier='global'),
    2
);
insert into ip_reputation_limiter_sets values (
    57,
    30,
    (select pkey from "net/reputation"."ReputationSet" where identifier='napihost'),
    1
);
insert into ip_reputation_limiter_sets values (
    58,
    30,
    (select pkey from "net/reputation"."ReputationSet" where identifier='global'),
    2
);
-- WEB_MCRP
insert into ip_reputation_limiter_sets values (
    59,
    31,
    (select pkey from "net/reputation"."ReputationSet" where identifier='web_mcrp'),
    1
);
insert into ip_reputation_limiter_sets values (
    60,
    31,
    (select pkey from "net/reputation"."ReputationSet" where identifier='global'),
    2
);
insert into ip_reputation_limiter_sets values (
    61,
    32,
    (select pkey from "net/reputation"."ReputationSet" where identifier='web_mcrp'),
    1
);
insert into ip_reputation_limiter_sets values (
    62,
    32,
    (select pkey from "net/reputation"."ReputationSet" where identifier='global'),
    2
);
insert into ip_reputation_limiter_sets values (
    63,
    33,
    (select pkey from "net/reputation"."ReputationSet" where identifier='web_mcrp'),
    1
);
insert into ip_reputation_limiter_sets values (
    64,
    33,
    (select pkey from "net/reputation"."ReputationSet" where identifier='global'),
    2
);
insert into ip_reputation_limiter_sets values (
    65,
    34,
    (select pkey from "net/reputation"."ReputationSet" where identifier='web_mcrp'),
    1
);
insert into ip_reputation_limiter_sets values (
    66,
    34,
    (select pkey from "net/reputation"."ReputationSet" where identifier='global'),
    2
);
insert into ip_reputation_limiter_sets values (
    67,
    35,
    (select pkey from "net/reputation"."ReputationSet" where identifier='web_mcrp'),
    1
);
insert into ip_reputation_limiter_sets values (
    68,
    35,
    (select pkey from "net/reputation"."ReputationSet" where identifier='global'),
    2
);
insert into ip_reputation_limiter_sets values (
    69,
    36,
    (select pkey from "net/reputation"."ReputationSet" where identifier='web_mcrp'),
    1
);
insert into ip_reputation_limiter_sets values (
    70,
    36,
    (select pkey from "net/reputation"."ReputationSet" where identifier='global'),
    2
);
-- VHF
insert into ip_reputation_limiter_sets values (
    71,
    37,
    (select pkey from "net/reputation"."ReputationSet" where identifier='vhf'),
    1
);
insert into ip_reputation_limiter_sets values (
    72,
    37,
    (select pkey from "net/reputation"."ReputationSet" where identifier='global'),
    2
);
insert into ip_reputation_limiter_sets values (
    73,
    38,
    (select pkey from "net/reputation"."ReputationSet" where identifier='vhf'),
    1
);
insert into ip_reputation_limiter_sets values (
    74,
    38,
    (select pkey from "net/reputation"."ReputationSet" where identifier='global'),
    2
);
insert into ip_reputation_limiter_sets values (
    75,
    39,
    (select pkey from "net/reputation"."ReputationSet" where identifier='vhf'),
    1
);
insert into ip_reputation_limiter_sets values (
    76,
    39,
    (select pkey from "net/reputation"."ReputationSet" where identifier='global'),
    2
);
insert into ip_reputation_limiter_sets values (
    77,
    40,
    (select pkey from "net/reputation"."ReputationSet" where identifier='vhf'),
    1
);
insert into ip_reputation_limiter_sets values (
    78,
    40,
    (select pkey from "net/reputation"."ReputationSet" where identifier='global'),
    2
);
insert into ip_reputation_limiter_sets values (
    79,
    41,
    (select pkey from "net/reputation"."ReputationSet" where identifier='vhf'),
    1
);
insert into ip_reputation_limiter_sets values (
    80,
    41,
    (select pkey from "net/reputation"."ReputationSet" where identifier='global'),
    2
);
insert into ip_reputation_limiter_sets values (
    81,
    42,
    (select pkey from "net/reputation"."ReputationSet" where identifier='vhf'),
    1
);
insert into ip_reputation_limiter_sets values (
    82,
    42,
    (select pkey from "net/reputation"."ReputationSet" where identifier='global'),
    2
);
-- LB3_CK101_COM
insert into ip_reputation_limiter_sets values (
    83,
    43,
    (select pkey from "net/reputation"."ReputationSet" where identifier='ck101'),
    1
);
insert into ip_reputation_limiter_sets values (
    84,
    43,
    (select pkey from "net/reputation"."ReputationSet" where identifier='global'),
    2
);
insert into ip_reputation_limiter_sets values (
    85,
    44,
    (select pkey from "net/reputation"."ReputationSet" where identifier='ck101'),
    1
);
insert into ip_reputation_limiter_sets values (
    86,
    44,
    (select pkey from "net/reputation"."ReputationSet" where identifier='global'),
    2
);
insert into ip_reputation_limiter_sets values (
    87,
    45,
    (select pkey from "net/reputation"."ReputationSet" where identifier='ck101'),
    1
);
insert into ip_reputation_limiter_sets values (
    88,
    45,
    (select pkey from "net/reputation"."ReputationSet" where identifier='global'),
    2
);
-- CHANGEME_COM
insert into ip_reputation_limiter_sets values (
    89,
    46,
    (select pkey from "net/reputation"."ReputationSet" where identifier='changeme'),
    1
);
insert into ip_reputation_limiter_sets values (
    90,
    46,
    (select pkey from "net/reputation"."ReputationSet" where identifier='global'),
    2
);
insert into ip_reputation_limiter_sets values (
    91,
    47,
    (select pkey from "net/reputation"."ReputationSet" where identifier='changeme'),
    1
);
insert into ip_reputation_limiter_sets values (
    92,
    47,
    (select pkey from "net/reputation"."ReputationSet" where identifier='global'),
    2
);
insert into ip_reputation_limiter_sets values (
    93,
    48,
    (select pkey from "net/reputation"."ReputationSet" where identifier='changeme'),
    1
);
insert into ip_reputation_limiter_sets values (
    94,
    48,
    (select pkey from "net/reputation"."ReputationSet" where identifier='global'),
    2
);
select setval('"net/reputation".ip_reputation_limiter_sets_pkey_seq', 95, false);
commit;

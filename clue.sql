--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1
-- Dumped by pg_dump version 14.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'WIN1252';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: elec; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.elec (
    year integer,
    "AK" double precision,
    "AL" double precision,
    "AR" double precision,
    "AZ" double precision,
    "CA" double precision,
    "CO" double precision,
    "CT" double precision,
    "DC" double precision,
    "DE" double precision,
    "FL" double precision,
    "GA" double precision,
    "HI" double precision,
    "IA" double precision,
    "ID" double precision,
    "IL" double precision,
    "IN" double precision,
    "KS" double precision,
    "KY" double precision,
    "LA" double precision,
    "MA" double precision,
    "MD" double precision,
    "ME" double precision,
    "MI" double precision,
    "MN" double precision,
    "MO" double precision,
    "MS" double precision,
    "MT" double precision,
    "NC" double precision,
    "ND" double precision,
    "NE" double precision,
    "NH" double precision,
    "NJ" double precision,
    "NM" double precision,
    "NV" double precision,
    "NY" double precision,
    "OH" double precision,
    "OK" double precision,
    "OR" double precision,
    "PA" double precision,
    "RI" double precision,
    "SC" double precision,
    "SD" double precision,
    "TN" double precision,
    "TX" double precision,
    "UT" double precision,
    "VA" double precision,
    "VT" double precision,
    "WA" double precision,
    "WI" double precision,
    "WV" double precision,
    "WY" double precision
);


ALTER TABLE public.elec OWNER TO postgres;

--
-- Name: gas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.gas (
    year integer,
    "AK" double precision,
    "AL" double precision,
    "AR" double precision,
    "AZ" double precision,
    "CA" double precision,
    "CO" double precision,
    "CT" double precision,
    "DC" double precision,
    "DE" double precision,
    "FL" double precision,
    "GA" double precision,
    "HI" double precision,
    "IA" double precision,
    "ID" double precision,
    "IL" double precision,
    "IN" double precision,
    "KS" double precision,
    "KY" double precision,
    "LA" double precision,
    "MA" double precision,
    "MD" double precision,
    "ME" double precision,
    "MI" double precision,
    "MN" double precision,
    "MO" double precision,
    "MS" double precision,
    "MT" double precision,
    "NC" double precision,
    "ND" double precision,
    "NE" double precision,
    "NH" double precision,
    "NJ" double precision,
    "NM" double precision,
    "NV" double precision,
    "NY" double precision,
    "OH" double precision,
    "OK" double precision,
    "OR" double precision,
    "PA" double precision,
    "RI" double precision,
    "SC" double precision,
    "SD" double precision,
    "TN" double precision,
    "TX" double precision,
    "UT" double precision,
    "VA" double precision,
    "VT" double precision,
    "WA" double precision,
    "WI" double precision,
    "WV" double precision,
    "WY" double precision
);


ALTER TABLE public.gas OWNER TO postgres;

--
-- Name: natl; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.natl (
    year integer,
    sewer double precision,
    wages double precision,
    benefits double precision,
    goods double precision,
    insurance double precision,
    proptax double precision
);


ALTER TABLE public.natl OWNER TO postgres;

--
-- Name: ocaf; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ocaf (
    year numeric NOT NULL,
    state text NOT NULL,
    ocaf numeric,
    sewer numeric,
    wages numeric,
    benefits numeric,
    goods numeric,
    insurance numeric,
    proptax numeric,
    elec numeric,
    gas numeric,
    oil numeric
);


ALTER TABLE public.ocaf OWNER TO postgres;

--
-- Name: oil; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.oil (
    year integer,
    "AK" double precision,
    "AL" double precision,
    "AR" double precision,
    "AZ" double precision,
    "CA" double precision,
    "CO" double precision,
    "CT" double precision,
    "DC" double precision,
    "DE" double precision,
    "FL" double precision,
    "GA" double precision,
    "HI" double precision,
    "IA" double precision,
    "ID" double precision,
    "IL" double precision,
    "IN" double precision,
    "KS" double precision,
    "KY" double precision,
    "LA" double precision,
    "MA" double precision,
    "MD" double precision,
    "ME" double precision,
    "MI" double precision,
    "MN" double precision,
    "MO" double precision,
    "MS" double precision,
    "MT" double precision,
    "NC" double precision,
    "ND" double precision,
    "NE" double precision,
    "NH" double precision,
    "NJ" double precision,
    "NM" double precision,
    "NV" double precision,
    "NY" double precision,
    "OH" double precision,
    "OK" double precision,
    "OR" double precision,
    "PA" double precision,
    "RI" double precision,
    "SC" double precision,
    "SD" double precision,
    "TN" double precision,
    "TX" double precision,
    "UT" double precision,
    "VA" double precision,
    "VT" double precision,
    "WA" double precision,
    "WI" double precision,
    "WV" double precision,
    "WY" double precision
);


ALTER TABLE public.oil OWNER TO postgres;

--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add question	7	add_question
26	Can change question	7	change_question
27	Can delete question	7	delete_question
28	Can view question	7	view_question
29	Can add choice	8	add_choice
30	Can change choice	8	change_choice
31	Can delete choice	8	delete_choice
32	Can view choice	8	view_choice
33	Can add account	9	add_account
34	Can change account	9	change_account
35	Can delete account	9	delete_account
36	Can view account	9	view_account
37	Can add connect	10	add_connect
38	Can change connect	10	change_connect
39	Can delete connect	10	delete_connect
40	Can view connect	10	view_connect
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$320000$BsUG6aAYCNOJoo00bsnxqR$hjoxC5YrxxoVWa63sYKBD8t9ek/IPxbVfMSn1Mp/73o=	2022-04-11 20:01:19.400484-05	t	admin			admin@rhizomatic.app	t	t	2022-03-08 03:20:58.119942-06
2	pbkdf2_sha256$320000$EMkKXOnVSwesdhOKAVRFfa$97gQ6elUMV3nljvG5gvZ2IiJ416Fp8M5b3ZdG30f2DY=	\N	f	client-name	Jane	Doe	janedoe@hotmail.com	t	t	2022-04-11 20:22:07-05
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2022-03-08 03:36:49.598503-06	5	Who stole my beer?	1	[{"added": {}}]	7	1
2	2022-03-11 06:45:09.722111-06	15	Julius Caesar	1	[{"added": {}}]	8	1
3	2022-03-11 06:52:51.511491-06	6	Where is the ambassador?	1	[{"added": {}}, {"added": {"name": "choice", "object": "Tatooine"}}, {"added": {"name": "choice", "object": "Degobah"}}, {"added": {"name": "choice", "object": "Corellia"}}]	7	1
4	2022-03-11 06:54:26.073992-06	6	Where is the ambassador?	2	[{"added": {"name": "choice", "object": "Kaukauna"}}]	7	1
5	2022-04-11 20:22:07.715123-05	2	client-name	1	[{"added": {}}]	4	1
6	2022-04-11 20:25:00.377658-05	2	client-name	2	[{"changed": {"fields": ["First name", "Last name", "Email address", "Staff status"]}}]	4	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	polls	question
8	polls	choice
9	rhizome	account
10	rhizome	connect
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2022-03-08 01:05:42.315484-06
2	auth	0001_initial	2022-03-08 01:05:42.462481-06
3	admin	0001_initial	2022-03-08 01:05:42.509484-06
4	admin	0002_logentry_remove_auto_add	2022-03-08 01:05:42.521479-06
5	admin	0003_logentry_add_action_flag_choices	2022-03-08 01:05:42.534477-06
6	contenttypes	0002_remove_content_type_name	2022-03-08 01:05:42.560477-06
7	auth	0002_alter_permission_name_max_length	2022-03-08 01:05:42.574485-06
8	auth	0003_alter_user_email_max_length	2022-03-08 01:05:42.588478-06
9	auth	0004_alter_user_username_opts	2022-03-08 01:05:42.598477-06
10	auth	0005_alter_user_last_login_null	2022-03-08 01:05:42.609478-06
11	auth	0006_require_contenttypes_0002	2022-03-08 01:05:42.613478-06
12	auth	0007_alter_validators_add_error_messages	2022-03-08 01:05:42.623477-06
13	auth	0008_alter_user_username_max_length	2022-03-08 01:05:42.647482-06
14	auth	0009_alter_user_last_name_max_length	2022-03-08 01:05:42.677482-06
15	auth	0010_alter_group_name_max_length	2022-03-08 01:05:42.694481-06
16	auth	0011_update_proxy_permissions	2022-03-08 01:05:42.707482-06
17	auth	0012_alter_user_first_name_max_length	2022-03-08 01:05:42.719477-06
18	sessions	0001_initial	2022-03-08 01:05:42.747481-06
19	polls	0001_initial	2022-03-08 02:31:48.740501-06
20	rhizome	0001_initial	2022-04-11 21:17:41.478912-05
21	rhizome	0002_remove_account_id_alter_account_platform	2022-04-11 21:17:41.527944-05
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
hn55f6y658zn5jnazvpdx4w58te3650e	.eJxVjDsOwjAQBe_iGln-JV5T0nMGa9fr4ACypTipEHeHSCmgfTPzXiLitpa49bzEmcVZaHH63QjTI9cd8B3rrcnU6rrMJHdFHrTLa-P8vBzu30HBXr51gpHAgLchAJkp6ewALIMzQbO2wStKnrR3aWSVeWBCZ7TCwU7WB3Ti_QHJBDdO:1nRWBt:QpcVdbAEPOWonG8mD9SeRWZ5u-FP2CT7W227alQSTrk	2022-03-22 04:31:37.817883-05
cqjjz6ip4zf3b5x0w45w40lnu7mqa0dr	.eJxVjDsOwjAQBe_iGln-JV5T0nMGa9fr4ACypTipEHeHSCmgfTPzXiLitpa49bzEmcVZaHH63QjTI9cd8B3rrcnU6rrMJHdFHrTLa-P8vBzu30HBXr51gpHAgLchAJkp6ewALIMzQbO2wStKnrR3aWSVeWBCZ7TCwU7WB3Ti_QHJBDdO:1nSeTC:i7hac0tBQxmVafcBQsH43QlcCcLTsfghqHVyKO0xO-E	2022-03-25 07:34:10.387754-05
1l6ena4xk9iffom2dcx7g6mo39b5sj5u	.eJxVjDsOwjAQBe_iGln-JV5T0nMGa9fr4ACypTipEHeHSCmgfTPzXiLitpa49bzEmcVZaHH63QjTI9cd8B3rrcnU6rrMJHdFHrTLa-P8vBzu30HBXr51gpHAgLchAJkp6ewALIMzQbO2wStKnrR3aWSVeWBCZ7TCwU7WB3Ti_QHJBDdO:1nTL2E:tG9g-xH9OQSl8IwOqxoDSN9-8ttdmABVNpbiTFG-cas	2022-03-27 05:01:10.818286-05
0yn8wz9npi68u75ojwtevr14p695t5i4	.eJxVjDsOwjAQBe_iGln-JV5T0nMGa9fr4ACypTipEHeHSCmgfTPzXiLitpa49bzEmcVZaHH63QjTI9cd8B3rrcnU6rrMJHdFHrTLa-P8vBzu30HBXr51gpHAgLchAJkp6ewALIMzQbO2wStKnrR3aWSVeWBCZ7TCwU7WB3Ti_QHJBDdO:1nUN0v:RjOZ3RHtj42iWWw5xWfk7Byzooc5bQK0DXRbSsiLtKk	2022-03-30 01:20:05.850644-05
6fpp69o8m3396tw6z015u2sfcdqq8zn9	.eJxVjDsOwjAQBe_iGln-JV5T0nMGa9fr4ACypTipEHeHSCmgfTPzXiLitpa49bzEmcVZaHH63QjTI9cd8B3rrcnU6rrMJHdFHrTLa-P8vBzu30HBXr51gpHAgLchAJkp6ewALIMzQbO2wStKnrR3aWSVeWBCZ7TCwU7WB3Ti_QHJBDdO:1nY9Fo:se7oaGP_h1PUqzwiy3Vc0BxDmlr5Jwf-EmJTg-Yc3S8	2022-04-09 11:27:04.787657-05
vo5gtvp8fh3jxzixjqqdomcurj5u2bqk	.eJxVjDsOwjAQBe_iGln-JV5T0nMGa9fr4ACypTipEHeHSCmgfTPzXiLitpa49bzEmcVZaHH63QjTI9cd8B3rrcnU6rrMJHdFHrTLa-P8vBzu30HBXr51gpHAgLchAJkp6ewALIMzQbO2wStKnrR3aWSVeWBCZ7TCwU7WB3Ti_QHJBDdO:1nYD65:ZISsJ8LJEcsLlyn1HutK1HZ5FOxxxCM7rtaL93IU0x4	2022-04-09 15:33:17.215783-05
iscmqm8pv4qd2734ogn1qls7dgl30p7k	.eJxVjMsOwiAQRf-FtSEzYHm4dN9vIAMDUjU0Ke3K-O_apAvd3nPOfYlA21rD1vMSJhYXgeL0u0VKj9x2wHdqt1mmua3LFOWuyIN2Oc6cn9fD_Tuo1Ou3dpRsNAYLZuWTBe3O0fnsLBQAMzgNRZXChIzKm8yoozYKFZsBwEUS7w_Qsjc5:1nYYJ4:0s1zZgVgilCMJsROynMqIcMArNuFdnLd7kfgvcqlG8s	2022-04-10 14:12:06.201666-05
q923dgs0z9afgssonoigmbaxab3plri0	.eJxVjMsOwiAQRf-FtSE8CgWX7v0GMjCDVA0kpV0Z_11JutDtPeeeFwuwbyXsndawIDszyU6_W4T0oDoA3qHeGk-tbusS-VD4QTu_NqTn5XD_AgV6GVmcrMlS-CyIcJICso7ZeRQzCdDgpXZKEcpZkTKWjLNOk_2-XDJOefb-AN2WN08:1ne4uF:FnFzWsPF76qfG-JMDjg_KKk6n81ed3WY01Ymu7JJJT0	2022-04-25 20:01:19.403466-05
\.


--
-- Data for Name: elec; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.elec (year, "AK", "AL", "AR", "AZ", "CA", "CO", "CT", "DC", "DE", "FL", "GA", "HI", "IA", "ID", "IL", "IN", "KS", "KY", "LA", "MA", "MD", "ME", "MI", "MN", "MO", "MS", "MT", "NC", "ND", "NE", "NH", "NJ", "NM", "NV", "NY", "OH", "OK", "OR", "PA", "RI", "SC", "SD", "TN", "TX", "UT", "VA", "VT", "WA", "WI", "WV", "WY") FROM stdin;
2022	-0.024	0.029	0.182	0.021	0.063	0.048	-0.05	-0.005	-0.029	0.037	0.012	-0.033	-0.004	0.021	-0.049	0.012	-0.02	-0.018	0.067	-0.02	-0.063	-0.033	0.081	0.016	-0.039	-0.006	-0.023	-0.024	0.039	-0.02	-0.035	0.047	0.044	-0.023	0.057	-0.011	0.825	0.013	-0.044	0.01	-0.006	0.078	-0.039	0.038	0.003	-0.052	-0.052	0.023	0.004	0.007	0.018
2021	0.013	0.015	0.06	-0.039	0.089	-0.015	0.047	-0.034	0.016	-0.024	0.009	-0.008	0.018	-0.002	0.033	-0.002	0.072	0.018	-0.012	0.035	0.012	-0.029	0.049	-0.006	0.026	0.016	0.039	-0.003	0.007	0.012	-0.012	-0.025	-0.014	0.015	0.003	-0.021	0.012	0.009	0.049	0.006	0.002	0.031	-0.007	0.006	0.003	0.027	0.159	0.01	0.026	0.112	-0.007
2020	0.028	0.03	-0.028	-0.004	-0.008	0.024	0.07	0.019	-0.004	-0.008	0.02	0.044	0.023	-0.05	-0.009	0.057	-0.093	0.023	0.021	-0.014	0.006	0.063	-0.023	0.015	-0.02	0.033	0.005	0.057	0.005	0.015	0.027	0.021	0.026	-0.053	-0.027	-0.008	-0.011	0.007	-0.043	0.063	-0.017	-0.02	0.061	0.073	-0.03	0.038	-0.054	-0.021	-0.005	-0.099	-0.021
2019	0.047	-0.049	0.009	0.066	0.024	-0.005	0.055	0.015	-0.068	0.023	-0.037	0.087	0.015	0.086	0.055	-0.023	0.018	-0.042	0.044	0.123	-0.079	0.014	0.004	-0.006	-0.023	-0.01	0.002	-0.005	-0.011	-0.02	0.049	-0.006	-0.026	0.063	0.033	0.014	-0.068	0.026	-0.02	0.137	0.001	0.014	-0.032	-0.017	-0.034	0.035	0.024	0.038	-0.008	-0.033	0.014
2018	0.052	0.105	0.05	0.029	0.052	0.043	-0.035	0.023	-0.003	0.03	0.069	0.073	0.032	-0.02	-0.003	0.089	0.008	0.067	-0.002	0.023	0.018	0.043	0.044	0.027	0.05	0.041	0.024	0.012	0.024	0.013	0.026	0.016	0.091	-0.003	0.044	-0.012	0.108	0.01	0.009	0.04	0.059	0.017	0.073	-0.001	0.012	0.001	0.029	0.007	0.016	0.069	0.014
2017	0.012	0.016	0.018	-0.012	0.026	-0.035	-0.058	-0.004	0.026	-0.057	-0.012	-0.158	0.013	0.005	0.03	-0.013	0.064	0.027	-0.024	-0.079	0.076	-0.058	0.072	0.057	-0.003	-0.071	-0.024	-0.01	0.056	0.019	-0.058	0.001	-0.078	-0.097	-0.146	0.001	-0.008	-0.005	0.077	-0.017	-0.006	0.014	-0.011	-0.053	0.021	-0.019	0.016	0.068	0.004	0.174	0.014
2016	0.08	0.011	0.063	0.023	0.056	0.01	0.134	-0.024	0.028	0.002	-0.026	-0.137	0.029	0.044	0.097	0.044	0.043	0.012	0.025	0.243	-0.022	0.14	-0.017	0.007	0.056	0.059	0.074	-0.001	0.055	0.027	0.144	0.004	0.089	0.022	-0.053	0.097	0.027	0.02	-0.016	0.093	0.011	0.079	0.019	0.028	0.037	0.088	-0.028	0.01	0.036	0.005	0.057
2015	0.022	0.005	-0.064	0.05	0.037	0.032	0.117	0.053	-0.029	0.048	0.04	-0.008	-0.012	0.055	0	0.029	0.009	0.017	-0.034	0.169	0.065	-0.004	0.008	0.017	-0.024	0.036	-0.002	0.023	0	0.002	0.041	0.008	0.024	0.117	0.113	0.001	0.033	0.051	0.059	0.135	0.021	0.012	-0.005	0.028	0.03	-0.003	0.036	0.006	0	-0.036	0.027
2014	-0.026	-0.017	0.046	0.031	0.055	0.049	-0.014	0.002	-0.028	-0.019	0.01	0.021	0.03	0.062	-0.062	0.014	0.05	0.043	0.091	-0.04	-0.001	-0.035	0.019	0.032	0.051	-0.01	0.023	-0.003	0.013	0.028	0.001	-0.053	0.029	-0.043	0.111	0.005	-0.055	0.005	-0.041	0.026	0.026	0.015	0.008	0.003	0.041	-0.055	-0.021	0.022	0.021	-0.018	0.042
2013	0.077	0.061	0.087	0.024	0.008	0.025	-0.033	-0.121	0.012	0.012	0.067	0.195	0.038	0.042	0.057	0.085	0.091	0.042	0.025	0.057	-0.055	-0.045	0.085	0.042	0.089	0.055	0.042	0.078	0.101	0.103	-0.01	0.002	0.091	0.016	-0.04	0.082	0.112	0.035	0.026	-0.088	0.096	0.104	0.033	0.021	0.127	0.106	0.06	0.035	0.025	0.09	0.091
2012	0.037	0.061	-0.066	0.021	-0.006	0	-0.07	0.053	0.022	0.064	0.087	0.133	0.047	0.005	0.059	0.086	0.07	0.131	-0.04	-0.026	-0.059	0.004	0.075	0.051	0.123	0.096	0.073	0.005	0.034	0.053	0.038	0.021	0.013	-0.06	-0.011	-0.004	0.067	0.079	0.057	-0.004	0.076	0.052	0.165	-0.048	0.008	-0.032	0.052	0.043	0.026	0.067	0.028
2011	-0.072	-0.064	-0.044	0.005	0.028	0.121	-0.041	0.021	-0.033	-0.156	-0.045	0.153	0.022	0.078	-0.074	-0.049	0.037	-0.058	-0.017	-0.169	-0.03	-0.025	0.081	0.038	-0.02	-0.105	0.002	0.007	0.04	0.033	-0.041	0.003	0.003	0.008	0.056	0.075	-0.037	0.022	0.09	-0.033	-0.042	0.033	-0.15	-0.112	0.024	-0.002	0.039	0.023	0.041	0.097	0.024
\.


--
-- Data for Name: gas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.gas (year, "AK", "AL", "AR", "AZ", "CA", "CO", "CT", "DC", "DE", "FL", "GA", "HI", "IA", "ID", "IL", "IN", "KS", "KY", "LA", "MA", "MD", "ME", "MI", "MN", "MO", "MS", "MT", "NC", "ND", "NE", "NH", "NJ", "NM", "NV", "NY", "OH", "OK", "OR", "PA", "RI", "SC", "SD", "TN", "TX", "UT", "VA", "VT", "WA", "WI", "WV", "WY") FROM stdin;
2022	0.0243	0.0027	-0.0267	0.1113	0.0919	-0.0708	0.0048	0.0702	-0.0695	-0.0129	0.0383	-0.1448	0.0354	-0.0124	-0.0104	-0.0501	0.0141	0.0267	0.0574	-0.0729	0.0414	-0.0007	0.021	-0.0025	0.0879	-0.0019	0.0183	0.0177	0.0905	-0.0692	0.0195	0.1	0.0151	0.0272	-0.0257	-0.0052	-0.0309	0.0943	-0.0188	-0.0195	0.0321	-0.0247	-0.0518	0.0971	0.0422	0.0053	0.0079	0.1171	0.0212	-0.0208	0.0968
2021	0.0269	0.0109	-0.1231	-0.0612	0.0528	0.0039	0.0496	-0.0397	0.0874	0.015	0.0644	0.0152	-0.0858	-0.0135	-0.0046	-0.0839	-0.0923	0.0275	-0.0137	-0.0165	0.0645	-0.0485	-0.0134	-0.0725	0.0134	0.0039	-0.0314	-0.0749	0.0281	0.0261	0.0704	-0.1888	0.0194	0.0636	-0.0278	0.0527	0.0162	-0.0638	0.04	-0.0185	-0.029	-0.0483	0	-0.0709	-0.135	-0.0374	0.0777	-0.0447	0.0061	-0.0448	-0.0628
2020	-0.0558	0.0447	-0.0272	-0.0925	-0.0152	-0.0421	-0.0022	-0.0187	-0.0599	0.009	-0.1742	0.1183	-0.0706	-0.077	-0.0246	-0.0387	-0.0703	-0.0912	-0.1066	0.117	-0.091	0.1614	-0.0227	0.026	-0.1175	-0.1197	-0.0394	-0.0522	0.0476	0.055	-0.0055	-0.1443	0.0274	-0.0888	-0.0576	-0.0638	-0.1886	0.0057	-0.0132	0.1163	-0.0698	-0.0636	-0.0824	-0.1609	-0.0011	-0.0333	-0.0511	-0.032	0.0435	-0.0429	-0.0455
2019	0.1465	0.0724	0.0327	0.1611	0.0549	0.0993	0.0806	0.0808	0.1495	0.0434	0.1628	0.0658	-0.0602	0.1206	0.1288	0.1439	0.1117	0.146	0.1489	0.0572	0.1249	0.069	0.0207	0.0574	0.1759	0.0768	0.0481	0.1248	-0.1378	0.0211	0.1012	0.1453	0.1107	0.1751	0.0596	0.0764	0.0785	-0.0925	0.1198	0.0159	0.1466	0.0763	0.1194	0.1603	-0.0077	-0.0021	0.1342	-0.0148	0.0184	0.0409	0.0588
2018	-0.005	0.0176	-0.1033	-0.0354	0.0395	-0.1112	0.0328	-0.0586	-0.0902	0.0481	-0.0041	-0.0898	-0.0524	-0.0113	-0.1121	-0.0447	-0.0315	-0.0672	0.0539	-0.1769	-0.0416	-0.043	-0.0681	-0.0887	0.0371	-0.0569	-0.1145	-0.0959	-0.1345	-0.1193	-0.0024	-0.0672	-0.0321	-0.0225	-0.1153	-0.0505	0.0322	-0.0657	-0.0779	-0.0309	0	-0.0843	-0.0426	0.1024	-0.0617	-0.0282	-0.0653	-0.0872	-0.1164	-0.055	-0.0879
2017	-0.0335	0.0582	-0.0093	0.1145	-0.0104	-0.0697	-0.1154	-0.0447	-0.082	0.0168	0.0118	-0.1564	0.0059	-0.1689	-0.0111	-0.1507	-0.0397	0.0235	-0.011	-0.0065	-0.0147	-0.1021	-0.0557	-0.1112	0.02	0.0711	-0.0988	0.0103	0.0332	-0.0055	-0.1414	-0.1481	-0.1069	-0.0261	-0.0801	-0.064	0.0139	0.0657	-0.062	-0.0594	-0.0024	-0.1046	-0.0503	-0.0466	0.0253	-0.0082	-0.0356	0.1152	0.0264	-0.1882	-0.0011
2016	-0.0549	0.0294	0.2356	-0.0067	0.1603	0.1325	0.0608	-0.0322	0.0482	0.0303	-0.0103	-0.033	0.0517	0.1695	0.07	0.1146	0.0393	0.0837	0.0083	0.1111	0.0463	0.0749	0.0264	0.2076	0.0567	-0.0046	0.1123	0.0453	0.2144	0.1756	-0.1102	0.1357	0.004	0.0042	0.1925	0.074	0.0402	0.0812	0.012	0.0405	0.0032	0.1264	0.0731	0.0629	0.1088	-0.075	0.0334	-0.0686	0.023	0.2162	0.1294
2015	-0.0451	0.0449	-0.1162	-0.1151	0.0853	-0.0519	-0.06	-0.1043	0.0289	0.0065	-0.1004	-0.0706	-0.0169	-0.0073	-0.057	-0.0497	0.0069	-0.0383	-0.0641	-0.0458	-0.0411	0.0204	-0.0864	0.025	-0.0625	-0.1118	0.0174	-0.0334	-0.071	0.0073	-0.018	0.0265	-0.037	-0.0295	0	-0.0454	-0.1252	-0.0339	-0.03	0.0182	-0.0483	-0.0191	-0.0513	-0.0047	-0.0172	-0.0514	-0.0596	-0.0421	-0.0734	-0.0669	-0.0178
2014	0.0743	-0.0342	0.0472	0.0314	-0.0796	0.0036	0.0246	-0.0091	-0.0735	0.0099	0.0324	-0.0438	-0.0614	-0.0592	-0.055	-0.0084	0.0191	-0.0239	0.015	0.1225	0.0058	-0.0427	-0.0497	-0.0972	0.0137	0.0191	-0.0852	-0.0181	-0.0488	-0.0634	-0.0586	-0.0492	-0.054	-0.0287	-0.0827	-0.0807	0.0756	-0.0459	-0.0377	-0.0678	0.0247	-0.0233	-0.0255	0.0333	0.0308	0.0346	-0.0236	-0.035	-0.0128	-0.0512	-0.0344
2013	-0.045	-0.0135	-0.0523	-0.0061	0.001	0.0148	-0.0737	0.0172	-0.0347	0.0151	0.0363	0.2422	-0.0168	-0.065	0.0962	-0.0031	-0.0641	0.0419	-0.0307	0.0042	-0.0273	-0.0496	-0.0751	0.0103	-0.0707	0.0309	0.0185	-0.0123	-0.1298	0.0145	-0.0826	-0.0509	-0.0235	0.004	0.0025	-0.0314	-0.0719	-0.0584	-0.0341	-0.0698	-0.0061	-0.0205	-0.0239	-0.0564	0.0268	0.0019	-0.0008	0.0049	-0.0421	-0.0551	0.0163
2012	-0.1286	-0.131	-0.1008	-0.1389	0.052	-0.0761	0.0081	-0.1501	-0.028	-0.1135	-0.0693	0.2235	-0.1509	0.0468	-0.2017	-0.0264	-0.0441	-0.1629	-0.108	-0.1394	-0.094	-0.0215	0.0044	-0.0256	-0.0942	-0.0753	-0.0905	-0.0418	-0.0706	-0.0568	-0.1169	0.0105	-0.0671	-0.1228	-0.0449	-0.1222	-0.0237	-0.1398	-0.1248	-0.034	-0.1274	-0.0405	-0.1391	-0.0331	-0.0816	-0.0665	-0.0795	-0.1226	-0.2278	-0.039	-0.0863
2011	-0.009836066	0.173165138	0.002840909	-0.049680625	-0.260392157	-0.099283521	-0.170308123	0.107031736	-0.155852032	-0.042240152	-0.107338445	-0.183980256	-0.047877145	-0.256835128	-0.145454545	-0.174643157	-0.146153846	-0.135115607	-0.151065203	-0.059530624	-0.145612943	-0.135622817	-0.055322716	-0.203720106	-0.194126074	-0.056137725	-0.170305677	-0.159315932	-0.011252813	-0.068085106	-0.044049967	-0.220768602	-0.103098927	-0.14053076	-0.181818182	-0.12732278	-0.075487013	0.045356371	-0.091245376	0.010065127	-0.114608076	-0.192579505	-0.144366197	-0.186181818	-0.005555556	-0.055707264	-0.145768993	0.068147014	0.016540317	-0.160031226	-0.075787402
\.


--
-- Data for Name: natl; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.natl (year, sewer, wages, benefits, goods, insurance, proptax) FROM stdin;
2022	0.034357427	0.02991453	0.024835646	0.049472771	0	0.1126
2021	0.029318139	0.033112583	0.016332591	0.002738075	-0.007527925	0.0422
2020	0.033474932	0.029545455	0.023556231	0.010224896	0.006407532	0.016
2019	0.032758892	0.028838659	0.024922118	0.012974483	0.009653804	0.0439
2018	0.031785327	0.025579536	0.019047619	0.005760267	0.009857286	0.0352
2017	0.041488271	0.020391517	0.012048193	0.014187042	0.009182586	0.032
2016	0.046365767	0.027661358	0.02553542	0.008817583	0.032302658	0.0286
2015	0.032517143	0.017050298	0.018456376	0.013201169	0.054077764	0.0231
2014	0.047601551	0.017346054	0.019674936	0.01257651	0.025760303	0.0162
2013	0.051909859	0.018551237	0.028144239	0.022475009	0.034327181	-0.0216
2012	0.051205653	0.016157989	0.029891304	0.018241159	0.013947983	0.0039
2011	0.064620072	0.014571949	0.020332717	0.021325526	0.03568352	0.0399
2010	0.062957706	0.020446097	0.015962441	0.020784322	0.019567439	0.1036
2009	0.052731635	0.031639501	0.031976744	0.021141246	0.017399	0.0343
2008	0.050493736	0.035749752	0.021782178	0.01137122	0.000739467	0.0482
2007	0.047876448	0.024415056	0.029561672	0.019128587	-0.01440678	0.0673
2006	0.050283861	0.027168234	0.05483871	0.019501625	0.016365202	0.0627
2005	0.059278351	0.025723473	0.067738232	0.019128587	0.015748031	0.0416
2004	0.032830524	0.028665932	0.057038835	0.019501625	0.062267658	\N
2003	0.03299725	0.035388128	0.044359949	0.010399562	0.007490637	\N
2002	0.027306968	\N	\N	0.008834898	0.028901734	\N
2001	0.024108004	\N	\N	0.01570387	0.032835821	\N
2000	0.023692004	\N	\N	\N	0.009036145	\N
\.


--
-- Data for Name: ocaf; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ocaf (year, state, ocaf, sewer, wages, benefits, goods, insurance, proptax, elec, gas, oil) FROM stdin;
2011	Alabama	2.4	0.064620072	0.014571949	0.020332717	0.021325526	0.03568352	0.0399	-0.064	0.173165138	-0.153
2011	Alaska	1.1	0.064620072	0.014571949	0.020332717	0.021325526	0.03568352	0.0399	-0.072	-0.009836066	-0.153
2011	Arizona	2.6	0.064620072	0.014571949	0.020332717	0.021325526	0.03568352	0.0399	-0.044	-0.049680625	-0.153
2011	Arkansas	2.1	0.064620072	0.014571949	0.020332717	0.021325526	0.03568352	0.0399	0.005	0.002840909	-0.153
2011	California	1.8	0.064620072	0.014571949	0.020332717	0.021325526	0.03568352	0.0399	0.028	-0.260392157	-0.153
2011	Colorado	1.7	0.064620072	0.014571949	0.020332717	0.021325526	0.03568352	0.0399	0.121	-0.099283521	-0.153
2011	Columbia	1.7	0.064620072	0.014571949	0.020332717	0.021325526	0.03568352	0.0399	0.021	0.107031736	-0.153
2011	Connecticut	0.1	0.064620072	0.014571949	0.020332717	0.021325526	0.03568352	0.0399	-0.041	-0.170308123	-0.159
2011	Delaware	1.5	0.064620072	0.014571949	0.020332717	0.021325526	0.03568352	0.0399	-0.033	-0.155852032	-0.121
2011	Florida	2.7	0.064620072	0.014571949	0.020332717	0.021325526	0.03568352	0.0399	-0.156	-0.042240152	-0.132
2011	Georgia	2.2	0.064620072	0.014571949	0.020332717	0.021325526	0.03568352	0.0399	-0.045	-0.107338445	-0.132
2011	Hawaii	0	0.064620072	0.014571949	0.020332717	0.021325526	0.03568352	0.0399	0.153	-0.183980256	-0.153
2011	Idaho	3	0.064620072	0.014571949	0.020332717	0.021325526	0.03568352	0.0399	0.078	-0.256835128	-0.153
2011	Illinois	0.1	0.064620072	0.014571949	0.020332717	0.021325526	0.03568352	0.0399	-0.074	-0.145454545	-0.088
2011	Indiana	2	0.064620072	0.014571949	0.020332717	0.021325526	0.03568352	0.0399	-0.049	-0.174643157	-0.098
2011	Iowa	1.7	0.064620072	0.014571949	0.020332717	0.021325526	0.03568352	0.0399	0.022	-0.047877145	-0.087
2011	Kansas	2.2	0.064620072	0.014571949	0.020332717	0.021325526	0.03568352	0.0399	0.037	-0.146153846	-0.088
2011	Kentucky	2.2	0.064620072	0.014571949	0.020332717	0.021325526	0.03568352	0.0399	-0.058	-0.135115607	-0.102
2011	Louisiana	0.8	0.064620072	0.014571949	0.020332717	0.021325526	0.03568352	0.0399	-0.017	-0.151065203	-0.153
2011	Maine	0	0.064620072	0.014571949	0.020332717	0.021325526	0.03568352	0.0399	-0.025	-0.135622817	-0.17
2011	Maryland	2.2	0.064620072	0.014571949	0.020332717	0.021325526	0.03568352	0.0399	-0.03	-0.145612943	-0.203
2011	Massachusetts	1.6	0.064620072	0.014571949	0.020332717	0.021325526	0.03568352	0.0399	-0.169	-0.059530624	-0.148
2011	Michigan	2.2	0.064620072	0.014571949	0.020332717	0.021325526	0.03568352	0.0399	0.081	-0.055322716	-0.099
2011	Minnesota	1.1	0.064620072	0.014571949	0.020332717	0.021325526	0.03568352	0.0399	0.038	-0.203720106	-0.057
2011	Mississippi	2.1	0.064620072	0.014571949	0.020332717	0.021325526	0.03568352	0.0399	-0.105	-0.056137725	-0.153
2011	Missouri	1.9	0.064620072	0.014571949	0.020332717	0.021325526	0.03568352	0.0399	-0.02	-0.194126074	-0.088
2011	Montana	0.4	0.064620072	0.014571949	0.020332717	0.021325526	0.03568352	0.0399	0.002	-0.170305677	-0.153
2011	Nebraska	1.8	0.064620072	0.014571949	0.020332717	0.021325526	0.03568352	0.0399	0.033	-0.068085106	-0.108
2011	Nevada	2.8	0.064620072	0.014571949	0.020332717	0.021325526	0.03568352	0.0399	0.008	-0.14053076	-0.153
2011	New.Hampshire	1.3	0.064620072	0.014571949	0.020332717	0.021325526	0.03568352	0.0399	-0.041	-0.044049967	-0.12
2011	New.Jersey	1.8	0.064620072	0.014571949	0.020332717	0.021325526	0.03568352	0.0399	0.003	-0.220768602	-0.136
2011	New.Mexico	1.1	0.064620072	0.014571949	0.020332717	0.021325526	0.03568352	0.0399	0.003	-0.103098927	-0.153
2011	New.York	0.3	0.064620072	0.014571949	0.020332717	0.021325526	0.03568352	0.0399	0.056	-0.181818182	-0.15
2011	North.Carolina	2.4	0.064620072	0.014571949	0.020332717	0.021325526	0.03568352	0.0399	0.007	-0.159315932	-0.143
2011	North.Dakota	1.3	0.064620072	0.014571949	0.020332717	0.021325526	0.03568352	0.0399	0.04	-0.011252813	-0.088
2011	Ohio	2.1	0.064620072	0.014571949	0.020332717	0.021325526	0.03568352	0.0399	0.075	-0.12732278	-0.095
2011	Oklahoma	1.4	0.064620072	0.014571949	0.020332717	0.021325526	0.03568352	0.0399	-0.037	-0.075487013	-0.088
2011	Oregon	2.6	0.064620072	0.014571949	0.020332717	0.021325526	0.03568352	0.0399	0.022	0.045356371	-0.153
2011	Pacific.Islands	0	0.064620072	0.014571949	0.020332717	0.021325526	0.03568352	0.0399	-0.030127411	-0.125989921	-0.153
2011	Pennsylvania	2	0.064620072	0.014571949	0.020332717	0.021325526	0.03568352	0.0399	0.09	-0.091245376	-0.171
2011	Puerto.Rico	2.1	0.064620072	0.014571949	0.020332717	0.021325526	0.03568352	0.0399	-0.030127411	-0.125989921	-0.153
2011	Rhode.Island	1.1	0.064620072	0.014571949	0.020332717	0.021325526	0.03568352	0.0399	-0.033	0.010065127	-0.163
2011	South.Carolina	2.5	0.064620072	0.014571949	0.020332717	0.021325526	0.03568352	0.0399	-0.042	-0.114608076	-0.132
2011	South.Dakota	0.5	0.064620072	0.014571949	0.020332717	0.021325526	0.03568352	0.0399	0.033	-0.192579505	-0.088
2011	Tennessee	2.5	0.064620072	0.014571949	0.020332717	0.021325526	0.03568352	0.0399	-0.15	-0.144366197	-0.088
2011	Texas	1.9	0.064620072	0.014571949	0.020332717	0.021325526	0.03568352	0.0399	-0.112	-0.186181818	-0.153
2011	US	1.7	0.064620072	0.014571949	0.020332717	0.021325526	0.03568352	0.0399	-0.030127411	-0.125989921	-0.153
2011	Utah	2.4	0.064620072	0.014571949	0.020332717	0.021325526	0.03568352	0.0399	0.024	-0.005555556	-0.153
2011	Vermont	0.6	0.064620072	0.014571949	0.020332717	0.021325526	0.03568352	0.0399	0.039	-0.145768993	-0.131
2011	Virgin.Islands	3	0.064620072	0.014571949	0.020332717	0.021325526	0.03568352	0.0399	-0.030127411	-0.125989921	-0.153
2011	Virginia	2.4	0.064620072	0.014571949	0.020332717	0.021325526	0.03568352	0.0399	-0.002	-0.055707264	-0.123
2011	Washington	2.7	0.064620072	0.014571949	0.020332717	0.021325526	0.03568352	0.0399	0.023	0.068147014	-0.153
2011	West.Virginia	3.2	0.064620072	0.014571949	0.020332717	0.021325526	0.03568352	0.0399	0.097	-0.160031226	-0.132
2011	Wisconsin	1.7	0.064620072	0.014571949	0.020332717	0.021325526	0.03568352	0.0399	0.041	0.016540317	-0.112
2011	Wyoming	1.9	0.064620072	0.014571949	0.020332717	0.021325526	0.03568352	0.0399	0.024	-0.075787402	-0.153
2012	Alabama	1.8	0.051205653	0.016157989	0.029891304	0.018241159	0.013947983	0.0039	0.061	-0.131	-0.098
2012	Alaska	2.2	0.051205653	0.016157989	0.029891304	0.018241159	0.013947983	0.0039	0.037	-0.1286	-0.098
2012	Arizona	1.8	0.051205653	0.016157989	0.029891304	0.018241159	0.013947983	0.0039	-0.066	-0.1389	-0.098
2012	Arkansas	1.3	0.051205653	0.016157989	0.029891304	0.018241159	0.013947983	0.0039	0.021	-0.1008	-0.098
2012	California	2.3	0.051205653	0.016157989	0.029891304	0.018241159	0.013947983	0.0039	-0.006	0.052	-0.098
2012	Colorado	2.2	0.051205653	0.016157989	0.029891304	0.018241159	0.013947983	0.0039	0	-0.0761	-0.098
2012	Columbia	1.8	0.051205653	0.016157989	0.029891304	0.018241159	0.013947983	0.0039	0.053	-0.1501	-0.098
2012	Connecticut	1.6	0.051205653	0.016157989	0.029891304	0.018241159	0.013947983	0.0039	-0.07	0.0081	-0.124
2012	Delaware	1.3	0.051205653	0.016157989	0.029891304	0.018241159	0.013947983	0.0039	0.022	-0.028	0.002
2012	Florida	1.3	0.051205653	0.016157989	0.029891304	0.018241159	0.013947983	0.0039	0.064	-0.1135	-0.049
2012	Georgia	1.9	0.051205653	0.016157989	0.029891304	0.018241159	0.013947983	0.0039	0.087	-0.0693	-0.049
2012	Hawaii	4.3	0.051205653	0.016157989	0.029891304	0.018241159	0.013947983	0.0039	0.133	0.2235	-0.098
2012	Idaho	1.8	0.051205653	0.016157989	0.029891304	0.018241159	0.013947983	0.0039	0.005	0.0468	-0.098
2012	Illinois	2.1	0.051205653	0.016157989	0.029891304	0.018241159	0.013947983	0.0039	0.059	-0.2017	-0.037
2012	Indiana	1.2	0.051205653	0.016157989	0.029891304	0.018241159	0.013947983	0.0039	0.086	-0.0264	-0.041
2012	Iowa	1.8	0.051205653	0.016157989	0.029891304	0.018241159	0.013947983	0.0039	0.047	-0.1509	-0.095
2012	Kansas	2	0.051205653	0.016157989	0.029891304	0.018241159	0.013947983	0.0039	0.07	-0.0441	-0.037
2012	Kentucky	1.8	0.051205653	0.016157989	0.029891304	0.018241159	0.013947983	0.0039	0.131	-0.1629	-0.062
2012	Louisiana	2.4	0.051205653	0.016157989	0.029891304	0.018241159	0.013947983	0.0039	-0.04	-0.108	-0.098
2012	Maine	2.5	0.051205653	0.016157989	0.029891304	0.018241159	0.013947983	0.0039	0.004	-0.0215	-0.128
2012	Maryland	1.3	0.051205653	0.016157989	0.029891304	0.018241159	0.013947983	0.0039	-0.059	-0.094	0.045
2012	Massachusetts	1	0.051205653	0.016157989	0.029891304	0.018241159	0.013947983	0.0039	-0.026	-0.1394	-0.122
2012	Michigan	2.3	0.051205653	0.016157989	0.029891304	0.018241159	0.013947983	0.0039	0.075	0.0044	-0.073
2012	Minnesota	1.8	0.051205653	0.016157989	0.029891304	0.018241159	0.013947983	0.0039	0.051	-0.0256	0.077
2012	Mississippi	1.6	0.051205653	0.016157989	0.029891304	0.018241159	0.013947983	0.0039	0.096	-0.0753	-0.098
2012	Missouri	2.1	0.051205653	0.016157989	0.029891304	0.018241159	0.013947983	0.0039	0.123	-0.0942	-0.037
2012	Montana	1.4	0.051205653	0.016157989	0.029891304	0.018241159	0.013947983	0.0039	0.073	-0.0905	-0.098
2012	Nebraska	1.8	0.051205653	0.016157989	0.029891304	0.018241159	0.013947983	0.0039	0.053	-0.0568	-0.114
2012	Nevada	1.7	0.051205653	0.016157989	0.029891304	0.018241159	0.013947983	0.0039	-0.06	-0.1228	-0.098
2012	New.Hampshire	2	0.051205653	0.016157989	0.029891304	0.018241159	0.013947983	0.0039	0.038	-0.1169	-0.115
2012	New.Jersey	1.2	0.051205653	0.016157989	0.029891304	0.018241159	0.013947983	0.0039	0.021	0.0105	-0.061
2012	New.Mexico	2.2	0.051205653	0.016157989	0.029891304	0.018241159	0.013947983	0.0039	0.013	-0.0671	-0.098
2012	New.York	2.4	0.051205653	0.016157989	0.029891304	0.018241159	0.013947983	0.0039	-0.011	-0.0449	-0.124
2012	North.Carolina	1.9	0.051205653	0.016157989	0.029891304	0.018241159	0.013947983	0.0039	0.005	-0.0418	-0.068
2012	North.Dakota	2.1	0.051205653	0.016157989	0.029891304	0.018241159	0.013947983	0.0039	0.034	-0.0706	-0.037
2012	Ohio	1.7	0.051205653	0.016157989	0.029891304	0.018241159	0.013947983	0.0039	-0.004	-0.1222	-0.068
2012	Oklahoma	2.2	0.051205653	0.016157989	0.029891304	0.018241159	0.013947983	0.0039	0.067	-0.0237	-0.037
2012	Oregon	2	0.051205653	0.016157989	0.029891304	0.018241159	0.013947983	0.0039	0.079	-0.1398	-0.098
2012	Pacific.Islands	1.9	0.051205653	0.016157989	0.029891304	0.018241159	0.013947983	0.0039	0.029554536	-0.061779242	-0.098
2012	Pennsylvania	2	0.051205653	0.016157989	0.029891304	0.018241159	0.013947983	0.0039	0.057	-0.1248	-0.019
2012	Puerto.Rico	2	0.051205653	0.016157989	0.029891304	0.018241159	0.013947983	0.0039	0.029554536	-0.061779242	-0.098
2012	Rhode.Island	1.7	0.051205653	0.016157989	0.029891304	0.018241159	0.013947983	0.0039	-0.004	-0.034	-0.101
2012	South.Carolina	1.9	0.051205653	0.016157989	0.029891304	0.018241159	0.013947983	0.0039	0.076	-0.1274	-0.049
2012	South.Dakota	2.3	0.051205653	0.016157989	0.029891304	0.018241159	0.013947983	0.0039	0.052	-0.0405	-0.037
2012	Tennessee	1.6	0.051205653	0.016157989	0.029891304	0.018241159	0.013947983	0.0039	0.165	-0.1391	-0.037
2012	Texas	1.3	0.051205653	0.016157989	0.029891304	0.018241159	0.013947983	0.0039	-0.048	-0.0331	-0.098
2012	US	1.8	0.051205653	0.016157989	0.029891304	0.018241159	0.013947983	0.0039	0.029554536	-0.061779242	-0.098
2012	Utah	1.8	0.051205653	0.016157989	0.029891304	0.018241159	0.013947983	0.0039	0.008	-0.0816	-0.098
2012	Vermont	3.3	0.051205653	0.016157989	0.029891304	0.018241159	0.013947983	0.0039	0.052	-0.0795	-0.055
2012	Virgin.Islands	2.3	0.051205653	0.016157989	0.029891304	0.018241159	0.013947983	0.0039	0.029554536	-0.061779242	-0.098
2012	Virginia	1.6	0.051205653	0.016157989	0.029891304	0.018241159	0.013947983	0.0039	-0.032	-0.0665	-0.034
2012	Washington	2.3	0.051205653	0.016157989	0.029891304	0.018241159	0.013947983	0.0039	0.043	-0.1226	-0.098
2012	West.Virginia	2.3	0.051205653	0.016157989	0.029891304	0.018241159	0.013947983	0.0039	0.067	-0.039	-0.049
2012	Wisconsin	1.9	0.051205653	0.016157989	0.029891304	0.018241159	0.013947983	0.0039	0.026	-0.2278	-0.11
2012	Wyoming	1.6	0.051205653	0.016157989	0.029891304	0.018241159	0.013947983	0.0039	0.028	-0.0863	-0.098
2013	Alabama	2.4	0.051909859	0.018551237	0.028144239	0.022475009	0.034327181	-0.0216	0.061	-0.0135	0.095
2013	Alaska	3.1	0.051909859	0.018551237	0.028144239	0.022475009	0.034327181	-0.0216	0.077	-0.045	0.095
2013	Arizona	1.9	0.051909859	0.018551237	0.028144239	0.022475009	0.034327181	-0.0216	0.087	-0.0061	0.095
2013	Arkansas	2.2	0.051909859	0.018551237	0.028144239	0.022475009	0.034327181	-0.0216	0.024	-0.0523	0.095
2013	California	2.3	0.051909859	0.018551237	0.028144239	0.022475009	0.034327181	-0.0216	0.008	0.001	0.095
2013	Colorado	2.1	0.051909859	0.018551237	0.028144239	0.022475009	0.034327181	-0.0216	0.025	0.0148	0.095
2013	Columbia	1.7	0.051909859	0.018551237	0.028144239	0.022475009	0.034327181	-0.0216	-0.121	0.0172	0.117
2013	Connecticut	1.5	0.051909859	0.018551237	0.028144239	0.022475009	0.034327181	-0.0216	-0.033	-0.0737	0.073
2013	Delaware	2.2	0.051909859	0.018551237	0.028144239	0.022475009	0.034327181	-0.0216	0.012	-0.0347	0.094
2013	Florida	2.3	0.051909859	0.018551237	0.028144239	0.022475009	0.034327181	-0.0216	0.012	0.0151	0.072
2013	Georgia	2.9	0.051909859	0.018551237	0.028144239	0.022475009	0.034327181	-0.0216	0.067	0.0363	0.072
2013	Hawaii	5.5	0.051909859	0.018551237	0.028144239	0.022475009	0.034327181	-0.0216	0.195	0.2422	0.095
2013	Idaho	1.8	0.051909859	0.018551237	0.028144239	0.022475009	0.034327181	-0.0216	0.042	-0.065	0.095
2013	Illinois	1.3	0.051909859	0.018551237	0.028144239	0.022475009	0.034327181	-0.0216	0.057	0.0962	0.02
2013	Indiana	2.4	0.051909859	0.018551237	0.028144239	0.022475009	0.034327181	-0.0216	0.085	-0.0031	0.033
2013	Iowa	1.7	0.051909859	0.018551237	0.028144239	0.022475009	0.034327181	-0.0216	0.038	-0.0168	0.029
2013	Kansas	2.2	0.051909859	0.018551237	0.028144239	0.022475009	0.034327181	-0.0216	0.091	-0.0641	0.02
2013	Kentucky	2.6	0.051909859	0.018551237	0.028144239	0.022475009	0.034327181	-0.0216	0.042	0.0419	0.074
2013	Louisiana	2.1	0.051909859	0.018551237	0.028144239	0.022475009	0.034327181	-0.0216	0.025	-0.0307	0.095
2013	Maine	2.2	0.051909859	0.018551237	0.028144239	0.022475009	0.034327181	-0.0216	-0.045	-0.0496	0.14
2013	Maryland	1.5	0.051909859	0.018551237	0.028144239	0.022475009	0.034327181	-0.0216	-0.055	-0.0273	0.089
2013	Massachusetts	1.8	0.051909859	0.018551237	0.028144239	0.022475009	0.034327181	-0.0216	0.057	0.0042	0.095
2013	Michigan	1.7	0.051909859	0.018551237	0.028144239	0.022475009	0.034327181	-0.0216	0.085	-0.0751	0.028
2013	Minnesota	2	0.051909859	0.018551237	0.028144239	0.022475009	0.034327181	-0.0216	0.042	0.0103	0.071
2013	Mississippi	2.1	0.051909859	0.018551237	0.028144239	0.022475009	0.034327181	-0.0216	0.055	0.0309	0.095
2013	Missouri	2.6	0.051909859	0.018551237	0.028144239	0.022475009	0.034327181	-0.0216	0.089	-0.0707	0.02
2013	Montana	2.6	0.051909859	0.018551237	0.028144239	0.022475009	0.034327181	-0.0216	0.042	0.0185	0.095
2013	Nebraska	2	0.051909859	0.018551237	0.028144239	0.022475009	0.034327181	-0.0216	0.103	0.0145	0.059
2013	Nevada	1.5	0.051909859	0.018551237	0.028144239	0.022475009	0.034327181	-0.0216	0.016	0.004	0.095
2013	New.Hampshire	2	0.051909859	0.018551237	0.028144239	0.022475009	0.034327181	-0.0216	-0.01	-0.0826	0.12
2013	New.Jersey	1.6	0.051909859	0.018551237	0.028144239	0.022475009	0.034327181	-0.0216	0.002	-0.0509	0.074
2013	New.Mexico	2.1	0.051909859	0.018551237	0.028144239	0.022475009	0.034327181	-0.0216	0.091	-0.0235	0.095
2013	New.York	2.1	0.051909859	0.018551237	0.028144239	0.022475009	0.034327181	-0.0216	-0.04	0.0025	0.092
2013	North.Carolina	2.2	0.051909859	0.018551237	0.028144239	0.022475009	0.034327181	-0.0216	0.078	-0.0123	0.084
2013	North.Dakota	2.3	0.051909859	0.018551237	0.028144239	0.022475009	0.034327181	-0.0216	0.101	-0.1298	0.02
2013	Ohio	1.9	0.051909859	0.018551237	0.028144239	0.022475009	0.034327181	-0.0216	0.082	-0.0314	0.03
2013	Oklahoma	2	0.051909859	0.018551237	0.028144239	0.022475009	0.034327181	-0.0216	0.112	-0.0719	0.02
2013	Oregon	2.4	0.051909859	0.018551237	0.028144239	0.022475009	0.034327181	-0.0216	0.035	-0.0584	0.095
2013	Pacific.Islands	5.4	0.051909859	0.018551237	0.028144239	0.022475009	0.034327181	-0.0216	0.030177341	-0.031606673	0.095
2013	Pennsylvania	2.3	0.051909859	0.018551237	0.028144239	0.022475009	0.034327181	-0.0216	0.026	-0.0341	0.08
2013	Puerto.Rico	2.3	0.051909859	0.018551237	0.028144239	0.022475009	0.034327181	-0.0216	0.030177341	-0.031606673	0.095
2013	Rhode.Island	1.2	0.051909859	0.018551237	0.028144239	0.022475009	0.034327181	-0.0216	-0.088	-0.0698	0.095
2013	South.Carolina	2.3	0.051909859	0.018551237	0.028144239	0.022475009	0.034327181	-0.0216	0.096	-0.0061	0.072
2013	South.Dakota	2.5	0.051909859	0.018551237	0.028144239	0.022475009	0.034327181	-0.0216	0.104	-0.0205	0.02
2013	Tennessee	2.4	0.051909859	0.018551237	0.028144239	0.022475009	0.034327181	-0.0216	0.033	-0.0239	0.02
2013	Texas	1.7	0.051909859	0.018551237	0.028144239	0.022475009	0.034327181	-0.0216	0.021	-0.0564	0.095
2013	US	2.1	0.051909859	0.018551237	0.028144239	0.022475009	0.034327181	-0.0216	0.030177341	-0.031606673	0.095
2013	Utah	2.2	0.051909859	0.018551237	0.028144239	0.022475009	0.034327181	-0.0216	0.127	0.0268	0.095
2013	Vermont	3.3	0.051909859	0.018551237	0.028144239	0.022475009	0.034327181	-0.0216	0.06	-0.000800	0.085
2013	Virgin.Islands	2.7	0.051909859	0.018551237	0.028144239	0.022475009	0.034327181	-0.0216	0.030177341	-0.031606673	0.095
2013	Virginia	2.3	0.051909859	0.018551237	0.028144239	0.022475009	0.034327181	-0.0216	0.106	0.0019	0.068
2013	Washington	2.4	0.051909859	0.018551237	0.028144239	0.022475009	0.034327181	-0.0216	0.035	0.0049	0.095
2013	West.Virginia	2.5	0.051909859	0.018551237	0.028144239	0.022475009	0.034327181	-0.0216	0.09	-0.0551	0.072
2013	Wisconsin	1.7	0.051909859	0.018551237	0.028144239	0.022475009	0.034327181	-0.0216	0.025	-0.0421	0.054
2013	Wyoming	2.5	0.051909859	0.018551237	0.028144239	0.022475009	0.034327181	-0.0216	0.091	0.0163	0.095
2014	Alabama	2.2	0.047601551	0.017346054	0.019674936	0.01257651	0.025760303	0.0162	-0.017	-0.0342	0.169
2014	Alaska	1.7	0.047601551	0.017346054	0.019674936	0.01257651	0.025760303	0.0162	-0.026	0.0743	0.169
2014	Arizona	2.1	0.047601551	0.017346054	0.019674936	0.01257651	0.025760303	0.0162	0.046	0.0314	0.169
2014	Arkansas	2.1	0.047601551	0.017346054	0.019674936	0.01257651	0.025760303	0.0162	0.031	0.0472	0.169
2014	California	2	0.047601551	0.017346054	0.019674936	0.01257651	0.025760303	0.0162	0.055	-0.0796	0.169
2014	Colorado	1.9	0.047601551	0.017346054	0.019674936	0.01257651	0.025760303	0.0162	0.049	0.0036	0.169
2014	Columbia	1.3	0.047601551	0.017346054	0.019674936	0.01257651	0.025760303	0.0162	0.002	-0.0091	0.111
2014	Connecticut	1.6	0.047601551	0.017346054	0.019674936	0.01257651	0.025760303	0.0162	-0.014	0.0246	0.159
2014	Delaware	1.8	0.047601551	0.017346054	0.019674936	0.01257651	0.025760303	0.0162	-0.028	-0.0735	0.139
2014	Florida	2	0.047601551	0.017346054	0.019674936	0.01257651	0.025760303	0.0162	-0.019	0.0099	0.143
2014	Georgia	2	0.047601551	0.017346054	0.019674936	0.01257651	0.025760303	0.0162	0.01	0.0324	0.143
2014	Hawaii	2.4	0.047601551	0.017346054	0.019674936	0.01257651	0.025760303	0.0162	0.021	-0.0438	0.169
2014	Idaho	2.2	0.047601551	0.017346054	0.019674936	0.01257651	0.025760303	0.0162	0.062	-0.0592	0.169
2014	Illinois	1.4	0.047601551	0.017346054	0.019674936	0.01257651	0.025760303	0.0162	-0.062	-0.055	0.201
2014	Indiana	1.9	0.047601551	0.017346054	0.019674936	0.01257651	0.025760303	0.0162	0.014	-0.0084	0.194
2014	Iowa	2	0.047601551	0.017346054	0.019674936	0.01257651	0.025760303	0.0162	0.03	-0.0614	0.203
2014	Kansas	2.2	0.047601551	0.017346054	0.019674936	0.01257651	0.025760303	0.0162	0.05	0.0191	0.201
2014	Kentucky	2	0.047601551	0.017346054	0.019674936	0.01257651	0.025760303	0.0162	0.043	-0.0239	0.179
2014	Louisiana	1.6	0.047601551	0.017346054	0.019674936	0.01257651	0.025760303	0.0162	0.091	0.015	0.169
2014	Maine	1.8	0.047601551	0.017346054	0.019674936	0.01257651	0.025760303	0.0162	-0.035	-0.0427	0.197
2014	Maryland	1.7	0.047601551	0.017346054	0.019674936	0.01257651	0.025760303	0.0162	-0.001	0.0058	0.151
2014	Massachusetts	1.7	0.047601551	0.017346054	0.019674936	0.01257651	0.025760303	0.0162	-0.04	0.1225	0.163
2014	Michigan	1.9	0.047601551	0.017346054	0.019674936	0.01257651	0.025760303	0.0162	0.019	-0.0497	0.194
2014	Minnesota	1.6	0.047601551	0.017346054	0.019674936	0.01257651	0.025760303	0.0162	0.032	-0.0972	0.185
2014	Mississippi	2	0.047601551	0.017346054	0.019674936	0.01257651	0.025760303	0.0162	-0.01	0.0191	0.169
2014	Missouri	2.1	0.047601551	0.017346054	0.019674936	0.01257651	0.025760303	0.0162	0.051	0.0137	0.201
2014	Montana	1.7	0.047601551	0.017346054	0.019674936	0.01257651	0.025760303	0.0162	0.023	-0.0852	0.169
2014	Nebraska	2.2	0.047601551	0.017346054	0.019674936	0.01257651	0.025760303	0.0162	0.028	-0.0634	0.202
2014	Nevada	2	0.047601551	0.017346054	0.019674936	0.01257651	0.025760303	0.0162	-0.043	-0.0287	0.169
2014	New.Hampshire	1.2	0.047601551	0.017346054	0.019674936	0.01257651	0.025760303	0.0162	0.001	-0.0586	0.183
2014	New.Jersey	1.4	0.047601551	0.017346054	0.019674936	0.01257651	0.025760303	0.0162	-0.053	-0.0492	0.17
2014	New.Mexico	1.9	0.047601551	0.017346054	0.019674936	0.01257651	0.025760303	0.0162	0.029	-0.054	0.169
2014	New.York	1.4	0.047601551	0.017346054	0.019674936	0.01257651	0.025760303	0.0162	0.111	-0.0827	0.153
2014	North.Carolina	2.1	0.047601551	0.017346054	0.019674936	0.01257651	0.025760303	0.0162	-0.003	-0.0181	0.148
2014	North.Dakota	2	0.047601551	0.017346054	0.019674936	0.01257651	0.025760303	0.0162	0.013	-0.0488	0.201
2014	Ohio	1.7	0.047601551	0.017346054	0.019674936	0.01257651	0.025760303	0.0162	0.005	-0.0807	0.208
2014	Oklahoma	2	0.047601551	0.017346054	0.019674936	0.01257651	0.025760303	0.0162	-0.055	0.0756	0.201
2014	Oregon	2.1	0.047601551	0.017346054	0.019674936	0.01257651	0.025760303	0.0162	0.005	-0.0459	0.169
2014	Pacific.Islands	2.4	0.047601551	0.017346054	0.019674936	0.01257651	0.025760303	0.0162	0.007285214	-0.034451496	0.169
2014	Pennsylvania	1.5	0.047601551	0.017346054	0.019674936	0.01257651	0.025760303	0.0162	-0.041	-0.0377	0.172
2014	Puerto.Rico	1.9	0.047601551	0.017346054	0.019674936	0.01257651	0.025760303	0.0162	0.007285214	-0.034451496	0.169
2014	Rhode.Island	1.6	0.047601551	0.017346054	0.019674936	0.01257651	0.025760303	0.0162	0.026	-0.0678	0.175
2014	South.Carolina	2.2	0.047601551	0.017346054	0.019674936	0.01257651	0.025760303	0.0162	0.026	0.0247	0.143
2014	South.Dakota	2.3	0.047601551	0.017346054	0.019674936	0.01257651	0.025760303	0.0162	0.015	-0.0233	0.201
2014	Tennessee	1.9	0.047601551	0.017346054	0.019674936	0.01257651	0.025760303	0.0162	0.008	-0.0255	0.201
2014	Texas	2	0.047601551	0.017346054	0.019674936	0.01257651	0.025760303	0.0162	0.003	0.0333	0.169
2014	US	1.9	0.047601551	0.017346054	0.019674936	0.01257651	0.025760303	0.0162	0.007285214	-0.034451496	0.169
2014	Utah	2.4	0.047601551	0.017346054	0.019674936	0.01257651	0.025760303	0.0162	0.041	0.0308	0.169
2014	Vermont	2.2	0.047601551	0.017346054	0.019674936	0.01257651	0.025760303	0.0162	-0.021	-0.0236	0.158
2014	Virgin.Islands	2.2	0.047601551	0.017346054	0.019674936	0.01257651	0.025760303	0.0162	0.007285214	-0.034451496	0.169
2014	Virginia	2	0.047601551	0.017346054	0.019674936	0.01257651	0.025760303	0.0162	-0.055	0.0346	0.144
2014	Washington	2.1	0.047601551	0.017346054	0.019674936	0.01257651	0.025760303	0.0162	0.022	-0.035	0.169
2014	West.Virginia	2.3	0.047601551	0.017346054	0.019674936	0.01257651	0.025760303	0.0162	-0.018	-0.0512	0.143
2014	Wisconsin	1.7	0.047601551	0.017346054	0.019674936	0.01257651	0.025760303	0.0162	0.021	-0.0128	0.188
2014	Wyoming	2.2	0.047601551	0.017346054	0.019674936	0.01257651	0.025760303	0.0162	0.042	-0.0344	0.169
2015	Alabama	1.9	0.032517143	0.017050298	0.018456376	0.013201169	0.054077764	0.0231	0.005	0.0449	0.131
2015	Alaska	2.2	0.032517143	0.017050298	0.018456376	0.013201169	0.054077764	0.0231	0.022	-0.0451	0.131
2015	Arizona	2	0.032517143	0.017050298	0.018456376	0.013201169	0.054077764	0.0231	-0.064	-0.1151	0.131
2015	Arkansas	1.9	0.032517143	0.017050298	0.018456376	0.013201169	0.054077764	0.0231	0.05	-0.1162	0.131
2015	California	2.6	0.032517143	0.017050298	0.018456376	0.013201169	0.054077764	0.0231	0.037	0.0853	0.131
2015	Colorado	2	0.032517143	0.017050298	0.018456376	0.013201169	0.054077764	0.0231	0.032	-0.0519	0.131
2015	Columbia	2.3	0.032517143	0.017050298	0.018456376	0.013201169	0.054077764	0.0231	0.053	-0.1043	0.107
2015	Connecticut	1.7	0.032517143	0.017050298	0.018456376	0.013201169	0.054077764	0.0231	0.117	-0.06	0.142
2015	Delaware	1.5	0.032517143	0.017050298	0.018456376	0.013201169	0.054077764	0.0231	-0.029	0.0289	0.05
2015	Florida	2.2	0.032517143	0.017050298	0.018456376	0.013201169	0.054077764	0.0231	0.048	0.0065	0.071
2015	Georgia	2	0.032517143	0.017050298	0.018456376	0.013201169	0.054077764	0.0231	0.04	-0.1004	0.071
2015	Hawaii	1.5	0.032517143	0.017050298	0.018456376	0.013201169	0.054077764	0.0231	-0.008	-0.0706	0.131
2015	Idaho	2.5	0.032517143	0.017050298	0.018456376	0.013201169	0.054077764	0.0231	0.055	-0.0073	0.131
2015	Illinois	1.7	0.032517143	0.017050298	0.018456376	0.013201169	0.054077764	0.0231	0	-0.057	0.118
2015	Indiana	2.1	0.032517143	0.017050298	0.018456376	0.013201169	0.054077764	0.0231	0.029	-0.0497	0.122
2015	Iowa	2.1	0.032517143	0.017050298	0.018456376	0.013201169	0.054077764	0.0231	-0.012	-0.0169	0.156
2015	Kansas	2.2	0.032517143	0.017050298	0.018456376	0.013201169	0.054077764	0.0231	0.009	0.0069	0.118
2015	Kentucky	2.1	0.032517143	0.017050298	0.018456376	0.013201169	0.054077764	0.0231	0.017	-0.0383	0.115
2015	Louisiana	2.7	0.032517143	0.017050298	0.018456376	0.013201169	0.054077764	0.0231	-0.034	-0.0641	0.131
2015	Maine	1.8	0.032517143	0.017050298	0.018456376	0.013201169	0.054077764	0.0231	-0.004	0.0204	0.148
2015	Maryland	2.1	0.032517143	0.017050298	0.018456376	0.013201169	0.054077764	0.0231	0.065	-0.0411	0.082
2015	Massachusetts	2.4	0.032517143	0.017050298	0.018456376	0.013201169	0.054077764	0.0231	0.169	-0.0458	0.145
2015	Michigan	1.4	0.032517143	0.017050298	0.018456376	0.013201169	0.054077764	0.0231	0.008	-0.0864	0.102
2015	Minnesota	2.4	0.032517143	0.017050298	0.018456376	0.013201169	0.054077764	0.0231	0.017	0.025	0.122
2015	Mississippi	2.4	0.032517143	0.017050298	0.018456376	0.013201169	0.054077764	0.0231	0.036	-0.1118	0.131
2015	Missouri	2	0.032517143	0.017050298	0.018456376	0.013201169	0.054077764	0.0231	-0.024	-0.0625	0.118
2015	Montana	2.2	0.032517143	0.017050298	0.018456376	0.013201169	0.054077764	0.0231	-0.002	0.0174	0.131
2015	Nebraska	2.1	0.032517143	0.017050298	0.018456376	0.013201169	0.054077764	0.0231	0.002	0.0073	0.108
2015	Nevada	2	0.032517143	0.017050298	0.018456376	0.013201169	0.054077764	0.0231	0.117	-0.0295	0.131
2015	New.Hampshire	2.2	0.032517143	0.017050298	0.018456376	0.013201169	0.054077764	0.0231	0.041	-0.018	0.105
2015	New.Jersey	2	0.032517143	0.017050298	0.018456376	0.013201169	0.054077764	0.0231	0.008	0.0265	0.117
2015	New.Mexico	2.4	0.032517143	0.017050298	0.018456376	0.013201169	0.054077764	0.0231	0.024	-0.037	0.131
2015	New.York	2.2	0.032517143	0.017050298	0.018456376	0.013201169	0.054077764	0.0231	0.113	0	0.115
2015	North.Carolina	2	0.032517143	0.017050298	0.018456376	0.013201169	0.054077764	0.0231	0.023	-0.0334	0.056
2015	North.Dakota	2	0.032517143	0.017050298	0.018456376	0.013201169	0.054077764	0.0231	0	-0.071	0.118
2015	Ohio	2	0.032517143	0.017050298	0.018456376	0.013201169	0.054077764	0.0231	0.001	-0.0454	0.119
2015	Oklahoma	1.8	0.032517143	0.017050298	0.018456376	0.013201169	0.054077764	0.0231	0.033	-0.1252	0.118
2015	Oregon	2.2	0.032517143	0.017050298	0.018456376	0.013201169	0.054077764	0.0231	0.051	-0.0339	0.131
2015	Pacific.Islands	1.5	0.032517143	0.017050298	0.018456376	0.013201169	0.054077764	0.0231	0.021733204	-0.030985915	0.131
2015	Pennsylvania	2	0.032517143	0.017050298	0.018456376	0.013201169	0.054077764	0.0231	0.059	-0.03	0.16
2015	Puerto.Rico	2	0.032517143	0.017050298	0.018456376	0.013201169	0.054077764	0.0231	0.021733204	-0.030985915	0.131
2015	Rhode.Island	2.7	0.032517143	0.017050298	0.018456376	0.013201169	0.054077764	0.0231	0.135	0.0182	0.147
2015	South.Carolina	2.2	0.032517143	0.017050298	0.018456376	0.013201169	0.054077764	0.0231	0.021	-0.0483	0.071
2015	South.Dakota	2	0.032517143	0.017050298	0.018456376	0.013201169	0.054077764	0.0231	0.012	-0.0191	0.118
2015	Tennessee	2	0.032517143	0.017050298	0.018456376	0.013201169	0.054077764	0.0231	-0.005	-0.0513	0.118
2015	Texas	2.4	0.032517143	0.017050298	0.018456376	0.013201169	0.054077764	0.0231	0.028	-0.0047	0.131
2015	US	2.1	0.032517143	0.017050298	0.018456376	0.013201169	0.054077764	0.0231	0.021733204	-0.030985915	0.131
2015	Utah	2.2	0.032517143	0.017050298	0.018456376	0.013201169	0.054077764	0.0231	0.03	-0.0172	0.131
2015	Vermont	2	0.032517143	0.017050298	0.018456376	0.013201169	0.054077764	0.0231	0.036	-0.0596	0.142
2015	Virgin.Islands	2.4	0.032517143	0.017050298	0.018456376	0.013201169	0.054077764	0.0231	0.021733204	-0.030985915	0.131
2015	Virginia	1.8	0.032517143	0.017050298	0.018456376	0.013201169	0.054077764	0.0231	-0.003	-0.0514	0.074
2015	Washington	2.2	0.032517143	0.017050298	0.018456376	0.013201169	0.054077764	0.0231	0.006	-0.0421	0.131
2015	West.Virginia	1.6	0.032517143	0.017050298	0.018456376	0.013201169	0.054077764	0.0231	-0.036	-0.0669	0.071
2015	Wisconsin	2.1	0.032517143	0.017050298	0.018456376	0.013201169	0.054077764	0.0231	0	-0.0734	0.098
2015	Wyoming	2.1	0.032517143	0.017050298	0.018456376	0.013201169	0.054077764	0.0231	0.027	-0.0178	0.131
2016	Alabama	2.6	0.046365767	0.027661358	0.02553542	0.008817583	0.032302658	0.0286	0.011	0.0294	-0.289
2016	Alaska	1.4	0.046365767	0.027661358	0.02553542	0.008817583	0.032302658	0.0286	0.08	-0.0549	-0.289
2016	Arizona	3	0.046365767	0.027661358	0.02553542	0.008817583	0.032302658	0.0286	0.063	-0.0067	-0.289
2016	Arkansas	2.4	0.046365767	0.027661358	0.02553542	0.008817583	0.032302658	0.0286	0.023	0.2356	-0.289
2016	California	3	0.046365767	0.027661358	0.02553542	0.008817583	0.032302658	0.0286	0.056	0.1603	-0.289
2016	Colorado	2.8	0.046365767	0.027661358	0.02553542	0.008817583	0.032302658	0.0286	0.01	0.1325	-0.289
2016	Columbia	2.8	0.046365767	0.027661358	0.02553542	0.008817583	0.032302658	0.0286	-0.024	-0.0322	-0.195
2016	Connecticut	2.8	0.046365767	0.027661358	0.02553542	0.008817583	0.032302658	0.0286	0.134	0.0608	-0.288
2016	Delaware	2.3	0.046365767	0.027661358	0.02553542	0.008817583	0.032302658	0.0286	0.028	0.0482	-0.259
2016	Florida	2.9	0.046365767	0.027661358	0.02553542	0.008817583	0.032302658	0.0286	0.002	0.0303	-0.29
2016	Georgia	2.6	0.046365767	0.027661358	0.02553542	0.008817583	0.032302658	0.0286	-0.026	-0.0103	-0.29
2016	Hawaii	2.3	0.046365767	0.027661358	0.02553542	0.008817583	0.032302658	0.0286	-0.137	-0.033	-0.289
2016	Idaho	2.8	0.046365767	0.027661358	0.02553542	0.008817583	0.032302658	0.0286	0.044	0.1695	-0.289
2016	Illinois	3.4	0.046365767	0.027661358	0.02553542	0.008817583	0.032302658	0.0286	0.097	0.07	-0.316
2016	Indiana	2.7	0.046365767	0.027661358	0.02553542	0.008817583	0.032302658	0.0286	0.044	0.1146	-0.296
2016	Iowa	2.9	0.046365767	0.027661358	0.02553542	0.008817583	0.032302658	0.0286	0.029	0.0517	-0.335
2016	Kansas	2.7	0.046365767	0.027661358	0.02553542	0.008817583	0.032302658	0.0286	0.043	0.0393	-0.316
2016	Kentucky	2.8	0.046365767	0.027661358	0.02553542	0.008817583	0.032302658	0.0286	0.012	0.0837	-0.341
2016	Louisiana	2.6	0.046365767	0.027661358	0.02553542	0.008817583	0.032302658	0.0286	0.025	0.0083	-0.289
2016	Maine	2.8	0.046365767	0.027661358	0.02553542	0.008817583	0.032302658	0.0286	0.14	0.0749	-0.335
2016	Maryland	2.7	0.046365767	0.027661358	0.02553542	0.008817583	0.032302658	0.0286	-0.022	0.0463	-0.263
2016	Massachusetts	3	0.046365767	0.027661358	0.02553542	0.008817583	0.032302658	0.0286	0.243	0.1111	-0.293
2016	Michigan	2.5	0.046365767	0.027661358	0.02553542	0.008817583	0.032302658	0.0286	-0.017	0.0264	-0.304
2016	Minnesota	3	0.046365767	0.027661358	0.02553542	0.008817583	0.032302658	0.0286	0.007	0.2076	-0.327
2016	Mississippi	2.9	0.046365767	0.027661358	0.02553542	0.008817583	0.032302658	0.0286	0.059	-0.0046	-0.289
2016	Missouri	2.3	0.046365767	0.027661358	0.02553542	0.008817583	0.032302658	0.0286	0.056	0.0567	-0.316
2016	Montana	2.6	0.046365767	0.027661358	0.02553542	0.008817583	0.032302658	0.0286	0.074	0.1123	-0.289
2016	Nebraska	2.8	0.046365767	0.027661358	0.02553542	0.008817583	0.032302658	0.0286	0.027	0.1756	-0.321
2016	Nevada	3.2	0.046365767	0.027661358	0.02553542	0.008817583	0.032302658	0.0286	0.022	0.0042	-0.289
2016	New.Hampshire	3.1	0.046365767	0.027661358	0.02553542	0.008817583	0.032302658	0.0286	0.144	-0.1102	-0.294
2016	New.Jersey	1.9	0.046365767	0.027661358	0.02553542	0.008817583	0.032302658	0.0286	0.004	0.1357	-0.285
2016	New.Mexico	3.4	0.046365767	0.027661358	0.02553542	0.008817583	0.032302658	0.0286	0.089	0.004	-0.289
2016	New.York	2.1	0.046365767	0.027661358	0.02553542	0.008817583	0.032302658	0.0286	-0.053	0.1925	-0.255
2016	North.Carolina	2.5	0.046365767	0.027661358	0.02553542	0.008817583	0.032302658	0.0286	-0.001	0.0453	-0.287
2016	North.Dakota	2.9	0.046365767	0.027661358	0.02553542	0.008817583	0.032302658	0.0286	0.055	0.2144	-0.316
2016	Ohio	2.8	0.046365767	0.027661358	0.02553542	0.008817583	0.032302658	0.0286	0.097	0.074	-0.324
2016	Oklahoma	2.7	0.046365767	0.027661358	0.02553542	0.008817583	0.032302658	0.0286	0.027	0.0402	-0.316
2016	Oregon	2.8	0.046365767	0.027661358	0.02553542	0.008817583	0.032302658	0.0286	0.02	0.0812	-0.289
2016	Pacific.Islands	2.3	0.046365767	0.027661358	0.02553542	0.008817583	0.032302658	0.0286	0.033874985	0.062984496	-0.289
2016	Pennsylvania	2.7	0.046365767	0.027661358	0.02553542	0.008817583	0.032302658	0.0286	-0.016	0.012	-0.309
2016	Puerto.Rico	2.7	0.046365767	0.027661358	0.02553542	0.008817583	0.032302658	0.0286	0.033874985	0.062984496	-0.289
2016	Rhode.Island	3.3	0.046365767	0.027661358	0.02553542	0.008817583	0.032302658	0.0286	0.093	0.0405	-0.272
2016	South.Carolina	2.6	0.046365767	0.027661358	0.02553542	0.008817583	0.032302658	0.0286	0.011	0.0032	-0.29
2016	South.Dakota	3	0.046365767	0.027661358	0.02553542	0.008817583	0.032302658	0.0286	0.079	0.1264	-0.316
2016	Tennessee	2.8	0.046365767	0.027661358	0.02553542	0.008817583	0.032302658	0.0286	0.019	0.0731	-0.316
2016	Texas	2.8	0.046365767	0.027661358	0.02553542	0.008817583	0.032302658	0.0286	0.028	0.0629	-0.289
2016	US	2.8	0.046365767	0.027661358	0.02553542	0.008817583	0.032302658	0.0286	0.033874985	0.062984496	-0.289
2016	Utah	2.9	0.046365767	0.027661358	0.02553542	0.008817583	0.032302658	0.0286	0.037	0.1088	-0.289
2016	Vermont	1.4	0.046365767	0.027661358	0.02553542	0.008817583	0.032302658	0.0286	-0.028	0.0334	-0.327
2016	Virgin.Islands	2.9	0.046365767	0.027661358	0.02553542	0.008817583	0.032302658	0.0286	0.033874985	0.062984496	-0.289
2016	Virginia	2.6	0.046365767	0.027661358	0.02553542	0.008817583	0.032302658	0.0286	0.088	-0.075	-0.291
2016	Washington	2.5	0.046365767	0.027661358	0.02553542	0.008817583	0.032302658	0.0286	0.01	-0.0686	-0.289
2016	West.Virginia	2.4	0.046365767	0.027661358	0.02553542	0.008817583	0.032302658	0.0286	0.005	0.2162	-0.29
2016	Wisconsin	3.3	0.046365767	0.027661358	0.02553542	0.008817583	0.032302658	0.0286	0.036	0.023	-0.305
2016	Wyoming	3	0.046365767	0.027661358	0.02553542	0.008817583	0.032302658	0.0286	0.057	0.1294	-0.289
2017	Alabama	2.1	0.041488271	0.020391517	0.012048193	0.014187042	0.009182586	0.032	0.016	0.0582	-0.216
2017	Alaska	0.5	0.041488271	0.020391517	0.012048193	0.014187042	0.009182586	0.032	0.012	-0.0335	-0.216
2017	Arizona	2.1	0.041488271	0.020391517	0.012048193	0.014187042	0.009182586	0.032	0.018	0.1145	-0.216
2017	Arkansas	2.3	0.041488271	0.020391517	0.012048193	0.014187042	0.009182586	0.032	-0.012	-0.0093	-0.216
2017	California	2.2	0.041488271	0.020391517	0.012048193	0.014187042	0.009182586	0.032	0.026	-0.0104	-0.216
2017	Colorado	1.7	0.041488271	0.020391517	0.012048193	0.014187042	0.009182586	0.032	-0.035	-0.0697	-0.216
2017	Columbia	2	0.041488271	0.020391517	0.012048193	0.014187042	0.009182586	0.032	-0.004	-0.0447	-0.202
2017	Connecticut	1.1	0.041488271	0.020391517	0.012048193	0.014187042	0.009182586	0.032	-0.058	-0.1154	-0.21
2017	Delaware	1.7	0.041488271	0.020391517	0.012048193	0.014187042	0.009182586	0.032	0.026	-0.082	-0.17
2017	Florida	2	0.041488271	0.020391517	0.012048193	0.014187042	0.009182586	0.032	-0.057	0.0168	-0.164
2017	Georgia	2	0.041488271	0.020391517	0.012048193	0.014187042	0.009182586	0.032	-0.012	0.0118	-0.164
2017	Hawaii	0	0.041488271	0.020391517	0.012048193	0.014187042	0.009182586	0.032	-0.158	-0.1564	-0.216
2017	Idaho	2.3	0.041488271	0.020391517	0.012048193	0.014187042	0.009182586	0.032	0.005	-0.1689	-0.216
2017	Illinois	1.5	0.041488271	0.020391517	0.012048193	0.014187042	0.009182586	0.032	0.03	-0.0111	-0.205
2017	Indiana	2	0.041488271	0.020391517	0.012048193	0.014187042	0.009182586	0.032	-0.013	-0.1507	-0.225
2017	Iowa	2.1	0.041488271	0.020391517	0.012048193	0.014187042	0.009182586	0.032	0.013	0.0059	-0.25
2017	Kansas	2	0.041488271	0.020391517	0.012048193	0.014187042	0.009182586	0.032	0.064	-0.0397	-0.205
2017	Kentucky	1.9	0.041488271	0.020391517	0.012048193	0.014187042	0.009182586	0.032	0.027	0.0235	-0.2
2017	Louisiana	1.8	0.041488271	0.020391517	0.012048193	0.014187042	0.009182586	0.032	-0.024	-0.011	-0.216
2017	Maine	1.4	0.041488271	0.020391517	0.012048193	0.014187042	0.009182586	0.032	-0.058	-0.1021	-0.226
2017	Maryland	2.1	0.041488271	0.020391517	0.012048193	0.014187042	0.009182586	0.032	0.076	-0.0147	-0.187
2017	Massachusetts	1.8	0.041488271	0.020391517	0.012048193	0.014187042	0.009182586	0.032	-0.079	-0.0065	-0.208
2017	Michigan	1.7	0.041488271	0.020391517	0.012048193	0.014187042	0.009182586	0.032	0.072	-0.0557	-0.217
2017	Minnesota	1.8	0.041488271	0.020391517	0.012048193	0.014187042	0.009182586	0.032	0.057	-0.1112	-0.221
2017	Mississippi	2.1	0.041488271	0.020391517	0.012048193	0.014187042	0.009182586	0.032	-0.071	0.0711	-0.216
2017	Missouri	2.2	0.041488271	0.020391517	0.012048193	0.014187042	0.009182586	0.032	-0.003	0.02	-0.205
2017	Montana	2.1	0.041488271	0.020391517	0.012048193	0.014187042	0.009182586	0.032	-0.024	-0.0988	-0.216
2017	Nebraska	2.3	0.041488271	0.020391517	0.012048193	0.014187042	0.009182586	0.032	0.019	-0.0055	-0.225
2017	Nevada	2.2	0.041488271	0.020391517	0.012048193	0.014187042	0.009182586	0.032	-0.097	-0.0261	-0.216
2017	New.Hampshire	1.8	0.041488271	0.020391517	0.012048193	0.014187042	0.009182586	0.032	-0.058	-0.1414	-0.211
2017	New.Jersey	1.3	0.041488271	0.020391517	0.012048193	0.014187042	0.009182586	0.032	0.001	-0.1481	-0.199
2017	New.Mexico	1.6	0.041488271	0.020391517	0.012048193	0.014187042	0.009182586	0.032	-0.078	-0.1069	-0.216
2017	New.York	0.4	0.041488271	0.020391517	0.012048193	0.014187042	0.009182586	0.032	-0.146	-0.0801	-0.203
2017	North.Carolina	2	0.041488271	0.020391517	0.012048193	0.014187042	0.009182586	0.032	-0.01	0.0103	-0.164
2017	North.Dakota	2.4	0.041488271	0.020391517	0.012048193	0.014187042	0.009182586	0.032	0.056	0.0332	-0.205
2017	Ohio	1.9	0.041488271	0.020391517	0.012048193	0.014187042	0.009182586	0.032	0.001	-0.064	-0.234
2017	Oklahoma	2	0.041488271	0.020391517	0.012048193	0.014187042	0.009182586	0.032	-0.008	0.0139	-0.205
2017	Oregon	2.2	0.041488271	0.020391517	0.012048193	0.014187042	0.009182586	0.032	-0.005	0.0657	-0.216
2017	Pacific.Islands	0	0.041488271	0.020391517	0.012048193	0.014187042	0.009182586	0.032	-0.01037357	-0.053783045	-0.216
2017	Pennsylvania	2	0.041488271	0.020391517	0.012048193	0.014187042	0.009182586	0.032	0.077	-0.062	-0.25
2017	Puerto.Rico	1.9	0.041488271	0.020391517	0.012048193	0.014187042	0.009182586	0.032	-0.01037357	-0.053783045	-0.216
2017	Rhode.Island	2.1	0.041488271	0.020391517	0.012048193	0.014187042	0.009182586	0.032	-0.017	-0.0594	-0.225
2017	South.Carolina	2.1	0.041488271	0.020391517	0.012048193	0.014187042	0.009182586	0.032	-0.006	-0.0024	-0.164
2017	South.Dakota	2.1	0.041488271	0.020391517	0.012048193	0.014187042	0.009182586	0.032	0.014	-0.1046	-0.205
2017	Tennessee	2	0.041488271	0.020391517	0.012048193	0.014187042	0.009182586	0.032	-0.011	-0.0503	-0.205
2017	Texas	2	0.041488271	0.020391517	0.012048193	0.014187042	0.009182586	0.032	-0.053	-0.0466	-0.216
2017	US	1.9	0.041488271	0.020391517	0.012048193	0.014187042	0.009182586	0.032	-0.01037357	-0.053783045	-0.216
2017	Utah	2.2	0.041488271	0.020391517	0.012048193	0.014187042	0.009182586	0.032	0.021	0.0253	-0.216
2017	Vermont	0.6	0.041488271	0.020391517	0.012048193	0.014187042	0.009182586	0.032	0.016	-0.0356	-0.214
2017	Virgin.Islands	2	0.041488271	0.020391517	0.012048193	0.014187042	0.009182586	0.032	-0.01037357	-0.053783045	-0.216
2017	Virginia	2	0.041488271	0.020391517	0.012048193	0.014187042	0.009182586	0.032	-0.019	-0.0082	-0.164
2017	Washington	2.2	0.041488271	0.020391517	0.012048193	0.014187042	0.009182586	0.032	0.068	0.1152	-0.216
2017	West.Virginia	2.6	0.041488271	0.020391517	0.012048193	0.014187042	0.009182586	0.032	0.174	-0.1882	-0.164
2017	Wisconsin	1.8	0.041488271	0.020391517	0.012048193	0.014187042	0.009182586	0.032	0.004	0.0264	-0.208
2017	Wyoming	2.2	0.041488271	0.020391517	0.012048193	0.014187042	0.009182586	0.032	0.014	-0.0011	-0.216
2018	Alabama	2.3	0.031785327	0.025579536	0.019047619	0.005760267	0.009857286	0.0352	0.105	0.0176	-0.006
2018	Alaska	2.9	0.031785327	0.025579536	0.019047619	0.005760267	0.009857286	0.0352	0.052	-0.005	-0.006
2018	Arizona	2	0.031785327	0.025579536	0.019047619	0.005760267	0.009857286	0.0352	0.05	-0.0354	-0.006
2018	Arkansas	2.2	0.031785327	0.025579536	0.019047619	0.005760267	0.009857286	0.0352	0.029	-0.1033	-0.006
2018	California	2.4	0.031785327	0.025579536	0.019047619	0.005760267	0.009857286	0.0352	0.052	0.0395	-0.006
2018	Colorado	1.9	0.031785327	0.025579536	0.019047619	0.005760267	0.009857286	0.0352	0.043	-0.1112	-0.006
2018	Columbia	2	0.031785327	0.025579536	0.019047619	0.005760267	0.009857286	0.0352	0.023	-0.0586	0.007
2018	Connecticut	2.2	0.031785327	0.025579536	0.019047619	0.005760267	0.009857286	0.0352	-0.035	0.0328	0.003
2018	Delaware	2.1	0.031785327	0.025579536	0.019047619	0.005760267	0.009857286	0.0352	-0.003	-0.0902	-0.011
2018	Florida	2.1	0.031785327	0.025579536	0.019047619	0.005760267	0.009857286	0.0352	0.03	0.0481	-0.02
2018	Georgia	2.2	0.031785327	0.025579536	0.019047619	0.005760267	0.009857286	0.0352	0.069	-0.0041	-0.02
2018	Hawaii	0.9	0.031785327	0.025579536	0.019047619	0.005760267	0.009857286	0.0352	0.073	-0.0898	-0.006
2018	Idaho	2.4	0.031785327	0.025579536	0.019047619	0.005760267	0.009857286	0.0352	-0.02	-0.0113	-0.006
2018	Illinois	2.2	0.031785327	0.025579536	0.019047619	0.005760267	0.009857286	0.0352	-0.003	-0.1121	-0.033
2018	Indiana	2.1	0.031785327	0.025579536	0.019047619	0.005760267	0.009857286	0.0352	0.089	-0.0447	-0.029
2018	Iowa	2.5	0.031785327	0.025579536	0.019047619	0.005760267	0.009857286	0.0352	0.032	-0.0524	-0.036
2018	Kansas	2.4	0.031785327	0.025579536	0.019047619	0.005760267	0.009857286	0.0352	0.008	-0.0315	-0.033
2018	Kentucky	2.1	0.031785327	0.025579536	0.019047619	0.005760267	0.009857286	0.0352	0.067	-0.0672	-0.019
2018	Louisiana	2.1	0.031785327	0.025579536	0.019047619	0.005760267	0.009857286	0.0352	-0.002	0.0539	-0.006
2018	Maine	1.6	0.031785327	0.025579536	0.019047619	0.005760267	0.009857286	0.0352	0.043	-0.043	-0.008
2018	Maryland	2.3	0.031785327	0.025579536	0.019047619	0.005760267	0.009857286	0.0352	0.018	-0.0416	-0.005
2018	Massachusetts	1.9	0.031785327	0.025579536	0.019047619	0.005760267	0.009857286	0.0352	0.023	-0.1769	-0.004
2018	Michigan	2.2	0.031785327	0.025579536	0.019047619	0.005760267	0.009857286	0.0352	0.044	-0.0681	-0.026
2018	Minnesota	2.2	0.031785327	0.025579536	0.019047619	0.005760267	0.009857286	0.0352	0.027	-0.0887	-0.035
2018	Mississippi	2	0.031785327	0.025579536	0.019047619	0.005760267	0.009857286	0.0352	0.041	-0.0569	-0.006
2018	Missouri	1.8	0.031785327	0.025579536	0.019047619	0.005760267	0.009857286	0.0352	0.05	0.0371	-0.033
2018	Montana	1.9	0.031785327	0.025579536	0.019047619	0.005760267	0.009857286	0.0352	0.024	-0.1145	-0.006
2018	Nebraska	2.2	0.031785327	0.025579536	0.019047619	0.005760267	0.009857286	0.0352	0.013	-0.1193	-0.047
2018	Nevada	1.8	0.031785327	0.025579536	0.019047619	0.005760267	0.009857286	0.0352	-0.003	-0.0225	-0.006
2018	New.Hampshire	2	0.031785327	0.025579536	0.019047619	0.005760267	0.009857286	0.0352	0.026	-0.0024	-0.012
2018	New.Jersey	2.4	0.031785327	0.025579536	0.019047619	0.005760267	0.009857286	0.0352	0.016	-0.0672	-0.006
2018	New.Mexico	1.7	0.031785327	0.025579536	0.019047619	0.005760267	0.009857286	0.0352	0.091	-0.0321	-0.006
2018	New.York	2	0.031785327	0.025579536	0.019047619	0.005760267	0.009857286	0.0352	0.044	-0.1153	-0.012
2018	North.Carolina	2.1	0.031785327	0.025579536	0.019047619	0.005760267	0.009857286	0.0352	0.012	-0.0959	-0.037
2018	North.Dakota	2.5	0.031785327	0.025579536	0.019047619	0.005760267	0.009857286	0.0352	0.024	-0.1345	-0.033
2018	Ohio	1.9	0.031785327	0.025579536	0.019047619	0.005760267	0.009857286	0.0352	-0.012	-0.0505	0.001
2018	Oklahoma	2.1	0.031785327	0.025579536	0.019047619	0.005760267	0.009857286	0.0352	0.108	0.0322	-0.033
2018	Oregon	2.3	0.031785327	0.025579536	0.019047619	0.005760267	0.009857286	0.0352	0.01	-0.0657	-0.006
2018	Pacific.Islands	0.9	0.031785327	0.025579536	0.019047619	0.005760267	0.009857286	0.0352	0.033569536	-0.031791908	-0.006
2018	Pennsylvania	2.1	0.031785327	0.025579536	0.019047619	0.005760267	0.009857286	0.0352	0.009	-0.0779	-0.01
2018	Puerto.Rico	2	0.031785327	0.025579536	0.019047619	0.005760267	0.009857286	0.0352	0.033569536	-0.031791908	-0.006
2018	Rhode.Island	1.9	0.031785327	0.025579536	0.019047619	0.005760267	0.009857286	0.0352	0.04	-0.0309	0.008
2018	South.Carolina	2.3	0.031785327	0.025579536	0.019047619	0.005760267	0.009857286	0.0352	0.059	0	-0.02
2018	South.Dakota	2.4	0.031785327	0.025579536	0.019047619	0.005760267	0.009857286	0.0352	0.017	-0.0843	-0.033
2018	Tennessee	2.2	0.031785327	0.025579536	0.019047619	0.005760267	0.009857286	0.0352	0.073	-0.0426	-0.033
2018	Texas	2.2	0.031785327	0.025579536	0.019047619	0.005760267	0.009857286	0.0352	-0.001	0.1024	-0.006
2018	US	2.2	0.031785327	0.025579536	0.019047619	0.005760267	0.009857286	0.0352	0.033569536	-0.031791908	-0.006
2018	Utah	2.2	0.031785327	0.025579536	0.019047619	0.005760267	0.009857286	0.0352	0.012	-0.0617	-0.006
2018	Vermont	2.2	0.031785327	0.025579536	0.019047619	0.005760267	0.009857286	0.0352	0.029	-0.0653	-0.022
2018	Virgin.Islands	2	0.031785327	0.025579536	0.019047619	0.005760267	0.009857286	0.0352	0.033569536	-0.031791908	-0.006
2018	Virginia	2.1	0.031785327	0.025579536	0.019047619	0.005760267	0.009857286	0.0352	0.001	-0.0282	-0.015
2018	Washington	2.3	0.031785327	0.025579536	0.019047619	0.005760267	0.009857286	0.0352	0.007	-0.0872	-0.006
2018	West.Virginia	2.8	0.031785327	0.025579536	0.019047619	0.005760267	0.009857286	0.0352	0.069	-0.055	-0.02
2018	Wisconsin	2.3	0.031785327	0.025579536	0.019047619	0.005760267	0.009857286	0.0352	0.016	-0.1164	-0.028
2018	Wyoming	2.1	0.031785327	0.025579536	0.019047619	0.005760267	0.009857286	0.0352	0.014	-0.0879	-0.006
2019	Alabama	2.9	0.032758892	0.028838659	0.024922118	0.012974483	0.009653804	0.0439	-0.049	0.0724	0.027
2019	Alaska	3.5	0.032758892	0.028838659	0.024922118	0.012974483	0.009653804	0.0439	0.047	0.1465	0.027
2019	Arizona	2.7	0.032758892	0.028838659	0.024922118	0.012974483	0.009653804	0.0439	0.009	0.1611	0.027
2019	Arkansas	2.8	0.032758892	0.028838659	0.024922118	0.012974483	0.009653804	0.0439	0.066	0.0327	0.027
2019	California	2.9	0.032758892	0.028838659	0.024922118	0.012974483	0.009653804	0.0439	0.024	0.0549	0.027
2019	Colorado	2.7	0.032758892	0.028838659	0.024922118	0.012974483	0.009653804	0.0439	-0.005	0.0993	0.027
2019	Columbia	3	0.032758892	0.028838659	0.024922118	0.012974483	0.009653804	0.0439	0.015	0.0808	0.033
2019	Connecticut	3.1	0.032758892	0.028838659	0.024922118	0.012974483	0.009653804	0.0439	0.055	0.0806	0.024
2019	Delaware	2.6	0.032758892	0.028838659	0.024922118	0.012974483	0.009653804	0.0439	-0.068	0.1495	0.022
2019	Florida	2.9	0.032758892	0.028838659	0.024922118	0.012974483	0.009653804	0.0439	0.023	0.0434	0.022
2019	Georgia	2.9	0.032758892	0.028838659	0.024922118	0.012974483	0.009653804	0.0439	-0.037	0.1628	0.022
2019	Hawaii	3.2	0.032758892	0.028838659	0.024922118	0.012974483	0.009653804	0.0439	0.087	0.0658	0.027
2019	Idaho	2.7	0.032758892	0.028838659	0.024922118	0.012974483	0.009653804	0.0439	0.086	0.1206	0.027
2019	Illinois	3.1	0.032758892	0.028838659	0.024922118	0.012974483	0.009653804	0.0439	0.055	0.1288	0.053
2019	Indiana	2.8	0.032758892	0.028838659	0.024922118	0.012974483	0.009653804	0.0439	-0.023	0.1439	0.057
2019	Iowa	3.2	0.032758892	0.028838659	0.024922118	0.012974483	0.009653804	0.0439	0.015	-0.0602	0.034
2019	Kansas	2.6	0.032758892	0.028838659	0.024922118	0.012974483	0.009653804	0.0439	0.018	0.1117	0.053
2019	Kentucky	2.7	0.032758892	0.028838659	0.024922118	0.012974483	0.009653804	0.0439	-0.042	0.146	0.055
2019	Louisiana	2.6	0.032758892	0.028838659	0.024922118	0.012974483	0.009653804	0.0439	0.044	0.1489	0.027
2019	Maine	3	0.032758892	0.028838659	0.024922118	0.012974483	0.009653804	0.0439	0.014	0.069	0.006
2019	Maryland	2.7	0.032758892	0.028838659	0.024922118	0.012974483	0.009653804	0.0439	-0.079	0.1249	0.019
2019	Massachusetts	2.8	0.032758892	0.028838659	0.024922118	0.012974483	0.009653804	0.0439	0.123	0.0572	0.011
2019	Michigan	2.7	0.032758892	0.028838659	0.024922118	0.012974483	0.009653804	0.0439	0.004	0.0207	0.05
2019	Minnesota	3	0.032758892	0.028838659	0.024922118	0.012974483	0.009653804	0.0439	-0.006	0.0574	0.022
2019	Mississippi	3	0.032758892	0.028838659	0.024922118	0.012974483	0.009653804	0.0439	-0.01	0.0768	0.027
2019	Missouri	2.6	0.032758892	0.028838659	0.024922118	0.012974483	0.009653804	0.0439	-0.023	0.1759	0.053
2019	Montana	2.6	0.032758892	0.028838659	0.024922118	0.012974483	0.009653804	0.0439	0.002	0.0481	0.027
2019	Nebraska	3	0.032758892	0.028838659	0.024922118	0.012974483	0.009653804	0.0439	-0.02	0.0211	0.02
2019	Nevada	2.7	0.032758892	0.028838659	0.024922118	0.012974483	0.009653804	0.0439	0.063	0.1751	0.027
2019	New.Hampshire	3.2	0.032758892	0.028838659	0.024922118	0.012974483	0.009653804	0.0439	0.049	0.1012	0.005
2019	New.Jersey	3.1	0.032758892	0.028838659	0.024922118	0.012974483	0.009653804	0.0439	-0.006	0.1453	0.024
2019	New.Mexico	3.2	0.032758892	0.028838659	0.024922118	0.012974483	0.009653804	0.0439	-0.026	0.1107	0.027
2019	New.York	3.1	0.032758892	0.028838659	0.024922118	0.012974483	0.009653804	0.0439	0.033	0.0596	0.042
2019	North.Carolina	2.6	0.032758892	0.028838659	0.024922118	0.012974483	0.009653804	0.0439	-0.005	0.1248	0.03
2019	North.Dakota	2.8	0.032758892	0.028838659	0.024922118	0.012974483	0.009653804	0.0439	-0.011	-0.1378	0.053
2019	Ohio	2.7	0.032758892	0.028838659	0.024922118	0.012974483	0.009653804	0.0439	0.014	0.0764	0.059
2019	Oklahoma	2.7	0.032758892	0.028838659	0.024922118	0.012974483	0.009653804	0.0439	-0.068	0.0785	0.053
2019	Oregon	2.6	0.032758892	0.028838659	0.024922118	0.012974483	0.009653804	0.0439	0.026	-0.0925	0.027
2019	Pacific.Islands	3.2	0.032758892	0.028838659	0.024922118	0.012974483	0.009653804	0.0439	-0.005610575	0.085572139	0.027
2019	Pennsylvania	2.9	0.032758892	0.028838659	0.024922118	0.012974483	0.009653804	0.0439	-0.02	0.1198	0.015
2019	Puerto.Rico	2.6	0.032758892	0.028838659	0.024922118	0.012974483	0.009653804	0.0439	-0.005610575	0.085572139	0.027
2019	Rhode.Island	2.5	0.032758892	0.028838659	0.024922118	0.012974483	0.009653804	0.0439	0.137	0.0159	0.031
2019	South.Carolina	2.7	0.032758892	0.028838659	0.024922118	0.012974483	0.009653804	0.0439	0.001	0.1466	0.022
2019	South.Dakota	2.8	0.032758892	0.028838659	0.024922118	0.012974483	0.009653804	0.0439	0.014	0.0763	0.053
2019	Tennessee	2.7	0.032758892	0.028838659	0.024922118	0.012974483	0.009653804	0.0439	-0.032	0.1194	0.053
2019	Texas	2.9	0.032758892	0.028838659	0.024922118	0.012974483	0.009653804	0.0439	-0.017	0.1603	0.027
2019	US	2.9	0.032758892	0.028838659	0.024922118	0.012974483	0.009653804	0.0439	-0.005610575	0.085572139	0.027
2019	Utah	2.6	0.032758892	0.028838659	0.024922118	0.012974483	0.009653804	0.0439	-0.034	-0.0077	0.027
2019	Vermont	0.9	0.032758892	0.028838659	0.024922118	0.012974483	0.009653804	0.0439	0.024	0.1342	0.01
2019	Virgin.Islands	2.5	0.032758892	0.028838659	0.024922118	0.012974483	0.009653804	0.0439	-0.005610575	0.085572139	0.027
2019	Virginia	2.6	0.032758892	0.028838659	0.024922118	0.012974483	0.009653804	0.0439	0.035	-0.0021	0.019
2019	Washington	2.7	0.032758892	0.028838659	0.024922118	0.012974483	0.009653804	0.0439	0.038	-0.0148	0.027
2019	West.Virginia	2.6	0.032758892	0.028838659	0.024922118	0.012974483	0.009653804	0.0439	-0.033	0.0409	0.022
2019	Wisconsin	3	0.032758892	0.028838659	0.024922118	0.012974483	0.009653804	0.0439	-0.008	0.0184	0.04
2019	Wyoming	2.7	0.032758892	0.028838659	0.024922118	0.012974483	0.009653804	0.0439	0.014	0.0588	0.027
2020	Alabama	2.1	0.033474932	0.029545455	0.023556231	0.010224896	0.006407532	0.016	0.03	0.0447	0.181
2020	Alaska	2.8	0.033474932	0.029545455	0.023556231	0.010224896	0.006407532	0.016	0.028	-0.0558	0.181
2020	Arizona	2.4	0.033474932	0.029545455	0.023556231	0.010224896	0.006407532	0.016	-0.028	-0.0925	0.181
2020	Arkansas	2	0.033474932	0.029545455	0.023556231	0.010224896	0.006407532	0.016	-0.004	-0.0272	0.181
2020	California	2.5	0.033474932	0.029545455	0.023556231	0.010224896	0.006407532	0.016	-0.008	-0.0152	0.181
2020	Colorado	2.2	0.033474932	0.029545455	0.023556231	0.010224896	0.006407532	0.016	0.024	-0.0421	0.181
2020	Columbia	2.2	0.033474932	0.029545455	0.023556231	0.010224896	0.006407532	0.016	0.019	-0.0187	0.178
2020	Connecticut	2.5	0.033474932	0.029545455	0.023556231	0.010224896	0.006407532	0.016	0.07	-0.0022	0.181
2020	Delaware	1.9	0.033474932	0.029545455	0.023556231	0.010224896	0.006407532	0.016	-0.004	-0.0599	0.193
2020	Florida	2.3	0.033474932	0.029545455	0.023556231	0.010224896	0.006407532	0.016	-0.008	0.009	0.191
2020	Georgia	2	0.033474932	0.029545455	0.023556231	0.010224896	0.006407532	0.016	0.02	-0.1742	0.191
2020	Hawaii	3.4	0.033474932	0.029545455	0.023556231	0.010224896	0.006407532	0.016	0.044	0.1183	0.181
2020	Idaho	2.4	0.033474932	0.029545455	0.023556231	0.010224896	0.006407532	0.016	-0.05	-0.077	0.181
2020	Illinois	2	0.033474932	0.029545455	0.023556231	0.010224896	0.006407532	0.016	-0.009	-0.0246	0.164
2020	Indiana	2.2	0.033474932	0.029545455	0.023556231	0.010224896	0.006407532	0.016	0.057	-0.0387	0.153
2020	Iowa	2.4	0.033474932	0.029545455	0.023556231	0.010224896	0.006407532	0.016	0.023	-0.0706	0.175
2020	Kansas	2.1	0.033474932	0.029545455	0.023556231	0.010224896	0.006407532	0.016	-0.093	-0.0703	0.164
2020	Kentucky	2	0.033474932	0.029545455	0.023556231	0.010224896	0.006407532	0.016	0.023	-0.0912	0.183
2020	Louisiana	2	0.033474932	0.029545455	0.023556231	0.010224896	0.006407532	0.016	0.021	-0.1066	0.181
2020	Maine	2.7	0.033474932	0.029545455	0.023556231	0.010224896	0.006407532	0.016	0.063	0.1614	0.2
2020	Maryland	2	0.033474932	0.029545455	0.023556231	0.010224896	0.006407532	0.016	0.006	-0.091	0.195
2020	Massachusetts	3.3	0.033474932	0.029545455	0.023556231	0.010224896	0.006407532	0.016	-0.014	0.117	0.177
2020	Michigan	2.3	0.033474932	0.029545455	0.023556231	0.010224896	0.006407532	0.016	-0.023	-0.0227	0.172
2020	Minnesota	2.5	0.033474932	0.029545455	0.023556231	0.010224896	0.006407532	0.016	0.015	0.026	0.181
2020	Mississippi	2.2	0.033474932	0.029545455	0.023556231	0.010224896	0.006407532	0.016	0.033	-0.1197	0.181
2020	Missouri	1.8	0.033474932	0.029545455	0.023556231	0.010224896	0.006407532	0.016	-0.02	-0.1175	0.164
2020	Montana	2.1	0.033474932	0.029545455	0.023556231	0.010224896	0.006407532	0.016	0.005	-0.0394	0.181
2020	Nebraska	2.1	0.033474932	0.029545455	0.023556231	0.010224896	0.006407532	0.016	0.015	0.055	0.207
2020	Nevada	2.5	0.033474932	0.029545455	0.023556231	0.010224896	0.006407532	0.016	-0.053	-0.0888	0.181
2020	New.Hampshire	2.6	0.033474932	0.029545455	0.023556231	0.010224896	0.006407532	0.016	0.027	-0.0055	0.188
2020	New.Jersey	2.2	0.033474932	0.029545455	0.023556231	0.010224896	0.006407532	0.016	0.021	-0.1443	0.178
2020	New.Mexico	2.1	0.033474932	0.029545455	0.023556231	0.010224896	0.006407532	0.016	0.026	0.0274	0.181
2020	New.York	2.5	0.033474932	0.029545455	0.023556231	0.010224896	0.006407532	0.016	-0.027	-0.0576	0.177
2020	North.Carolina	2.4	0.033474932	0.029545455	0.023556231	0.010224896	0.006407532	0.016	0.057	-0.0522	0.197
2020	North.Dakota	2.2	0.033474932	0.029545455	0.023556231	0.010224896	0.006407532	0.016	0.005	0.0476	0.164
2020	Ohio	2	0.033474932	0.029545455	0.023556231	0.010224896	0.006407532	0.016	-0.008	-0.0638	0.154
2020	Oklahoma	1.8	0.033474932	0.029545455	0.023556231	0.010224896	0.006407532	0.016	-0.011	-0.1886	0.164
2020	Oregon	2.4	0.033474932	0.029545455	0.023556231	0.010224896	0.006407532	0.016	0.007	0.0057	0.181
2020	Pacific.Islands	3.4	0.033474932	0.029545455	0.023556231	0.010224896	0.006407532	0.016	0.006792421	-0.037580202	0.181
2020	Pennsylvania	2.1	0.033474932	0.029545455	0.023556231	0.010224896	0.006407532	0.016	-0.043	-0.0132	0.168
2020	Puerto.Rico	2.4	0.033474932	0.029545455	0.023556231	0.010224896	0.006407532	0.016	0.006792421	-0.037580202	0.181
2020	Rhode.Island	3.3	0.033474932	0.029545455	0.023556231	0.010224896	0.006407532	0.016	0.063	0.1163	0.176
2020	South.Carolina	2.1	0.033474932	0.029545455	0.023556231	0.010224896	0.006407532	0.016	-0.017	-0.0698	0.191
2020	South.Dakota	2	0.033474932	0.029545455	0.023556231	0.010224896	0.006407532	0.016	-0.02	-0.0636	0.164
2020	Tennessee	2.2	0.033474932	0.029545455	0.023556231	0.010224896	0.006407532	0.016	0.061	-0.0824	0.164
2020	Texas	2.3	0.033474932	0.029545455	0.023556231	0.010224896	0.006407532	0.016	0.073	-0.1609	0.181
2020	US	2.2	0.033474932	0.029545455	0.023556231	0.010224896	0.006407532	0.016	0.006792421	-0.037580202	0.181
2020	Utah	2.2	0.033474932	0.029545455	0.023556231	0.010224896	0.006407532	0.016	-0.03	-0.0011	0.181
2020	Vermont	2.2	0.033474932	0.029545455	0.023556231	0.010224896	0.006407532	0.016	-0.054	-0.0511	0.191
2020	Virgin.Islands	2.2	0.033474932	0.029545455	0.023556231	0.010224896	0.006407532	0.016	0.006792421	-0.037580202	0.181
2020	Virginia	2.3	0.033474932	0.029545455	0.023556231	0.010224896	0.006407532	0.016	0.038	-0.0333	0.187
2020	Washington	2.3	0.033474932	0.029545455	0.023556231	0.010224896	0.006407532	0.016	-0.021	-0.032	0.181
2020	West.Virginia	2	0.033474932	0.029545455	0.023556231	0.010224896	0.006407532	0.016	-0.099	-0.0429	0.191
2020	Wisconsin	2.3	0.033474932	0.029545455	0.023556231	0.010224896	0.006407532	0.016	-0.005	0.0435	0.166
2020	Wyoming	2.2	0.033474932	0.029545455	0.023556231	0.010224896	0.006407532	0.016	-0.021	-0.0455	0.181
2021	Alabama	2.6	0.029318139	0.033112583	0.016332591	0.002738075	-0.007527925	0.0422	0.015	0.0109	0.185
2021	Alaska	2.3	0.029318139	0.033112583	0.016332591	0.002738075	-0.007527925	0.0422	0.013	0.0269	0.185
2021	Arizona	2.1	0.029318139	0.033112583	0.016332591	0.002738075	-0.007527925	0.0422	0.06	-0.0612	0.185
2021	Arkansas	2.4	0.029318139	0.033112583	0.016332591	0.002738075	-0.007527925	0.0422	-0.039	-0.1231	0.185
2021	California	2.7	0.029318139	0.033112583	0.016332591	0.002738075	-0.007527925	0.0422	0.089	0.0528	0.185
2021	Colorado	2.4	0.029318139	0.033112583	0.016332591	0.002738075	-0.007527925	0.0422	-0.015	0.0039	0.185
2021	Columbia	2.7	0.029318139	0.033112583	0.016332591	0.002738075	-0.007527925	0.0422	-0.034	-0.0397	0.161
2021	Connecticut	2.6	0.029318139	0.033112583	0.016332591	0.002738075	-0.007527925	0.0422	0.047	0.0496	0.199
2021	Delaware	2.2	0.029318139	0.033112583	0.016332591	0.002738075	-0.007527925	0.0422	0.016	0.0874	0.18
2021	Florida	2.5	0.029318139	0.033112583	0.016332591	0.002738075	-0.007527925	0.0422	-0.024	0.015	0.184
2021	Georgia	2.5	0.029318139	0.033112583	0.016332591	0.002738075	-0.007527925	0.0422	0.009	0.0644	0.184
2021	Hawaii	2	0.029318139	0.033112583	0.016332591	0.002738075	-0.007527925	0.0422	-0.008	0.0152	0.185
2021	Idaho	2.5	0.029318139	0.033112583	0.016332591	0.002738075	-0.007527925	0.0422	-0.002	-0.0135	0.185
2021	Illinois	2.6	0.029318139	0.033112583	0.016332591	0.002738075	-0.007527925	0.0422	0.033	-0.0046	0.205
2021	Indiana	2.5	0.029318139	0.033112583	0.016332591	0.002738075	-0.007527925	0.0422	-0.002	-0.0839	0.205
2021	Iowa	2.7	0.029318139	0.033112583	0.016332591	0.002738075	-0.007527925	0.0422	0.018	-0.0858	0.224
2021	Kansas	2	0.029318139	0.033112583	0.016332591	0.002738075	-0.007527925	0.0422	0.072	-0.0923	0.205
2021	Kentucky	2.4	0.029318139	0.033112583	0.016332591	0.002738075	-0.007527925	0.0422	0.018	0.0275	0.204
2021	Louisiana	2.2	0.029318139	0.033112583	0.016332591	0.002738075	-0.007527925	0.0422	-0.012	-0.0137	0.185
2021	Maine	2.2	0.029318139	0.033112583	0.016332591	0.002738075	-0.007527925	0.0422	-0.029	-0.0485	0.14
2021	Maryland	2.5	0.029318139	0.033112583	0.016332591	0.002738075	-0.007527925	0.0422	0.012	0.0645	0.183
2021	Massachusetts	2.3	0.029318139	0.033112583	0.016332591	0.002738075	-0.007527925	0.0422	0.035	-0.0165	0.187
2021	Michigan	2.5	0.029318139	0.033112583	0.016332591	0.002738075	-0.007527925	0.0422	0.049	-0.0134	0.212
2021	Minnesota	2.4	0.029318139	0.033112583	0.016332591	0.002738075	-0.007527925	0.0422	-0.006	-0.0725	0.225
2021	Mississippi	2.4	0.029318139	0.033112583	0.016332591	0.002738075	-0.007527925	0.0422	0.016	0.0039	0.185
2021	Missouri	2	0.029318139	0.033112583	0.016332591	0.002738075	-0.007527925	0.0422	0.026	0.0134	0.205
2021	Montana	2	0.029318139	0.033112583	0.016332591	0.002738075	-0.007527925	0.0422	0.039	-0.0314	0.185
2021	Nebraska	2.5	0.029318139	0.033112583	0.016332591	0.002738075	-0.007527925	0.0422	0.012	0.0261	0.225
2021	Nevada	2.7	0.029318139	0.033112583	0.016332591	0.002738075	-0.007527925	0.0422	0.015	0.0636	0.185
2021	New.Hampshire	2.6	0.029318139	0.033112583	0.016332591	0.002738075	-0.007527925	0.0422	-0.012	0.0704	0.203
2021	New.Jersey	2.8	0.029318139	0.033112583	0.016332591	0.002738075	-0.007527925	0.0422	-0.025	-0.1888	0.169
2021	New.Mexico	2.2	0.029318139	0.033112583	0.016332591	0.002738075	-0.007527925	0.0422	-0.014	0.0194	0.185
2021	New.York	2	0.029318139	0.033112583	0.016332591	0.002738075	-0.007527925	0.0422	0.003	-0.0278	0.178
2021	North.Carolina	2.6	0.029318139	0.033112583	0.016332591	0.002738075	-0.007527925	0.0422	-0.003	-0.0749	0.18
2021	North.Dakota	2.5	0.029318139	0.033112583	0.016332591	0.002738075	-0.007527925	0.0422	0.007	0.0281	0.205
2021	Ohio	2.3	0.029318139	0.033112583	0.016332591	0.002738075	-0.007527925	0.0422	-0.021	0.0527	0.198
2021	Oklahoma	2.2	0.029318139	0.033112583	0.016332591	0.002738075	-0.007527925	0.0422	0.012	0.0162	0.205
2021	Oregon	2.4	0.029318139	0.033112583	0.016332591	0.002738075	-0.007527925	0.0422	0.009	-0.0638	0.185
2021	Pacific.Islands	2	0.029318139	0.033112583	0.016332591	0.002738075	-0.007527925	0.0422	0.027114986	0.000952381	0.185
2021	Pennsylvania	2.4	0.029318139	0.033112583	0.016332591	0.002738075	-0.007527925	0.0422	0.049	0.04	0.194
2021	Puerto.Rico	2.5	0.029318139	0.033112583	0.016332591	0.002738075	-0.007527925	0.0422	0.027114986	0.000952381	0.185
2021	Rhode.Island	2.4	0.029318139	0.033112583	0.016332591	0.002738075	-0.007527925	0.0422	0.006	-0.0185	0.202
2021	South.Carolina	2.6	0.029318139	0.033112583	0.016332591	0.002738075	-0.007527925	0.0422	0.002	-0.029	0.184
2021	South.Dakota	2.3	0.029318139	0.033112583	0.016332591	0.002738075	-0.007527925	0.0422	0.031	-0.0483	0.205
2021	Tennessee	2.4	0.029318139	0.033112583	0.016332591	0.002738075	-0.007527925	0.0422	-0.007	0	0.205
2021	Texas	2.8	0.029318139	0.033112583	0.016332591	0.002738075	-0.007527925	0.0422	0.006	-0.0709	0.185
2021	US	2.5	0.029318139	0.033112583	0.016332591	0.002738075	-0.007527925	0.0422	0.027114986	0.000952381	0.185
2021	Utah	2.3	0.029318139	0.033112583	0.016332591	0.002738075	-0.007527925	0.0422	0.003	-0.135	0.185
2021	Vermont	1.8	0.029318139	0.033112583	0.016332591	0.002738075	-0.007527925	0.0422	0.159	0.0777	0.19
2021	Virgin.Islands	2	0.029318139	0.033112583	0.016332591	0.002738075	-0.007527925	0.0422	0.027114986	0.000952381	0.185
2021	Virginia	2.6	0.029318139	0.033112583	0.016332591	0.002738075	-0.007527925	0.0422	0.027	-0.0374	0.186
2021	Washington	2.3	0.029318139	0.033112583	0.016332591	0.002738075	-0.007527925	0.0422	0.01	-0.0447	0.185
2021	West.Virginia	2.2	0.029318139	0.033112583	0.016332591	0.002738075	-0.007527925	0.0422	0.112	-0.0448	0.184
2021	Wisconsin	2.8	0.029318139	0.033112583	0.016332591	0.002738075	-0.007527925	0.0422	0.026	0.0061	0.214
2021	Wyoming	2.2	0.029318139	0.033112583	0.016332591	0.002738075	-0.007527925	0.0422	-0.007	-0.0628	0.185
2022	Alabama	3.1	0.034357427	0.02991453	0.024835646	0.049472771	0	0.1126	0.029	0.0027	0.074
2022	Alaska	2.5	0.034357427	0.02991453	0.024835646	0.049472771	0	0.1126	-0.024	0.0243	0.074
2022	Arizona	3	0.034357427	0.02991453	0.024835646	0.049472771	0	0.1126	0.182	0.1113	0.074
2022	Arkansas	3.4	0.034357427	0.02991453	0.024835646	0.049472771	0	0.1126	0.021	-0.0267	0.074
2022	California	3.5	0.034357427	0.02991453	0.024835646	0.049472771	0	0.1126	0.063	0.0919	0.074
2022	Colorado	3	0.034357427	0.02991453	0.024835646	0.049472771	0	0.1126	0.048	-0.0708	0.074
2022	Columbia	2.9	0.034357427	0.02991453	0.024835646	0.049472771	0	0.1126	-0.005	0.0702	0.085
2022	Connecticut	2.9	0.034357427	0.02991453	0.024835646	0.049472771	0	0.1126	-0.05	0.0048	0.067
2022	Delaware	3.4	0.034357427	0.02991453	0.024835646	0.049472771	0	0.1126	-0.029	-0.0695	0.03
2022	Florida	2.9	0.034357427	0.02991453	0.024835646	0.049472771	0	0.1126	0.037	-0.0129	0.021
2022	Georgia	3.1	0.034357427	0.02991453	0.024835646	0.049472771	0	0.1126	0.012	0.0383	0.021
2022	Hawaii	1.8	0.034357427	0.02991453	0.024835646	0.049472771	0	0.1126	-0.033	-0.1448	0.074
2022	Idaho	3.2	0.034357427	0.02991453	0.024835646	0.049472771	0	0.1126	0.021	-0.0124	0.074
2022	Illinois	3	0.034357427	0.02991453	0.024835646	0.049472771	0	0.1126	-0.049	-0.0104	0.097
2022	Indiana	3.1	0.034357427	0.02991453	0.024835646	0.049472771	0	0.1126	0.012	-0.0501	0.14
2022	Iowa	3.2	0.034357427	0.02991453	0.024835646	0.049472771	0	0.1126	-0.004	0.0354	0.094
2022	Kansas	3	0.034357427	0.02991453	0.024835646	0.049472771	0	0.1126	-0.02	0.0141	0.097
2022	Kentucky	3	0.034357427	0.02991453	0.024835646	0.049472771	0	0.1126	-0.018	0.0267	0.118
2022	Louisiana	2.8	0.034357427	0.02991453	0.024835646	0.049472771	0	0.1126	0.067	0.0574	0.074
2022	Maine	2	0.034357427	0.02991453	0.024835646	0.049472771	0	0.1126	-0.033	-0.000700	0.09
2022	Maryland	3.1	0.034357427	0.02991453	0.024835646	0.049472771	0	0.1126	-0.063	0.0414	0.02
2022	Massachusetts	2.9	0.034357427	0.02991453	0.024835646	0.049472771	0	0.1126	-0.02	-0.0729	0.14
2022	Michigan	3.3	0.034357427	0.02991453	0.024835646	0.049472771	0	0.1126	0.081	0.021	0.086
2022	Minnesota	3.2	0.034357427	0.02991453	0.024835646	0.049472771	0	0.1126	0.016	-0.0025	0.051
2022	Mississippi	3.1	0.034357427	0.02991453	0.024835646	0.049472771	0	0.1126	-0.006	-0.0019	0.074
2022	Missouri	2.8	0.034357427	0.02991453	0.024835646	0.049472771	0	0.1126	-0.039	0.0879	0.097
2022	Montana	3.3	0.034357427	0.02991453	0.024835646	0.049472771	0	0.1126	-0.023	0.0183	0.074
2022	Nebraska	3.2	0.034357427	0.02991453	0.024835646	0.049472771	0	0.1126	-0.02	-0.0692	0.102
2022	Nevada	3.1	0.034357427	0.02991453	0.024835646	0.049472771	0	0.1126	-0.023	0.0272	0.074
2022	New.Hampshire	2.4	0.034357427	0.02991453	0.024835646	0.049472771	0	0.1126	-0.035	0.0195	0.023
2022	New.Jersey	3	0.034357427	0.02991453	0.024835646	0.049472771	0	0.1126	0.047	0.1	0.113
2022	New.Mexico	3.4	0.034357427	0.02991453	0.024835646	0.049472771	0	0.1126	0.044	0.0151	0.074
2022	New.York	2.9	0.034357427	0.02991453	0.024835646	0.049472771	0	0.1126	0.057	-0.0257	0.062
2022	North.Carolina	3.2	0.034357427	0.02991453	0.024835646	0.049472771	0	0.1126	-0.024	0.0177	0.015
2022	North.Dakota	3	0.034357427	0.02991453	0.024835646	0.049472771	0	0.1126	0.039	0.0905	0.097
2022	Ohio	2.8	0.034357427	0.02991453	0.024835646	0.049472771	0	0.1126	-0.011	-0.0052	0.154
2022	Oklahoma	2.8	0.034357427	0.02991453	0.024835646	0.049472771	0	0.1126	0.825	-0.0309	0.097
2022	Oregon	3.2	0.034357427	0.02991453	0.024835646	0.049472771	0	0.1126	0.013	0.0943	0.074
2022	Pacific.Islands	1.8	0.034357427	0.02991453	0.024835646	0.049472771	0	0.1126	0.014838262	0.025689819	0.074
2022	Pennsylvania	2.8	0.034357427	0.02991453	0.024835646	0.049472771	0	0.1126	-0.044	-0.0188	0.046
2022	Puerto.Rico	2.9	0.034357427	0.02991453	0.024835646	0.049472771	0	0.1126	0.014838262	0.025689819	0.074
2022	Rhode.Island	2.7	0.034357427	0.02991453	0.024835646	0.049472771	0	0.1126	0.01	-0.0195	0.072
2022	South.Carolina	3	0.034357427	0.02991453	0.024835646	0.049472771	0	0.1126	-0.006	0.0321	0.021
2022	South.Dakota	3.1	0.034357427	0.02991453	0.024835646	0.049472771	0	0.1126	0.078	-0.0247	0.097
2022	Tennessee	3	0.034357427	0.02991453	0.024835646	0.049472771	0	0.1126	-0.039	-0.0518	0.097
2022	Texas	3.3	0.034357427	0.02991453	0.024835646	0.049472771	0	0.1126	0.038	0.0971	0.074
2022	US	3.1	0.034357427	0.02991453	0.024835646	0.049472771	0	0.1126	0.014838262	0.025689819	0.074
2022	Utah	3.3	0.034357427	0.02991453	0.024835646	0.049472771	0	0.1126	0.003	0.0422	0.074
2022	Vermont	3	0.034357427	0.02991453	0.024835646	0.049472771	0	0.1126	-0.052	0.0079	-0.059
2022	Virgin.Islands	2.6	0.034357427	0.02991453	0.024835646	0.049472771	0	0.1126	0.014838262	0.025689819	0.074
2022	Virginia	3.2	0.034357427	0.02991453	0.024835646	0.049472771	0	0.1126	-0.052	0.0053	0.024
2022	Washington	3.2	0.034357427	0.02991453	0.024835646	0.049472771	0	0.1126	0.023	0.1171	0.074
2022	West.Virginia	3.3	0.034357427	0.02991453	0.024835646	0.049472771	0	0.1126	0.007	-0.0208	0.021
2022	Wisconsin	3.3	0.034357427	0.02991453	0.024835646	0.049472771	0	0.1126	0.004	0.0212	0.073
2022	Wyoming	3.1	0.034357427	0.02991453	0.024835646	0.049472771	0	0.1126	0.018	0.0968	0.074
\.


--
-- Data for Name: oil; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.oil (year, "AK", "AL", "AR", "AZ", "CA", "CO", "CT", "DC", "DE", "FL", "GA", "HI", "IA", "ID", "IL", "IN", "KS", "KY", "LA", "MA", "MD", "ME", "MI", "MN", "MO", "MS", "MT", "NC", "ND", "NE", "NH", "NJ", "NM", "NV", "NY", "OH", "OK", "OR", "PA", "RI", "SC", "SD", "TN", "TX", "UT", "VA", "VT", "WA", "WI", "WV", "WY") FROM stdin;
2022	-0.153	-0.153	-0.153	-0.153	-0.153	-0.153	-0.159	-0.153	-0.121	-0.132	-0.132	-0.153	-0.087	-0.153	-0.088	-0.098	-0.088	-0.102	-0.153	-0.148	-0.203	-0.17	-0.099	-0.057	-0.088	-0.153	-0.153	-0.143	-0.088	-0.108	-0.12	-0.136	-0.153	-0.153	-0.15	-0.095	-0.088	-0.153	-0.171	-0.163	-0.132	-0.088	-0.088	-0.153	-0.153	-0.123	-0.131	-0.153	-0.112	-0.132	-0.153
2021	-0.098	-0.098	-0.098	-0.098	-0.098	-0.098	-0.124	-0.098	0.002	-0.049	-0.049	-0.098	-0.095	-0.098	-0.037	-0.041	-0.037	-0.062	-0.098	-0.122	0.045	-0.128	-0.073	0.077	-0.037	-0.098	-0.098	-0.068	-0.037	-0.114	-0.115	-0.061	-0.098	-0.098	-0.124	-0.068	-0.037	-0.098	-0.019	-0.101	-0.049	-0.037	-0.037	-0.098	-0.098	-0.034	-0.055	-0.098	-0.11	-0.049	-0.098
2020	0.095	0.095	0.095	0.095	0.095	0.095	0.073	0.117	0.094	0.072	0.072	0.095	0.029	0.095	0.02	0.033	0.02	0.074	0.095	0.095	0.089	0.14	0.028	0.071	0.02	0.095	0.095	0.084	0.02	0.059	0.12	0.074	0.095	0.095	0.092	0.03	0.02	0.095	0.08	0.095	0.072	0.02	0.02	0.095	0.095	0.068	0.085	0.095	0.054	0.072	0.095
2019	0.169	0.169	0.169	0.169	0.169	0.169	0.159	0.111	0.139	0.143	0.143	0.169	0.203	0.169	0.201	0.194	0.201	0.179	0.169	0.163	0.151	0.197	0.194	0.185	0.201	0.169	0.169	0.148	0.201	0.202	0.183	0.17	0.169	0.169	0.153	0.208	0.201	0.169	0.172	0.175	0.143	0.201	0.201	0.169	0.169	0.144	0.158	0.169	0.188	0.143	0.169
2018	0.131	0.131	0.131	0.131	0.131	0.131	0.142	0.107	0.05	0.071	0.071	0.131	0.156	0.131	0.118	0.122	0.118	0.115	0.131	0.145	0.082	0.148	0.102	0.122	0.118	0.131	0.131	0.056	0.118	0.108	0.105	0.117	0.131	0.131	0.115	0.119	0.118	0.131	0.16	0.147	0.071	0.118	0.118	0.131	0.131	0.074	0.142	0.131	0.098	0.071	0.131
2017	-0.289	-0.289	-0.289	-0.289	-0.289	-0.289	-0.288	-0.195	-0.259	-0.29	-0.29	-0.289	-0.335	-0.289	-0.316	-0.296	-0.316	-0.341	-0.289	-0.293	-0.263	-0.335	-0.304	-0.327	-0.316	-0.289	-0.289	-0.287	-0.316	-0.321	-0.294	-0.285	-0.289	-0.289	-0.255	-0.324	-0.316	-0.289	-0.309	-0.272	-0.29	-0.316	-0.316	-0.289	-0.289	-0.291	-0.327	-0.289	-0.305	-0.29	-0.289
2016	-0.216	-0.216	-0.216	-0.216	-0.216	-0.216	-0.21	-0.202	-0.17	-0.164	-0.164	-0.216	-0.25	-0.216	-0.205	-0.225	-0.205	-0.2	-0.216	-0.208	-0.187	-0.226	-0.217	-0.221	-0.205	-0.216	-0.216	-0.164	-0.205	-0.225	-0.211	-0.199	-0.216	-0.216	-0.203	-0.234	-0.205	-0.216	-0.25	-0.225	-0.164	-0.205	-0.205	-0.216	-0.216	-0.164	-0.214	-0.216	-0.208	-0.164	-0.216
2015	-0.006	-0.006	-0.006	-0.006	-0.006	-0.006	0.003	0.007	-0.011	-0.02	-0.02	-0.006	-0.036	-0.006	-0.033	-0.029	-0.033	-0.019	-0.006	-0.004	-0.005	-0.008	-0.026	-0.035	-0.033	-0.006	-0.006	-0.037	-0.033	-0.047	-0.012	-0.006	-0.006	-0.006	-0.012	0.001	-0.033	-0.006	-0.01	0.008	-0.02	-0.033	-0.033	-0.006	-0.006	-0.015	-0.022	-0.006	-0.028	-0.02	-0.006
2014	0.027	0.027	0.027	0.027	0.027	0.027	0.024	0.033	0.022	0.022	0.022	0.027	0.034	0.027	0.053	0.057	0.053	0.055	0.027	0.011	0.019	0.006	0.05	0.022	0.053	0.027	0.027	0.03	0.053	0.02	0.005	0.024	0.027	0.027	0.042	0.059	0.053	0.027	0.015	0.031	0.022	0.053	0.053	0.027	0.027	0.019	0.01	0.027	0.04	0.022	0.027
2013	0.181	0.181	0.181	0.181	0.181	0.181	0.181	0.178	0.193	0.191	0.191	0.181	0.175	0.181	0.164	0.153	0.164	0.183	0.181	0.177	0.195	0.2	0.172	0.181	0.164	0.181	0.181	0.197	0.164	0.207	0.188	0.178	0.181	0.181	0.177	0.154	0.164	0.181	0.168	0.176	0.191	0.164	0.164	0.181	0.181	0.187	0.191	0.181	0.166	0.191	0.181
2012	0.185	0.185	0.185	0.185	0.185	0.185	0.199	0.161	0.18	0.184	0.184	0.185	0.224	0.185	0.205	0.205	0.205	0.204	0.185	0.187	0.183	0.14	0.212	0.225	0.205	0.185	0.185	0.18	0.205	0.225	0.203	0.169	0.185	0.185	0.178	0.198	0.205	0.185	0.194	0.202	0.184	0.205	0.205	0.185	0.185	0.186	0.19	0.185	0.214	0.184	0.185
2011	0.074	0.074	0.074	0.074	0.074	0.074	0.067	0.085	0.03	0.021	0.021	0.074	0.094	0.074	0.097	0.14	0.097	0.118	0.074	0.14	0.02	0.09	0.086	0.051	0.097	0.074	0.074	0.015	0.097	0.102	0.023	0.113	0.074	0.074	0.062	0.154	0.097	0.074	0.046	0.072	0.021	0.097	0.097	0.074	0.074	0.024	-0.059	0.074	0.073	0.021	0.074
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 6, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 21, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: ocaf ocaf_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ocaf
    ADD CONSTRAINT ocaf_pkey PRIMARY KEY (year, state);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--


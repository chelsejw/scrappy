--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1
-- Dumped by pg_dump version 12.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: django_user
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO django_user;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: django_user
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO django_user;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_user
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: django_user
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO django_user;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: django_user
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO django_user;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_user
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: django_user
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO django_user;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: django_user
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO django_user;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_user
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: django_user
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


ALTER TABLE public.auth_user OWNER TO django_user;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: django_user
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO django_user;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: django_user
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO django_user;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_user
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: django_user
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO django_user;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_user
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: django_user
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO django_user;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: django_user
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO django_user;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_user
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: django_user
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


ALTER TABLE public.django_admin_log OWNER TO django_user;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: django_user
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO django_user;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_user
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: django_user
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO django_user;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: django_user
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO django_user;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_user
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: django_user
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO django_user;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: django_user
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO django_user;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_user
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: django_user
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO django_user;

--
-- Name: scraping_job; Type: TABLE; Schema: public; Owner: django_user
--

CREATE TABLE public.scraping_job (
    id integer NOT NULL,
    title character varying(150) NOT NULL,
    company character varying(100),
    link character varying(1000) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);


ALTER TABLE public.scraping_job OWNER TO django_user;

--
-- Name: scraping_job_id_seq; Type: SEQUENCE; Schema: public; Owner: django_user
--

CREATE SEQUENCE public.scraping_job_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.scraping_job_id_seq OWNER TO django_user;

--
-- Name: scraping_job_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_user
--

ALTER SEQUENCE public.scraping_job_id_seq OWNED BY public.scraping_job.id;


--
-- Name: scraping_job_stack; Type: TABLE; Schema: public; Owner: django_user
--

CREATE TABLE public.scraping_job_stack (
    id integer NOT NULL,
    job_id integer NOT NULL,
    tech_id integer NOT NULL
);


ALTER TABLE public.scraping_job_stack OWNER TO django_user;

--
-- Name: scraping_job_stack_id_seq; Type: SEQUENCE; Schema: public; Owner: django_user
--

CREATE SEQUENCE public.scraping_job_stack_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.scraping_job_stack_id_seq OWNER TO django_user;

--
-- Name: scraping_job_stack_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_user
--

ALTER SEQUENCE public.scraping_job_stack_id_seq OWNED BY public.scraping_job_stack.id;


--
-- Name: scraping_tech; Type: TABLE; Schema: public; Owner: django_user
--

CREATE TABLE public.scraping_tech (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    created_at timestamp with time zone NOT NULL
);


ALTER TABLE public.scraping_tech OWNER TO django_user;

--
-- Name: scraping_tech_id_seq; Type: SEQUENCE; Schema: public; Owner: django_user
--

CREATE SEQUENCE public.scraping_tech_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.scraping_tech_id_seq OWNER TO django_user;

--
-- Name: scraping_tech_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_user
--

ALTER SEQUENCE public.scraping_tech_id_seq OWNED BY public.scraping_tech.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: scraping_job id; Type: DEFAULT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.scraping_job ALTER COLUMN id SET DEFAULT nextval('public.scraping_job_id_seq'::regclass);


--
-- Name: scraping_job_stack id; Type: DEFAULT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.scraping_job_stack ALTER COLUMN id SET DEFAULT nextval('public.scraping_job_stack_id_seq'::regclass);


--
-- Name: scraping_tech id; Type: DEFAULT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.scraping_tech ALTER COLUMN id SET DEFAULT nextval('public.scraping_tech_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: django_user
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: django_user
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: django_user
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
25	Can add tech	7	add_tech
26	Can change tech	7	change_tech
27	Can delete tech	7	delete_tech
28	Can view tech	7	view_tech
29	Can add job	8	add_job
30	Can change job	8	change_job
31	Can delete job	8	delete_job
32	Can view job	8	view_job
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: django_user
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$216000$e2v60qr01p55$/7uzomnQJgwa9orFhlcWyw03HGF/CpncchVLPieJIz4=	2020-08-22 23:59:54.931917+08	t	admin			chelsejw@gmail.com	t	t	2020-08-22 23:59:35.631036+08
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: django_user
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: django_user
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: django_user
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2020-08-23 11:19:33.96583+08	1	Java	1	[{"added": {}}]	7	1
2	2020-08-23 11:19:36.169441+08	2	C++	1	[{"added": {}}]	7	1
3	2020-08-23 11:19:38.268569+08	3	C+	1	[{"added": {}}]	7	1
4	2020-08-23 11:19:41.005557+08	4	C	1	[{"added": {}}]	7	1
5	2020-08-23 11:19:44.716627+08	5	JavaScript	1	[{"added": {}}]	7	1
6	2020-08-23 11:21:27.829944+08	6	Golang	1	[{"added": {}}]	7	1
7	2020-08-23 11:21:40.741939+08	7	React	1	[{"added": {}}]	7	1
8	2020-08-23 11:21:40.801241+08	8	React	1	[{"added": {}}]	7	1
9	2020-08-23 11:21:44.035162+08	9	Vue	1	[{"added": {}}]	7	1
10	2020-08-23 11:21:49.997853+08	7	React	3		7	1
11	2020-08-23 11:21:55.134673+08	10	Bootstrap	1	[{"added": {}}]	7	1
12	2020-08-23 11:22:09.0712+08	11	Python	1	[{"added": {}}]	7	1
13	2020-08-23 11:22:11.744333+08	12	Ruby	1	[{"added": {}}]	7	1
14	2020-08-23 11:22:13.749505+08	13	Rails	1	[{"added": {}}]	7	1
15	2020-08-23 11:22:15.865523+08	14	Node	1	[{"added": {}}]	7	1
16	2020-08-23 11:22:42.392792+08	15	Django	1	[{"added": {}}]	7	1
17	2020-08-23 11:23:47.261395+08	3	C#	2	[{"changed": {"fields": ["Name"]}}]	7	1
18	2020-08-23 12:47:45.244664+08	4	Job object (4)	3		8	1
19	2020-08-23 12:47:45.249327+08	21	Job object (21)	3		8	1
20	2020-08-23 12:47:45.251182+08	2	Job object (2)	3		8	1
21	2020-08-23 12:47:45.252518+08	12	Job object (12)	3		8	1
22	2020-08-23 12:47:45.253461+08	13	Job object (13)	3		8	1
23	2020-08-23 12:47:45.254404+08	6	Job object (6)	3		8	1
24	2020-08-23 12:47:45.256959+08	5	Job object (5)	3		8	1
25	2020-08-23 12:47:45.258451+08	18	Job object (18)	3		8	1
26	2020-08-23 12:47:45.259815+08	20	Job object (20)	3		8	1
27	2020-08-23 12:47:45.260765+08	1	Job object (1)	3		8	1
28	2020-08-23 12:47:45.261695+08	8	Job object (8)	3		8	1
29	2020-08-23 12:47:45.262581+08	11	Job object (11)	3		8	1
30	2020-08-23 12:47:45.263432+08	7	Job object (7)	3		8	1
31	2020-08-23 12:47:45.264232+08	19	Job object (19)	3		8	1
32	2020-08-23 12:47:45.265078+08	9	Job object (9)	3		8	1
33	2020-08-23 12:47:45.265953+08	22	Job object (22)	3		8	1
34	2020-08-23 12:47:45.266853+08	10	Job object (10)	3		8	1
35	2020-08-23 12:47:45.267841+08	17	Job object (17)	3		8	1
36	2020-08-23 12:47:45.268784+08	14	Job object (14)	3		8	1
37	2020-08-23 12:47:45.269586+08	3	Job object (3)	3		8	1
38	2020-08-23 12:47:45.27045+08	15	Job object (15)	3		8	1
39	2020-08-23 12:47:45.271299+08	16	Job object (16)	3		8	1
40	2020-08-23 12:47:45.2721+08	23	Job object (23)	3		8	1
41	2020-08-24 21:14:21.579734+08	24	Job object (24)	1	[{"added": {}}]	8	1
42	2020-08-28 21:45:01.67078+08	16	Python	1	[{"added": {}}]	7	1
43	2020-08-28 21:45:05.278488+08	17	Golang	1	[{"added": {}}]	7	1
44	2020-08-28 21:45:08.397291+08	18	Ruby	1	[{"added": {}}]	7	1
45	2020-08-28 21:45:13.955413+08	19	JavaScript	1	[{"added": {}}]	7	1
46	2020-08-28 21:45:18.648465+08	20	React	1	[{"added": {}}]	7	1
47	2020-08-28 21:45:21.80008+08	21	Java	1	[{"added": {}}]	7	1
48	2020-08-28 21:45:24.696598+08	22	Angular	1	[{"added": {}}]	7	1
49	2020-08-28 21:45:27.912028+08	23	C	1	[{"added": {}}]	7	1
50	2020-08-28 21:45:30.29264+08	24	C#	1	[{"added": {}}]	7	1
51	2020-08-28 21:45:33.163608+08	25	C++	1	[{"added": {}}]	7	1
52	2020-08-28 21:45:36.499362+08	26	Vue	1	[{"added": {}}]	7	1
53	2020-08-28 21:45:39.73814+08	27	SQL	1	[{"added": {}}]	7	1
54	2020-08-28 21:45:44.073683+08	28	GraphQL	1	[{"added": {}}]	7	1
55	2020-08-28 21:45:47.334044+08	29	Mongo	1	[{"added": {}}]	7	1
56	2020-08-28 21:45:50.490362+08	30	Ruby	1	[{"added": {}}]	7	1
57	2020-08-28 21:45:58.003855+08	31	Rails	1	[{"added": {}}]	7	1
58	2020-08-28 21:46:02.164474+08	32	Bootstrap	1	[{"added": {}}]	7	1
59	2020-08-28 21:46:07.511422+08	33	Django	1	[{"added": {}}]	7	1
60	2020-08-28 21:46:07.61285+08	34	Django	1	[{"added": {}}]	7	1
61	2020-08-28 21:46:11.538351+08	35	Node	1	[{"added": {}}]	7	1
62	2020-08-28 21:46:14.350844+08	36	Firebase	1	[{"added": {}}]	7	1
63	2020-08-28 21:46:16.29899+08	36	Firebase	2	[]	7	1
64	2020-08-28 21:46:47.651978+08	32	Bootstrap	3		7	1
65	2020-08-28 21:46:47.655849+08	4	C	3		7	1
66	2020-08-28 21:46:47.65748+08	3	C#	3		7	1
67	2020-08-28 21:46:47.659835+08	25	C++	3		7	1
68	2020-08-28 21:46:47.660854+08	34	Django	3		7	1
69	2020-08-28 21:46:47.661732+08	15	Django	3		7	1
70	2020-08-28 21:46:47.662722+08	17	Golang	3		7	1
71	2020-08-28 21:46:47.663537+08	1	Java	3		7	1
72	2020-08-28 21:46:47.664687+08	5	JavaScript	3		7	1
73	2020-08-28 21:46:47.666987+08	14	Node	3		7	1
74	2020-08-28 21:46:47.667914+08	11	Python	3		7	1
75	2020-08-28 21:46:47.668754+08	13	Rails	3		7	1
76	2020-08-28 21:46:47.670951+08	8	React	3		7	1
77	2020-08-28 21:46:47.672059+08	18	Ruby	3		7	1
78	2020-08-28 21:46:47.673928+08	12	Ruby	3		7	1
79	2020-08-28 21:46:47.676295+08	26	Vue	3		7	1
80	2020-08-28 21:47:02.875384+08	24	Job object (24)	3		8	1
81	2020-08-30 12:11:32.973532+08	37	AWS	1	[{"added": {}}]	7	1
82	2020-08-30 12:11:36.384871+08	38	Android	1	[{"added": {}}]	7	1
83	2020-08-30 12:11:36.496233+08	39	Android	1	[{"added": {}}]	7	1
84	2020-08-30 12:11:42.291008+08	40	Apache	1	[{"added": {}}]	7	1
85	2020-08-30 12:11:47.624699+08	41	Babel	1	[{"added": {}}]	7	1
86	2020-08-30 12:11:56.700372+08	42	Behance	1	[{"added": {}}]	7	1
87	2020-08-30 12:12:00.969121+08	43	Bower	1	[{"added": {}}]	7	1
88	2020-08-30 12:12:05.135481+08	44	CakePHP	1	[{"added": {}}]	7	1
89	2020-08-30 12:12:08.360993+08	45	Ceylon	1	[{"added": {}}]	7	1
90	2020-08-30 12:12:26.068796+08	46	CoffeeScript	1	[{"added": {}}]	7	1
91	2020-08-30 12:12:34.702199+08	47	Cucumber	1	[{"added": {}}]	7	1
92	2020-08-30 12:12:52.698699+08	48	D3.js	1	[{"added": {}}]	7	1
93	2020-08-30 12:12:57.054537+08	49	Debian	1	[{"added": {}}]	7	1
94	2020-08-30 12:13:03.146459+08	50	Docker	1	[{"added": {}}]	7	1
95	2020-08-30 12:13:06.508411+08	51	.NET	1	[{"added": {}}]	7	1
96	2020-08-30 12:13:15.354778+08	52	Express	1	[{"added": {}}]	7	1
97	2020-08-30 12:13:37.998594+08	53	HTML5	1	[{"added": {}}]	7	1
98	2020-08-30 12:13:51.790301+08	54	jQuery	1	[{"added": {}}]	7	1
99	2020-08-30 12:13:57.372098+08	55	Laravel	1	[{"added": {}}]	7	1
100	2020-08-30 12:14:04.142376+08	56	Mocha	1	[{"added": {}}]	7	1
101	2020-08-30 12:14:09.22483+08	57	MySQL	1	[{"added": {}}]	7	1
102	2020-08-30 12:14:11.962911+08	58	NoSQL	1	[{"added": {}}]	7	1
103	2020-08-30 12:14:30.987354+08	59	Nginx	1	[{"added": {}}]	7	1
104	2020-08-30 12:14:40.120371+08	60	Oracle	1	[{"added": {}}]	7	1
105	2020-08-30 12:14:42.820069+08	61	PHP	1	[{"added": {}}]	7	1
106	2020-08-30 12:14:50.020997+08	62	PostgreSQL	1	[{"added": {}}]	7	1
107	2020-08-30 12:14:58.806014+08	63	Redis	1	[{"added": {}}]	7	1
108	2020-08-30 12:15:03.473959+08	64	Redux	1	[{"added": {}}]	7	1
109	2020-08-30 12:15:06.459122+08	65	Rust	1	[{"added": {}}]	7	1
110	2020-08-30 12:15:11.409012+08	66	Sass	1	[{"added": {}}]	7	1
111	2020-08-30 12:15:13.756675+08	67	Scala	1	[{"added": {}}]	7	1
112	2020-08-30 12:15:22.847397+08	68	Swift	1	[{"added": {}}]	7	1
113	2020-08-30 12:15:25.621018+08	69	Flutter	1	[{"added": {}}]	7	1
114	2020-08-30 12:15:30.624102+08	70	TypeScript	1	[{"added": {}}]	7	1
115	2020-08-30 12:15:36.597873+08	71	Vagrant	1	[{"added": {}}]	7	1
116	2020-08-30 12:15:40.369511+08	72	Ubuntu	1	[{"added": {}}]	7	1
117	2020-08-30 12:15:44.689087+08	73	Linux	1	[{"added": {}}]	7	1
118	2020-08-30 12:15:47.521772+08	74	Webpack	1	[{"added": {}}]	7	1
119	2020-08-30 12:15:49.840781+08	75	Wordpress	1	[{"added": {}}]	7	1
120	2020-08-30 12:15:53.365939+08	76	Yarn	1	[{"added": {}}]	7	1
121	2020-08-30 12:16:26.340193+08	38	Android	3		7	1
122	2020-08-30 12:16:33.95996+08	53	HTML	2	[{"changed": {"fields": ["Name"]}}]	7	1
123	2020-08-30 13:33:12.255209+08	1088	Job object (1088)	3		8	1
124	2020-08-30 13:33:12.261053+08	1087	Job object (1087)	3		8	1
125	2020-08-30 13:33:12.264466+08	1086	Job object (1086)	3		8	1
126	2020-08-30 13:33:12.265614+08	1085	Job object (1085)	3		8	1
127	2020-08-30 13:33:12.266592+08	1084	Job object (1084)	3		8	1
128	2020-08-30 13:33:12.267536+08	1083	Job object (1083)	3		8	1
129	2020-08-30 13:33:12.268482+08	1082	Job object (1082)	3		8	1
130	2020-08-30 13:33:12.269317+08	1081	Job object (1081)	3		8	1
131	2020-08-30 13:33:12.270107+08	1080	Job object (1080)	3		8	1
132	2020-08-30 13:33:12.270896+08	1079	Job object (1079)	3		8	1
133	2020-08-30 13:33:12.271696+08	1078	Job object (1078)	3		8	1
134	2020-08-30 13:33:12.272582+08	1077	Job object (1077)	3		8	1
135	2020-08-30 13:33:12.273364+08	1076	Job object (1076)	3		8	1
136	2020-08-30 13:33:12.274183+08	1075	Job object (1075)	3		8	1
137	2020-08-30 13:33:12.27503+08	1074	Job object (1074)	3		8	1
138	2020-08-30 13:33:12.275839+08	1073	Job object (1073)	3		8	1
139	2020-08-30 13:33:12.27666+08	1072	Job object (1072)	3		8	1
140	2020-08-30 13:33:12.277819+08	1071	Job object (1071)	3		8	1
141	2020-08-30 13:33:12.279085+08	1070	Job object (1070)	3		8	1
142	2020-08-30 13:33:12.281282+08	1069	Job object (1069)	3		8	1
143	2020-08-30 13:33:12.282198+08	1068	Job object (1068)	3		8	1
144	2020-08-30 13:33:12.283015+08	1067	Job object (1067)	3		8	1
145	2020-08-30 13:33:12.283909+08	1066	Job object (1066)	3		8	1
146	2020-08-30 13:33:12.284746+08	1065	Job object (1065)	3		8	1
147	2020-08-30 13:33:12.285604+08	1064	Job object (1064)	3		8	1
148	2020-08-30 13:33:12.327681+08	1063	Job object (1063)	3		8	1
149	2020-08-30 13:33:12.329028+08	1062	Job object (1062)	3		8	1
150	2020-08-30 13:33:12.330014+08	1061	Job object (1061)	3		8	1
151	2020-08-30 13:33:12.330962+08	1060	Job object (1060)	3		8	1
152	2020-08-30 13:33:12.331871+08	1059	Job object (1059)	3		8	1
153	2020-08-30 13:33:12.332709+08	1058	Job object (1058)	3		8	1
154	2020-08-30 13:33:12.333486+08	1057	Job object (1057)	3		8	1
155	2020-08-30 13:33:12.334277+08	1056	Job object (1056)	3		8	1
156	2020-08-30 13:33:12.335129+08	1053	Job object (1053)	3		8	1
157	2020-08-30 13:33:12.335917+08	1052	Job object (1052)	3		8	1
158	2020-08-30 13:33:12.336709+08	1051	Job object (1051)	3		8	1
159	2020-08-30 13:33:12.337461+08	1050	Job object (1050)	3		8	1
160	2020-08-30 13:33:12.339776+08	1049	Job object (1049)	3		8	1
161	2020-08-30 13:33:12.340715+08	1048	Job object (1048)	3		8	1
162	2020-08-30 13:33:12.341493+08	1047	Job object (1047)	3		8	1
163	2020-08-30 13:33:12.342378+08	1046	Job object (1046)	3		8	1
164	2020-08-30 13:33:12.343217+08	1045	Job object (1045)	3		8	1
165	2020-08-30 13:33:12.346561+08	1044	Job object (1044)	3		8	1
166	2020-08-30 13:33:12.347657+08	1042	Job object (1042)	3		8	1
167	2020-08-30 13:33:12.348522+08	1041	Job object (1041)	3		8	1
168	2020-08-30 13:33:12.349385+08	1040	Job object (1040)	3		8	1
169	2020-08-30 13:33:12.350175+08	1039	Job object (1039)	3		8	1
170	2020-08-30 13:33:12.350966+08	1038	Job object (1038)	3		8	1
171	2020-08-30 13:33:12.351744+08	1037	Job object (1037)	3		8	1
172	2020-08-30 13:33:12.352556+08	1036	Job object (1036)	3		8	1
173	2020-08-30 13:33:12.353421+08	1035	Job object (1035)	3		8	1
174	2020-08-30 13:33:12.354233+08	1034	Job object (1034)	3		8	1
175	2020-08-30 13:33:12.355025+08	1033	Job object (1033)	3		8	1
176	2020-08-30 13:33:12.355825+08	1032	Job object (1032)	3		8	1
177	2020-08-30 13:33:12.356629+08	1031	Job object (1031)	3		8	1
178	2020-08-30 13:33:12.358409+08	1030	Job object (1030)	3		8	1
179	2020-08-30 13:33:12.359153+08	1029	Job object (1029)	3		8	1
180	2020-08-30 13:33:12.362361+08	1028	Job object (1028)	3		8	1
181	2020-08-30 13:33:12.363901+08	1027	Job object (1027)	3		8	1
182	2020-08-30 13:33:12.364785+08	999	Job object (999)	3		8	1
183	2020-08-30 13:33:12.365706+08	998	Job object (998)	3		8	1
184	2020-08-30 13:33:12.366486+08	988	Job object (988)	3		8	1
185	2020-08-30 13:33:12.367349+08	987	Job object (987)	3		8	1
186	2020-08-30 13:33:12.368148+08	985	Job object (985)	3		8	1
187	2020-08-30 13:33:12.368902+08	984	Job object (984)	3		8	1
188	2020-08-30 13:33:12.369644+08	983	Job object (983)	3		8	1
189	2020-08-30 13:33:12.370387+08	982	Job object (982)	3		8	1
190	2020-08-30 13:33:12.371137+08	981	Job object (981)	3		8	1
191	2020-08-30 13:33:12.371879+08	980	Job object (980)	3		8	1
192	2020-08-30 13:33:12.372616+08	979	Job object (979)	3		8	1
193	2020-08-30 13:33:12.373481+08	978	Job object (978)	3		8	1
194	2020-08-30 13:33:12.37454+08	977	Job object (977)	3		8	1
195	2020-08-30 13:33:12.375446+08	976	Job object (976)	3		8	1
196	2020-08-30 13:33:12.377859+08	975	Job object (975)	3		8	1
197	2020-08-30 13:33:12.379082+08	974	Job object (974)	3		8	1
198	2020-08-30 13:33:12.380115+08	973	Job object (973)	3		8	1
199	2020-08-30 13:33:12.380901+08	972	Job object (972)	3		8	1
200	2020-08-30 13:33:12.381655+08	971	Job object (971)	3		8	1
201	2020-08-30 13:33:12.382741+08	970	Job object (970)	3		8	1
202	2020-08-30 13:33:12.383466+08	969	Job object (969)	3		8	1
203	2020-08-30 13:33:12.384222+08	968	Job object (968)	3		8	1
204	2020-08-30 13:33:12.385036+08	967	Job object (967)	3		8	1
205	2020-08-30 13:33:12.385804+08	966	Job object (966)	3		8	1
206	2020-08-30 13:33:12.386522+08	965	Job object (965)	3		8	1
207	2020-08-30 13:33:12.387253+08	964	Job object (964)	3		8	1
208	2020-08-30 13:33:12.388002+08	963	Job object (963)	3		8	1
209	2020-08-30 13:33:12.388793+08	960	Job object (960)	3		8	1
210	2020-08-30 13:33:12.389626+08	959	Job object (959)	3		8	1
211	2020-08-30 13:33:12.390594+08	958	Job object (958)	3		8	1
212	2020-08-30 13:33:12.391467+08	957	Job object (957)	3		8	1
213	2020-08-30 13:33:12.392359+08	955	Job object (955)	3		8	1
214	2020-08-30 13:33:12.395905+08	954	Job object (954)	3		8	1
215	2020-08-30 13:33:12.39699+08	953	Job object (953)	3		8	1
216	2020-08-30 13:33:12.397765+08	952	Job object (952)	3		8	1
217	2020-08-30 13:33:12.39857+08	951	Job object (951)	3		8	1
218	2020-08-30 13:33:12.399383+08	950	Job object (950)	3		8	1
219	2020-08-30 13:33:12.400288+08	949	Job object (949)	3		8	1
220	2020-08-30 13:33:12.401099+08	948	Job object (948)	3		8	1
221	2020-08-30 13:33:12.401885+08	947	Job object (947)	3		8	1
222	2020-08-30 13:33:12.402684+08	946	Job object (946)	3		8	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: django_user
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	scraping	tech
8	scraping	job
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: django_user
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2020-08-22 23:59:06.110292+08
2	auth	0001_initial	2020-08-22 23:59:06.41488+08
3	admin	0001_initial	2020-08-22 23:59:06.566386+08
4	admin	0002_logentry_remove_auto_add	2020-08-22 23:59:06.581074+08
5	admin	0003_logentry_add_action_flag_choices	2020-08-22 23:59:06.590297+08
6	contenttypes	0002_remove_content_type_name	2020-08-22 23:59:06.613055+08
7	auth	0002_alter_permission_name_max_length	2020-08-22 23:59:06.627133+08
8	auth	0003_alter_user_email_max_length	2020-08-22 23:59:06.644231+08
9	auth	0004_alter_user_username_opts	2020-08-22 23:59:06.660397+08
10	auth	0005_alter_user_last_login_null	2020-08-22 23:59:06.676639+08
11	auth	0006_require_contenttypes_0002	2020-08-22 23:59:06.679315+08
12	auth	0007_alter_validators_add_error_messages	2020-08-22 23:59:06.694394+08
13	auth	0008_alter_user_username_max_length	2020-08-22 23:59:06.710172+08
14	auth	0009_alter_user_last_name_max_length	2020-08-22 23:59:06.724093+08
15	auth	0010_alter_group_name_max_length	2020-08-22 23:59:06.734325+08
16	auth	0011_update_proxy_permissions	2020-08-22 23:59:06.743841+08
17	auth	0012_alter_user_first_name_max_length	2020-08-22 23:59:06.757943+08
18	scraping	0001_initial	2020-08-22 23:59:06.789522+08
19	sessions	0001_initial	2020-08-22 23:59:06.848548+08
20	scraping	0002_auto_20200829_0539	2020-08-30 12:03:57.042932+08
21	scraping	0003_auto_20200829_0540	2020-08-30 12:03:57.068681+08
22	scraping	0004_auto_20200829_0555	2020-08-30 12:03:57.112053+08
23	scraping	0005_auto_20200830_0543	2020-08-30 13:43:42.923303+08
24	scraping	0006_auto_20200830_1442	2020-08-30 14:42:38.956082+08
25	scraping	0007_auto_20200830_2009	2020-08-30 20:10:03.520505+08
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: django_user
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
y0c7q56fq75ljq156lir91bfdhmfjrn9	.eJxVjMsOwiAQRf-FtSEgb5fu-w1kGBipGkhKuzL-uzbpQrf3nHNfLMK21riNssQ5swuT7PS7JcBHaTvId2i3zrG3dZkT3xV-0MGnnsvzerh_BxVG_dYq-YTBu5KQVHBeSwBwZIQqWQfIKEhI1DpZIjh745RFgeCMcEQyW_b-AAKbOJQ:1k9Vvu:AX3OOkU6Ifguqy17m8n-LPet8mWTeHUeDMpsDbDdeaY	2020-09-05 23:59:54.93375+08
\.


--
-- Data for Name: scraping_job; Type: TABLE DATA; Schema: public; Owner: django_user
--

COPY public.scraping_job (id, title, company, link, created_at, updated_at) FROM stdin;
1089	Software Engineer (C#)	Palazon Technology Pte Ltd	https://sg.indeed.com/company/Palazon-Technology-Pte-Ltd/jobs/Software-Engineer-eb8424f4f0f68ceb?fccid=59414d631df22e02&vjs=3	2020-08-30 13:39:03.427034+08	2020-08-30 13:39:03.427065+08
1090	Senior DeltaV Engineer	P'nnacle Pte Ltd	https://sg.indeed.com/pagead/clk?mo=r&ad=-6NYlbfkN0AbLEAfUJ_8-EnULjJ15l1k6LfB5RD9Ew3x4SlXgqMriw8oywaHohqK_bfr-pESj-iRkzN7cU_YlMAeQpc_COi4zQ8Gl0V6VPT32cj1EzsuGhGCYWig2JPcrxJS8us_nAs_TLUxA73bf5sH0-5-sjElvc_v80PFoOZS_GJo66quMy5ECq0aVij7KplQDvzXjH73DXxtkoeo1i4UCf1WPAOqtDJsMB7r9VTG9X09m3UPW3005EK0h9eGgL6gzFeIhQnADLt4KT1_c2noztoC4zwYwsyBXIMgsRWWroXEois3D46caVHc5OvzJYQjgT5Q1kiYxxS6PNAh0rohselGRQnuwBrKSZtU8vn0aiEGweoCcGYE5Te2qWcicHFyLBYR5Wq2kkE1t7O3KhfkJXHf47gQHZKmjqIeflB0vONTl8yyZcPyryVuL_cTV_RpzByNC30zJZN_Qn75TuP3ME_zt6atSqsBPb2nRNINNeY_HLYUy6Yx98CLRbKHzUHhAA7d0yZSWMdO6iqbQbhGR5jbChAHoL96RyAqY9R127yanxKzJvToloBc9uurubOrZLsUimw-p_tZCShFhdIsS4EQlto-3Ixd3FVJdA7pMnbz_cTDXfPtXk6vafEAvqWxFRbsqbbymb5JcYHHqUqSHnrYGPxGpnFtFOoKtFv906Ylsy75g8i0tsEOLklaExE7w876JOw=&p=1&fvj=0&vjs=3	2020-08-30 13:39:06.191874+08	2020-08-30 13:39:06.191896+08
1091	Specialist/Senior Specialist	HR Exchange Pte. Ltd. EA Licence No: 18C9353	https://sg.indeed.com/pagead/clk?mo=r&ad=-6NYlbfkN0AbLEAfUJ_8-EnULjJ15l1k6LfB5RD9Ew3x4SlXgqMriw8oywaHohqK_bfr-pESj-iRkzN7cU_YlLGuHJ6dr9C4q2kkp7ZwAKLsULjDcfDWV-aQ92PXE9hIzlzst6FwS8ANWplJXX5z2qbjKX5ocqFvKBtLnkHoapur807JsTIoRSztNhjzj9VhfIfXiRN-wCC26QjSINDMH_gDeXhprrH20eHTyTxOlcZ1H5Ig_2YOgaGkSq-4zpfEFsDhXewDnRpkK0CwDWg7eqa1OHky2fvG_odGwKDn16vZuaha-vVJs-8HwVlql7cLGvDc4KkxUYmwl38IoRgS5xt6R2uor0goy7BrtytALR_5CuSJcPH8fJkRriedj1miUIexYdSDhDMCeLqGPYZIbj92sftbtyClQOQHnR5nLpZKgMUyCXsWR9HUMhVbIcrY_wj-qd6SpiP5ANL92b1zDy0tPntCquf3YpSUMsZoGBflJFb5iJwyECv828V5q_kqsaXDnG8zIUVkZIuGtbbg0B7ZNEb6w9ZAPcgL1VyqTlH9gH4j9NfLa3E_w6_PJ1cmwF_wAMGFyjiW_scNdPy1OvEgIe-lveOmZvYAvr1QnsLuliCvzZwieqkAfadrZHoGUDvlUviD57OJmgBApTR__OevLRYvRvrhrstYQcoubOGUCvwFhQ8CQA==&p=2&fvj=0&vjs=3	2020-08-30 13:39:09.489702+08	2020-08-30 13:39:09.489728+08
1092	Software QA Engineer	John Clements Consultants Inc	https://sg.indeed.com/rc/clk?jk=88277b241fd81f2e&fccid=85ec3875001f1130&vjs=3	2020-08-30 13:39:11.440255+08	2020-08-30 13:39:11.440282+08
1093	Software Development Engineer in Test	Intellect Minds Pte Ltd	https://sg.indeed.com/rc/clk?jk=bb63e7b70530c6b7&fccid=a7be9f2e94ab1cbf&vjs=3	2020-08-30 13:39:13.909968+08	2020-08-30 13:39:13.90999+08
1094	Desktop Software Application Engineer	Sciente Consulting Pte. Ltd	https://sg.indeed.com/rc/clk?jk=c94def081af845af&fccid=a176617a4318c18e&vjs=3	2020-08-30 13:39:16.353117+08	2020-08-30 13:39:16.353148+08
1095	Senior Embedded Software Engineer	Sciente Consulting Pte. Ltd	https://sg.indeed.com/rc/clk?jk=e7c178244635f0bc&fccid=a176617a4318c18e&vjs=3	2020-08-30 13:39:19.651279+08	2020-08-30 13:39:19.651309+08
1096	Senior Software Engineer	Sciente Consulting Pte. Ltd	https://sg.indeed.com/rc/clk?jk=9d287a360c76c709&fccid=a176617a4318c18e&vjs=3	2020-08-30 13:39:21.711433+08	2020-08-30 13:39:21.711457+08
1097	Application Support Associate	Intellect Minds Pte Ltd	https://sg.indeed.com/rc/clk?jk=dbe06260a4fb0fde&fccid=a7be9f2e94ab1cbf&vjs=3	2020-08-30 13:39:25.193866+08	2020-08-30 13:39:25.193948+08
1098	#SGUNITEDJOBS STAFF SOFTWARE ENGINEER	EQUINIX ASIA PACIFIC PTE. LTD.	https://sg.indeed.com/rc/clk?jk=3b77800f4aa4225d&fccid=e15d9e27876d9dc3&vjs=3	2020-08-30 13:39:27.426069+08	2020-08-30 13:39:27.42609+08
1099	BSS Support Engineer	Tek Village Pte. Ltd.	https://sg.indeed.com/rc/clk?jk=46dd06ff595c1a14&fccid=a63df415fdfdf25c&vjs=3	2020-08-30 13:39:30.008563+08	2020-08-30 13:39:30.008586+08
1100	#SGUNITEDJOBS SENIOR SOFTWARE QA ENGINEER	ELIXIR TECHNOLOGY PTE LTD	https://sg.indeed.com/rc/clk?jk=b00be7b782bc985d&fccid=5b5edba92773a3e8&vjs=3	2020-08-30 13:39:32.19154+08	2020-08-30 13:39:32.191563+08
1101	#SGUNITEDJOBS SENIOR SOFTWARE ENGINEER	EQUINIX ASIA PACIFIC PTE. LTD.	https://sg.indeed.com/rc/clk?jk=730fddc44c8ef457&fccid=e15d9e27876d9dc3&vjs=3	2020-08-30 13:39:34.934914+08	2020-08-30 13:39:34.934937+08
1102	#SGUNITEDJOBS SENIOR SOFTWARE ENGINEER	ACEXCELLENT CONSULTING PTE. LTD.	https://sg.indeed.com/rc/clk?jk=c74250552265b8b6&fccid=7e873dd646c4f130&vjs=3	2020-08-30 13:39:38.449749+08	2020-08-30 13:39:38.44977+08
1103	C/C++ Developer	Sciente Consulting Pte. Ltd	https://sg.indeed.com/rc/clk?jk=95d5447274972a7e&fccid=a176617a4318c18e&vjs=3	2020-08-30 13:39:40.629396+08	2020-08-30 13:39:40.629452+08
1104	#SGUNITEDJOBS MNC SENIOR .NET DEVELOPER /PROJECT LEAD/SOFTWARE ENGINEER(.NET) X3PERMANENT	RECRUITFLASH PTE. LTD.	https://sg.indeed.com/rc/clk?jk=251301bc89c5370c&fccid=f74012740d21378a&vjs=3	2020-08-30 13:39:44.325711+08	2020-08-30 13:39:44.325735+08
1105	Frontend Developer	Volt	https://sg.indeed.com/rc/clk?jk=c67d7596901f9b48&fccid=86c0b4fa6c1398be&vjs=3	2020-08-30 13:39:47.135208+08	2020-08-30 13:39:47.135231+08
1106	#SGUNITEDJOBS MNC ASSISTANT ENGINEERS /PROJECT ENGINEER(DIPLOMA ELECTRICAL/COMPUTER ENG/ X2	RECRUITFLASH PTE. LTD.	https://sg.indeed.com/rc/clk?jk=94fe01268fe5f0a0&fccid=f74012740d21378a&vjs=3	2020-08-30 13:39:49.901057+08	2020-08-30 13:39:49.901078+08
1107	#SGUNITEDJOBS SOFTWARE TESTER (TYPESCRIPT)	COLLABERA TECHNOLOGIES PTE. LTD.	https://sg.indeed.com/rc/clk?jk=81a14e04adcbc93f&fccid=ccd32f626fb21bb9&vjs=3	2020-08-30 13:39:52.522665+08	2020-08-30 13:39:52.522691+08
1108	#SGUNITEDJOBS SOFTWARE TESTER (JAVA+API)	COLLABERA TECHNOLOGIES PTE. LTD.	https://sg.indeed.com/rc/clk?jk=b254f179886fa0f6&fccid=ccd32f626fb21bb9&vjs=3	2020-08-30 13:39:54.660599+08	2020-08-30 13:39:54.66062+08
1109	#SGUNITEDJOBS MNC SENIOR SOFTWARE ENGINEER / JAVA DEVELOPER/ PROJECT LEAD(X3 PERMANENT ROLE	RECRUITFLASH PTE. LTD.	https://sg.indeed.com/rc/clk?jk=01343bb5e5ee60e6&fccid=f74012740d21378a&vjs=3	2020-08-30 13:39:58.058759+08	2020-08-30 13:39:58.058781+08
1110	#SGUNITEDJOBS MNC JAVA SOFTWARE DEVELOPMENT LEAD/ JAVA DEVELOPER PROJECT LEAD X2	RECRUITFLASH PTE. LTD.	https://sg.indeed.com/rc/clk?jk=d640ebd0cd83018a&fccid=f74012740d21378a&vjs=3	2020-08-30 13:40:00.646007+08	2020-08-30 13:40:00.646028+08
1111	#SGUNITEDJOBS AUTOMATION TESTER (JAVA- SELENIUM)	COLLABERA TECHNOLOGIES PTE. LTD.	https://sg.indeed.com/rc/clk?jk=7d2c0703368675a0&fccid=ccd32f626fb21bb9&vjs=3	2020-08-30 13:40:03.037568+08	2020-08-30 13:40:03.037591+08
1112	Senior Engineer / Engineer, Applications Development	Defence Science and Technology Agency	https://sg.indeed.com/rc/clk?jk=a4ef83768d30a4dd&fccid=1d79a4290fb70d8e&vjs=3	2020-08-30 13:40:05.66125+08	2020-08-30 13:40:05.661276+08
1113	Software tester (Typescript)	COLLABERA TECHNOLOGIES PTE. LTD.	https://sg.indeed.com/rc/clk?jk=c8916518aa43c292&fccid=ccd32f626fb21bb9&vjs=3	2020-08-30 13:40:08.514988+08	2020-08-30 13:40:08.515009+08
1114	software tester (Java+API)	COLLABERA TECHNOLOGIES PTE. LTD.	https://sg.indeed.com/rc/clk?jk=53c8dc147a2d02b5&fccid=ccd32f626fb21bb9&vjs=3	2020-08-30 13:40:11.650651+08	2020-08-30 13:40:11.650675+08
1115	C/C++, Python Programmer #SGUnitedjobs	DIGITAL ROUNDABOUT PTE. LTD.	https://sg.indeed.com/rc/clk?jk=287b566dafd88f33&fccid=dcf78c9c52505303&vjs=3	2020-08-30 13:40:14.121809+08	2020-08-30 13:40:14.121854+08
1116	Automation tester (java- Selenium)	COLLABERA TECHNOLOGIES PTE. LTD.	https://sg.indeed.com/rc/clk?jk=1a7e79ec8c696210&fccid=ccd32f626fb21bb9&vjs=3	2020-08-30 13:40:16.044231+08	2020-08-30 13:40:16.04427+08
1117	CAD Engineer	HR Exchange Pte. Ltd. EA Licence No: 18C9353	https://sg.indeed.com/rc/clk?jk=098717897ea2b6bd&fccid=13ab5daaff9addab&vjs=3	2020-08-30 13:40:18.645754+08	2020-08-30 13:40:18.645774+08
1118	Senior Software QA Engineer	ELIXIR TECHNOLOGY PTE LTD	https://sg.indeed.com/rc/clk?jk=ced1c28b208b41a3&fccid=5b5edba92773a3e8&vjs=3	2020-08-30 13:40:21.527309+08	2020-08-30 13:40:21.527331+08
1119	Software Developer, Information Systems	Defence Science and Technology Agency	https://sg.indeed.com/rc/clk?jk=6669fa4836246e94&fccid=1d79a4290fb70d8e&vjs=3	2020-08-30 13:40:24.331169+08	2020-08-30 13:40:24.331218+08
1120	MNC Senior .Net Developer /Project Lead/Software Engineer(.Net) X3Permanent	RECRUITFLASH PTE. LTD.	https://sg.indeed.com/rc/clk?jk=fa75da655c0cd63f&fccid=f74012740d21378a&vjs=3	2020-08-30 13:40:27.425661+08	2020-08-30 13:40:27.425683+08
1121	#SGUnitedJobs #PublicService Surveyor (2 year contract)	JTC Corporation	https://sg.indeed.com/rc/clk?jk=bb37e1e801e49f64&fccid=041b73fb0168398f&vjs=3	2020-08-30 13:40:30.294035+08	2020-08-30 13:40:30.294057+08
1122	Senior Integration Engineer	ION IP Optical Networks	https://sg.indeed.com/rc/clk?jk=f9a4d6813524622b&fccid=4f8f9ba36e98f550&vjs=3	2020-08-30 13:40:32.424059+08	2020-08-30 13:40:32.42408+08
1123	Solution Architect - Packet Core	ION IP Optical Networks	https://sg.indeed.com/rc/clk?jk=6c8e5a6fb023d7b5&fccid=4f8f9ba36e98f550&vjs=3	2020-08-30 13:40:34.165539+08	2020-08-30 13:40:34.16556+08
1124	MNC Assistant Engineers /Project Engineer(Diploma Electrical/Computer Eng/ X2	RECRUITFLASH PTE. LTD.	https://sg.indeed.com/rc/clk?jk=e83cf66b6d33ac73&fccid=f74012740d21378a&vjs=3	2020-08-30 13:40:37.227755+08	2020-08-30 13:40:37.227782+08
1125	MNC Java Software Development Lead/ Java Developer Project Lead X2	RECRUITFLASH PTE. LTD.	https://sg.indeed.com/rc/clk?jk=db7d44e078cd6c03&fccid=f74012740d21378a&vjs=3	2020-08-30 13:40:40.695638+08	2020-08-30 13:40:40.695669+08
1126	IT Project Manager	Manpower	https://sg.indeed.com/rc/clk?jk=dc566a5d26f78ddb&fccid=1a17983a910f73d8&vjs=3	2020-08-30 13:40:42.85134+08	2020-08-30 13:40:42.851362+08
1127	MNC Senior Software Engineer / Java Developer/ Project Lead(X3 Permanent Role	RECRUITFLASH PTE. LTD.	https://sg.indeed.com/rc/clk?jk=9553e8550d92bfcf&fccid=f74012740d21378a&vjs=3	2020-08-30 13:40:45.90013+08	2020-08-30 13:40:45.900151+08
1128	Senior Quality Assurance Engineer	N/A	https://sg.indeed.com/pagead/clk?mo=r&ad=-6NYlbfkN0DWhcgmADz_twSLwem2iYl2ct_LZF9UYK3pCI3i-FPPng8CAAIKkOVVNfanjYFdIQ_GIyrUKQBNfTdvBMi022McDxY190uilCECQ5ikDngs5_6CnErfkQSn0THIkAw1NMo8IRv736ssyN6dXyeSNQywZP70IayJNIGL6G2jLKVadogg7AAt9igkxnD6hmPpnuPzYY3X8vzYPpyT559T-sS0JbiGijKdTDUpJ64LAffBs-JYrOK6nzXZjoi8iGe4zbSkps8rdkHpUJy-vH-cxpkrULO7uTNqYNXr7K50PRryS2x4UmG6fGFLHpykFT1fnE0flhSJkHe8V1iyM_BGSz2_rPheFTZciAztgQ-unfRAma4gi8QhTAVjwWNouFnq3VbVqGrA5lwV1mQuPoalRyhmFYKV3n8L7QB9yajMBLX1Dxupl0cvj9dnJ-Vn3xqkpUxeYiQGbHln2ZBOo_LKZDVwRyTf64jc9kEIAkRiK4pKDch8gL3S6L8qol7UQM1jDxp0RxCcBi2_5qCt_AVRcvUnTnrmT2Fjvaw72Ax1zFs5zXGTtUbB0d9Z48borJkCe_sdJAJJes1IFw==&p=11&fvj=0&vjs=3	2020-08-30 13:40:49.384134+08	2020-08-30 13:40:49.384156+08
1129	Software Engineer (PHP)	Talent Trader Group Pte Ltd	https://sg.indeed.com/pagead/clk?mo=r&ad=-6NYlbfkN0BBhZYZZ7bY_Q2-fWzXB8nQYCzWpr80zNz3fSsAHgtb9vabgVJZ27a7wT5esBRSfctdrPcnBO3kLHj42UJLZN_vtNCLaNQqbcLKiyf1ROuvzPdvsF8naaBQb8YeAGFHU2G1UDS4k57bhxnU-XIDdvqtS-KolMnh1T_0JnLhOhtjfPqvKM1fTlBllxuFJG3hROaQVko79agSnttCpW-nuQgBCp2Y94g6V6paRL1lJDeOi5QPG7t-Myx1FzkMeBbhctw0XTkBM1ysxdZs6vhSF1MyRFRvyfx4f7okbTRLgP5RUem4PqCqcgHIhaZ_QT1h_bq-C0ppGkWEV4KMKUFScgt7QF61ql-fsHZX4H2hSqLRfROSNZTB2gKk3bEVa19HTgGWYZykNoI8TI3N3g7go83iGyrlAR1SHP0mqyjKL9KeNENyHLSYHVmkWsCZh55DUpDJVcFRZVXkNAogFBXFMtBJluIptmu7ThrqiX7J6plM0PIMbVkI2M3UOrrL4U0mWGFfrZibv5RtQ0DTbDKcMAoSJgQRrsG_6L3YY8DzXj9lF1clGFX7Std4ctq6_o6sXBFBzYopiAUEfV_SFxvhP6mJI1JeSadsmyi4twnwLKzleAcLLttpp6A8XDdkR9LhwOiiDXD4MWAxXu9QOWmLDTJ-6nwPTLHTbAyRFghd3DpQyuNmKVc6Q3PHVE_g8yksXlA=&p=12&fvj=0&vjs=3	2020-08-30 13:40:52.772857+08	2020-08-30 13:40:52.772879+08
1130	Software Engineer	Kimberley Consulting Pte Ltd	https://sg.indeed.com/pagead/clk?mo=r&ad=-6NYlbfkN0BBhZYZZ7bY_Q2-fWzXB8nQYCzWpr80zNz3fSsAHgtb9vabgVJZ27a7wT5esBRSfctq4iVJapmNON3sVvuZ8l2hyUn2i9p8oM24FSruzYS-Fwqjdxm0taxQYS3KGK_xByuq_rpVG1JWZZFv_hqQFrDEwZ_rnWZuiv2B51GaG_ZhFDfxdtviRc1uekjOpIlkn2YewdBZE5H6e7IbRQGRY8S5SpUqOrEDFvHWtwTF_TIVj3CPVv1YVUa6uhnKBg41R8NdL7DqBJd0ksjad8YsK4IGz3OzfJc9rYTH8kVmjrcGRwaChbrQPfhpxzL0eP2g0vtiBYigrHHkDmAjNF8MtSDNJI5yT98fXHGY_ZsLSN6iYiSoJiLWv6sfM3cbo6yTuTRDJPWUXYxgW8Oox9AxZcFjWCmgHGD3RrIT6aNBmaA6DIb8kVOsFwPfiWwEeB43L7XlVoeZKTay-voGXpH0Eari7qE6jRECoco9-drObNstFBL-SFfYVRFT6KBvthhh-ODaqnjvOL3lW4GnA7roveYH_M7tMIHBn0EF5gUgKrmZgFwYAgazjA7yz1u4QMhTydv2CuJ7usu3e3T0t-koCYRCmrcoSQkB8g8DdtsJwpi9IyqA9bMnLBZnXzYUmlF1PWztieM8QERD-DYBARCuhiiHUOKcUW__5u_lZXbODc6t_ZmRTR5_K5uD&p=13&fvj=0&vjs=3	2020-08-30 13:40:55.814299+08	2020-08-30 13:40:55.814319+08
1131	Service Desk Engineer	Talent Trader Group Pte Ltd	https://sg.indeed.com/pagead/clk?mo=r&ad=-6NYlbfkN0BBhZYZZ7bY_Q2-fWzXB8nQYCzWpr80zNz3fSsAHgtb9vabgVJZ27a7wT5esBRSfcuzFB9ASz97eWlSYGfETG0tYkS9PsVs4ugUR8-_Zc_7TJVSqrjDo3yxsL6GZB42xYPmRF2DFOlYx-PkrAFsgV2zR_Fs0SVYS3DLqQiZ1dnpPyQXAqY_o_bpq54T4Lomw9EHZxH3sGdOIlsStEI8iz8vI9nb8MIwKhYustOHUIcm85tG98pVytxGoibal13H5tFNnin1sX6fnjuImyNhOPwiQnr2yWxD2mYhRhVElQKmRKpsmsyhjXK-YQoA6gaRkgT4npXcE5bZ8ym7cdtvsfgtd-XSqnPF7IO0aRNAcJLxaUVsq8K3YkwmhBVvxnEyTYyOCcjV4VgmgBUFZ4IXemew1wpNyEmtSVWqCWlXT6mCYA_ywfLsFB9wbqFUu0L4o-KkbmB6AYOOjxnoV9x1giDRkwf4tJCl6lpjHYTizSmuW_ubu_rN9OEnoENcyxBVBWr402UICPFHM0uSJrDw3T9g-QnIkckYGH6pIcfOGMKU7iXPmBSM8dQOw9v6UitOkZuxCN8XKQUIwN2rz_-HcVagup5lBFJv2-Z__eO577nDeudFNjywhPGgfJpexd1wenywbH8R7fuSs3xkkHvOCI1fH1ngBo03MpB4D8qaAKQiKSpaltazmBjIrGThwC7icaM=&p=14&fvj=0&vjs=3	2020-08-30 13:40:58.127829+08	2020-08-30 13:40:58.127851+08
1132	Service Desk Engineer	Talent Trader Group Pte Ltd	https://sg.indeed.com/pagead/clk?mo=r&ad=-6NYlbfkN0BBhZYZZ7bY_Q2-fWzXB8nQYCzWpr80zNz3fSsAHgtb9vabgVJZ27a7wT5esBRSfcuzFB9ASz97eWlSYGfETG0tYkS9PsVs4ugUR8-_Zc_7TJVSqrjDo3yxsL6GZB42xYPmRF2DFOlYx-PkrAFsgV2zR_Fs0SVYS3CdyKfw25yG8XT5oAG-a_0SGGJN4zqaWU__VYQBUrH8DyEY-uyE2bvHr1v1kFTXn-W0D2RtVvUwbtwfDw9eD8ASu5vJNCOWTqJNpWMpq7Yb0Tlmt1mOsUE8PLVdw6bXiue9cvHwLstFQllapyDYRNdZ-fAIhKmvixnsoUR1G3-7Za5XNEe_o0tojtXyyqV6pklt6--h9rcEhlstyX-VV0Fqje9pRsEDpWRrO1-cyIK_b_oys52y2ENSDzki4-OpwhU_oIpOqNj0gnu_-g_aeuCAnfmdKOnH8f5gUpu2R5d59qKI8khC0s54JqUGmjAV3trbFAFjcLDn2maXQziLFSlBmubwYbKnd-DjSpRMS7fGjv5X7zL3QCb8d1A1mJIvjrRwNy_SJtCocLMB_ATWVXYryBZhG6J93-ohSsrBrVzXnHBgVVib6ElFjmmDbnpY9BkIsjU2D-IXcA32fnS6S2Yrq-L1U2l-rsTmlv6PMf3NNJbDf9MvzNgFnVH5PiJjLAzfFEsL31i7QrAa5ypBiWbuwPRPHmIXD7E=&p=0&fvj=0&vjs=3	2020-08-30 13:41:01.640442+08	2020-08-30 13:41:01.640507+08
1133	Staff Software Engineer - MES	Illumina	https://sg.indeed.com/rc/clk?jk=7abd95aeab08a0e9&fccid=8524239b088a6649&vjs=3	2020-08-30 13:41:03.824444+08	2020-08-30 13:41:03.824476+08
1134	Desktop Support Engineer	Goldtech Resources Pte Ltd	https://sg.indeed.com/pagead/clk?mo=r&ad=-6NYlbfkN0AbLEAfUJ_8-EnULjJ15l1k6LfB5RD9Ew3x4SlXgqMriw8oywaHohqK_bfr-pESj-g7fj8AVz5ugO5ZaBWnICF7C7LT-bGRMx2dDvsQhyE2rMmgnNa_JaDZ6-xLdyQ3GJ2bgWJ6pz5mObyZ8MvrrpaTKlbVS6-Rxuj-O1Osia__6LrGMVrFDnTMI3CLQekXe_DbiFJBHvNJCby_NOwX_Z2kA-RDRr9rQK_CIuS5L8_2zpE4dIBWnAwRUnI1uPkBwhCEmsVLE-TuE8Lp62KU0Vtarly2SkaXXSeTVD4zQjvsfyCaik7TNiXg2xjpoaI0bgjpN-Ib21L38Bl-BEjDhpQp5X0EbT6LqcyMlvG7fwutLS4VRHE1K9Mk6sgOpD3Ebco0YXsh6B86jVcO3edTbGVo8bgZPECuebyBrYyS22FAvHXcKrpfAtUOqzC5UWbevAbf5g4UE2Mv875gLB0gZU6zqsMNg4xjlCGDzG9RyYDtlqNcwpD1V5ybTwKDAnUx5yjkGDq-bNa_bkOlBZrq5WUUHFK_7RXWms_sh3yaZf0hVb3GNAN_z1y2RApZdnx3j1I0NQ4PF6tSno-8MbtiUtn1YIyhQN9sF1FZmnIvMu83At2UppJkIBPDyKHs5adnwmc_zTnCDhyVuJhsV5j4YE1bLJ5n1qi9vw4=&p=2&fvj=0&vjs=3	2020-08-30 13:41:06.775746+08	2020-08-30 13:41:06.775768+08
1135	QA Software Engineer (Automation)	Golden Bridge Drive (SG) Pte. Ltd.	https://sg.indeed.com/company/GOLDEN-BRIDGE-DRIVE-(SG)-PTE.-LTD./jobs/QA-Software-Engineer-8441f72b765c60d4?fccid=6d0189e2cafcebfd&vjs=3	2020-08-30 13:41:09.697687+08	2020-08-30 13:41:09.697711+08
1136	Software Engineer (Python Developer)	Intellect Minds Pte Ltd	https://sg.indeed.com/rc/clk?jk=9b242906c69b476f&fccid=a7be9f2e94ab1cbf&vjs=3	2020-08-30 13:41:12.417304+08	2020-08-30 13:41:12.417324+08
1137	Software Engineer, Backend	GRABTAXI HOLDINGS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=987a91e83d234fd6&fccid=b79fa3ee18655a5a&vjs=3	2020-08-30 13:41:14.690186+08	2020-08-30 13:41:14.690208+08
1138	Software Engineer	CommonTown Pte Ltd	https://sg.indeed.com/pagead/clk?mo=r&ad=-6NYlbfkN0AbLEAfUJ_8-EnULjJ15l1k6LfB5RD9Ew3x4SlXgqMriw8oywaHohqK_bfr-pESj-g7fj8AVz5ugK7yyAkvi-902eG8BkBrKvUVvm0Ny2fSQsSBa6BdzDClgm76-BXRn-HhdCYgmQVcnM2Ovrws7mBt8pTn1p--MSRAqfJJu0R_Z0dquggU4ecxCqHXMSeYg5OZxqxW4mfp75WNqK2vzwqu6Nrx2cwQOI8YkzBxiX5sNoxwvKlt3JJ3jw885e4vH9zHCgObTjc_cGrNTAZsWERJHLzvcajDDb1SWj0RDgwWUbLdU5PyQsRFq3xH3uVz3DAtMhtglIMKGIdaKg5MVGFP8tapotzV-wBIW2TmGtsvDYuZ_JGftcq2G-_tNzb7gVKTgF6CeJksCROQieMv08h_dGTaWQvcUKY4Jn3Bjo4ksOpjbw6ngCata4W3wBqEVqPeH3IYfq7axDsIrjm1UvH10v4Dc5hJNavoK5UWtLmDvLQBkhX5cdtFpRgRhxX1LIb3pglyhJOYVdc5UFBo5kaTYL3TivBlohqgrw-kG5GOvWQFmGQga3c4Fcv9YmxNPfYP-QcKhKcCl_MDzj3Vzwz61Q_1oi8zXUIb4N-gKyeL2bynwhDH_LFdH7x0xM04NrlJxFvHcWjfX5Frb9cBdCxqOhhUT4WgOT0=&p=6&fvj=0&vjs=3	2020-08-30 13:41:18.793068+08	2020-08-30 13:41:18.793089+08
1139	IT & Software Engineer/Programmer	AUTOMATIC CONTROLS AND INSTRUMENTATION PTE. LTD.	https://sg.indeed.com/rc/clk?jk=bbb81688636799bd&fccid=b4df7860a195071b&vjs=3	2020-08-30 13:41:21.771823+08	2020-08-30 13:41:21.771846+08
1140	Software Engineer	AYP Group ayp-group.com	https://sg.indeed.com/rc/clk?jk=9a0f324ce0fcdcf6&fccid=fc281e3dfb97336f&vjs=3	2020-08-30 13:41:24.908355+08	2020-08-30 13:41:24.908376+08
1141	IT Support Engineer	ITCAN Pte Ltd	https://sg.indeed.com/company/ITCAN-Pte-Ltd/jobs/IT-Support-Engineer-e6cdc660c82eebc5?fccid=dac85444d99b91d5&vjs=3	2020-08-30 13:41:26.979854+08	2020-08-30 13:41:26.979895+08
1142	Software Engineer	ENSIGN INFOSECURITY (CYBERSECURITY) PTE. LTD.	https://sg.indeed.com/rc/clk?jk=9a425b22e234e2b9&fccid=bbe59da7f6884ea1&vjs=3	2020-08-30 13:41:30.814092+08	2020-08-30 13:41:30.814116+08
1143	#SGUnitedTraineeships - Software Engineer (6 months) #PublicService	Land Transport Authority	https://sg.indeed.com/rc/clk?jk=9925e5fd205f2ce2&fccid=30e974ba342f0747&vjs=3	2020-08-30 13:41:33.775762+08	2020-08-30 13:41:33.775794+08
1144	Software Test Engineer	SHELL INFOTECH PTE. LTD.	https://sg.indeed.com/rc/clk?jk=eea82619793e9637&fccid=4a8b984e999829af&vjs=3	2020-08-30 13:41:36.416146+08	2020-08-30 13:41:36.416172+08
1145	Software Engineer (Front-end)	COMBUILDER PTE LTD	https://sg.indeed.com/rc/clk?jk=989431626cb857f9&fccid=a9aeaa8aa41b7af0&vjs=3	2020-08-30 13:41:38.321289+08	2020-08-30 13:41:38.321313+08
1146	Desktop Support Engineer	ENNOVATEZ PTE. LTD.	https://sg.indeed.com/rc/clk?jk=827b13917e516d8c&fccid=4b21fabd76605d0d&vjs=3	2020-08-30 13:41:42.041052+08	2020-08-30 13:41:42.041075+08
1147	Full Stack Software Engineer	DIGIPEN INSTITUTE OF TECHNOLOGY SINGAPORE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=61a5b9504a7e4bf4&fccid=4d9fe4f34b5a9a67&vjs=3	2020-08-30 13:41:45.157443+08	2020-08-30 13:41:45.157466+08
1148	Customer Reliability Engineer	DUCO TECHNOLOGY PTE. LIMITED	https://sg.indeed.com/rc/clk?jk=672c14b53e87d91a&fccid=334ae0864f707505&vjs=3	2020-08-30 13:41:48.581776+08	2020-08-30 13:41:48.581798+08
1149	Operation Engineer	Ubisoft	https://sg.indeed.com/rc/clk?jk=4309a22b8aba9804&fccid=237908de095b6446&vjs=3	2020-08-30 13:41:50.074743+08	2020-08-30 13:41:50.074767+08
1150	Software Test Engineer	PRINTRONIX SCHWEIZ GMBH	https://sg.indeed.com/rc/clk?jk=6ab6ab495ed0b88d&fccid=eaa9b2db9596deb4&vjs=3	2020-08-30 13:41:53.12506+08	2020-08-30 13:41:53.125083+08
1151	QA Engineer (Automation)	Intellect Minds Pte Ltd	https://sg.indeed.com/rc/clk?jk=38f3009f2267abad&fccid=a7be9f2e94ab1cbf&vjs=3	2020-08-30 13:41:56.397493+08	2020-08-30 13:41:56.397514+08
1152	Consultant-System Administrator	Infogain	https://sg.indeed.com/rc/clk?jk=07a8b2b393ed95cd&fccid=3c566800dc2b9808&vjs=3	2020-08-30 13:41:59.033315+08	2020-08-30 13:41:59.03334+08
1153	Software Engineer	APAR TECHNOLOGIES PTE. LTD.	https://sg.indeed.com/rc/clk?jk=133fb7819b41b742&fccid=aad03c4fe1c15b8f&vjs=3	2020-08-30 13:42:02.101828+08	2020-08-30 13:42:02.101857+08
1154	Java Software Development Engineer	WORLDLINE IT AND PAYMENT SERVICES (SINGAPORE) PTE. LTD.	https://sg.indeed.com/rc/clk?jk=dfa07a711e0121bc&fccid=787415ecfab8dfa2&vjs=3	2020-08-30 13:42:04.350349+08	2020-08-30 13:42:04.35037+08
1155	Principal Software Engineer	GRABTAXI HOLDINGS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=ec5e0b5fca85ea78&fccid=b79fa3ee18655a5a&vjs=3	2020-08-30 13:42:09.863118+08	2020-08-30 13:42:09.863139+08
1156	Lead Software Engineer	GRABTAXI HOLDINGS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=b294e8d3bc70e9cc&fccid=b79fa3ee18655a5a&vjs=3	2020-08-30 13:42:12.480784+08	2020-08-30 13:42:12.480805+08
1157	Senior Firmware Engineer	ATT System	https://sg.indeed.com/rc/clk?jk=fef6807197ada28c&fccid=3c616b8847984748&vjs=3	2020-08-30 13:42:14.572632+08	2020-08-30 13:42:14.572656+08
1158	Application Engineer	ALLIED VISION TECHNOLOGIES ASIA PTE. LTD.	https://sg.indeed.com/rc/clk?jk=9e683e59162fc56f&fccid=53e59a7eb2c994ff&vjs=3	2020-08-30 13:42:18.281612+08	2020-08-30 13:42:18.281633+08
1159	Software Engineer	AVENSYS CONSULTING PTE. LTD.	https://sg.indeed.com/rc/clk?jk=e16421335f0c079f&fccid=cc2f28d5dc635dec&vjs=3	2020-08-30 13:42:23.175467+08	2020-08-30 13:42:23.175489+08
1160	Desktop Engineer L1/L2	Transcendent Business Services Pte Ltd	https://sg.indeed.com/rc/clk?jk=60436622cf2537c0&fccid=21b723c51ecdf6cc&vjs=3	2020-08-30 13:42:25.765464+08	2020-08-30 13:42:25.765485+08
1161	QA Engineer (Software/System Applications)	TOPPAN ECQUARIA PTE. LTD.	https://sg.indeed.com/rc/clk?jk=8224cda8de5c735e&fccid=fb8555c15a833b3f&vjs=3	2020-08-30 13:42:28.055859+08	2020-08-30 13:42:28.055881+08
1162	Embedded Software Engineer (C++/RS232)	Experis	https://sg.indeed.com/rc/clk?jk=ae639a6b070553b9&fccid=ca2b244e2a15ca5c&vjs=3	2020-08-30 13:42:31.195134+08	2020-08-30 13:42:31.195155+08
1163	Executive Engineer Reliability	SENOKO ENERGY PTE. LTD.	https://sg.indeed.com/rc/clk?jk=8f0068a08f8a7a41&fccid=532b6562971e7758&vjs=3	2020-08-30 13:42:34.189461+08	2020-08-30 13:42:34.189482+08
1164	Senior Software Engineer (Finance Industry)	LET'S TOK PTE. LTD.	https://sg.indeed.com/rc/clk?jk=e9caedd71e2a918b&fccid=f151d8f9bb938508&vjs=3	2020-08-30 13:42:38.14365+08	2020-08-30 13:42:38.143672+08
1165	IT Software Engineer (Fullstack)	UrbanFox Asia	https://sg.indeed.com/rc/clk?jk=2489c2ab38ac91a8&fccid=6ba07ec85e6dfc05&vjs=3	2020-08-30 13:42:40.789181+08	2020-08-30 13:42:40.789203+08
1166	Planning Engineer	KIM SENG HENG ENGINEERING CONSTRUCTION (PTE) LTD	https://sg.indeed.com/rc/clk?jk=f3cdd391ec7ee305&fccid=51cb4e11a43ff713&vjs=3	2020-08-30 13:42:44.837819+08	2020-08-30 13:42:44.837844+08
1167	Teamcenter Customization Engineer	ICUBE LOGICS (SG) PTE. LTD.	https://sg.indeed.com/rc/clk?jk=ba2b9a4cf9f8debc&fccid=2609b6c49267c2f2&vjs=3	2020-08-30 13:42:47.461126+08	2020-08-30 13:42:47.461147+08
1168	Senior Software Engineer, Mobile (iOS)	Grab Taxi	https://sg.indeed.com/rc/clk?jk=28345931d22f8f1b&fccid=b79fa3ee18655a5a&vjs=3	2020-08-30 13:42:50.470517+08	2020-08-30 13:42:50.470565+08
1169	#SGUNITEDJOBS SOFTWARE ENGINEER	QORNERSTONE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=105e85b1f229b8a2&fccid=811f8613577b7c35&vjs=3	2020-08-30 13:42:52.305768+08	2020-08-30 13:42:52.30579+08
1170	#SGUP Software Engineer (6-month)	Singapore Examinations and Assessment Board	https://sg.indeed.com/rc/clk?jk=16f63dc1263805d8&fccid=bd039abaed7d052b&vjs=3	2020-08-30 13:42:55.503409+08	2020-08-30 13:42:55.503434+08
1171	Research Engineer	Singapore Management University	https://sg.indeed.com/rc/clk?jk=aa2b81d75f453598&fccid=8d75ec8a1deb7651&vjs=3	2020-08-30 13:42:58.242357+08	2020-08-30 13:42:58.242381+08
1172	Embedded Software Engineer	DYSON OPERATIONS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=0a3876411c8818a0&fccid=366382f52796fce2&vjs=3	2020-08-30 13:43:00.633343+08	2020-08-30 13:43:00.633366+08
1173	Vmware System Engineer	MCITS TECHNOLOGIES PTE. LTD.	https://sg.indeed.com/rc/clk?jk=30726a66a383ee43&fccid=8b0fe8bce5af82ba&vjs=3	2020-08-30 13:43:03.418501+08	2020-08-30 13:43:03.418523+08
1174	#SGUNITEDJOBS COMPUTER VISION SOFTWARE ENGINEER	ACEXCELLENT CONSULTING PTE. LTD.	https://sg.indeed.com/rc/clk?jk=65e45d063bce92e3&fccid=7e873dd646c4f130&vjs=3	2020-08-30 13:43:05.098906+08	2020-08-30 13:43:05.098938+08
1175	Senior Software Engineer	GRABTAXI HOLDINGS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=ba7c82ed9540ff5f&fccid=b79fa3ee18655a5a&vjs=3	2020-08-30 13:43:08.140129+08	2020-08-30 13:43:08.140151+08
1176	Staff Technical Engineer - Embedded Motor Control	Infineon Technologies	https://sg.indeed.com/rc/clk?jk=c4a72d10a72afa3d&fccid=d29c5f56235af7ca&vjs=3	2020-08-30 13:43:11.289961+08	2020-08-30 13:43:11.28999+08
1177	Senior QA Automation Engineer	Circles.Life	https://sg.indeed.com/rc/clk?jk=3014b759eee384f1&fccid=20c116c00b6cc7c4&vjs=3	2020-08-30 13:43:13.84347+08	2020-08-30 13:43:13.843512+08
1178	IT support engineer	FRONTIER FORCE TECHNOLOGY PTE LTD	https://sg.indeed.com/rc/clk?jk=ef9d848bedada2c0&fccid=1b51ef90042960b4&vjs=3	2020-08-30 13:43:16.741062+08	2020-08-30 13:43:16.741085+08
1179	Assistant Engineer (Traffic Scheme Design Development)	Land Transport Authority	https://sg.indeed.com/rc/clk?jk=66018626ebdf4d09&fccid=30e974ba342f0747&vjs=3	2020-08-30 13:43:19.876269+08	2020-08-30 13:43:19.87629+08
1180	Architectural Project Engineer	FORTIS CONSTRUCTION PTE. LTD.	https://sg.indeed.com/rc/clk?jk=38c5eb91873fe95e&fccid=0c6b104c0bf822ea&vjs=3	2020-08-30 13:43:23.552608+08	2020-08-30 13:43:23.552631+08
1181	Test Engineer	MOTIONAL SINGAPORE PTE. LIMITED	https://sg.indeed.com/rc/clk?jk=bc29621327748a20&fccid=5a8cc38f6ed1d60a&vjs=3	2020-08-30 13:43:26.984442+08	2020-08-30 13:43:26.98448+08
1182	#SGUNITEDJOBS JUNIOR SOFTWARE ENGINEER	ASTO SYSTEMS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=c1156b77bfcd6c1b&fccid=9defece5c0c67318&vjs=3	2020-08-30 13:43:29.363125+08	2020-08-30 13:43:29.363156+08
1183	IT Technical Support Engineer (Woodlands)	IDEMIA	https://sg.indeed.com/rc/clk?jk=ff2df366fe0f9ffb&fccid=56d1ac791824f1a6&vjs=3	2020-08-30 13:43:31.234167+08	2020-08-30 13:43:31.234188+08
1184	Global Support Technician	STRUCTO PTE. LTD.	https://sg.indeed.com/rc/clk?jk=861f40778e5d840f&fccid=16a06ff880a947b2&vjs=3	2020-08-30 13:43:34.191222+08	2020-08-30 13:43:34.191244+08
1185	SOFTWARE ENGINEER FULL STACK (WITH FULL TIME OPPORTUNITY) #SGUNITEDJOBS #SGUP	HEALTHBEATS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=b261b88e14ffd446&fccid=cd366442154f7d4f&vjs=3	2020-08-30 13:43:36.446272+08	2020-08-30 13:43:36.446295+08
1186	Software Engineer #SGUnitedJobs	HELIUS TECHNOLOGIES PTE. LTD.	https://sg.indeed.com/rc/clk?jk=4d687b15d5e3f64c&fccid=b3282c125f18e0c0&vjs=3	2020-08-30 13:43:39.976196+08	2020-08-30 13:43:39.976218+08
1187	Staff Technician / Engineering Assistant - Product Support Group	RF360 SINGAPORE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=e85cb1424115dd21&fccid=095588e0a5765d6e&vjs=3	2020-08-30 13:43:43.190539+08	2020-08-30 13:43:43.190569+08
1188	python software engineer	Randstad	https://sg.indeed.com/rc/clk?jk=14f12dff50032c2a&fccid=f8b265243da9f9d7&vjs=3	2020-08-30 13:43:46.327184+08	2020-08-30 13:43:46.327214+08
1189	Software Engineer (Magnolia CMS, Java)	APAR TECHNOLOGIES PTE. LTD.	https://sg.indeed.com/rc/clk?jk=7c983039e42394c7&fccid=aad03c4fe1c15b8f&vjs=3	2020-08-30 13:43:49.294604+08	2020-08-30 13:43:49.294626+08
1190	Electrical PLC Engineer, Electrical Engineer	JL MARINE & ENGINEERING PTE. LTD.	https://sg.indeed.com/rc/clk?jk=c77fb013d11f4272&fccid=dbdc74a98ba5027e&vjs=3	2020-08-30 13:43:51.177719+08	2020-08-30 13:43:51.17774+08
1191	Senior/ Software Engineer	National University of Singapore	https://sg.indeed.com/rc/clk?jk=5be3ee111f05da1a&fccid=b4c06e8a712feddf&vjs=3	2020-08-30 13:43:54.633028+08	2020-08-30 13:43:54.633049+08
1192	Network Engineer	ENNOVATEZ PTE. LTD.	https://sg.indeed.com/rc/clk?jk=1a7f87e0d90aa41f&fccid=4b21fabd76605d0d&vjs=3	2020-08-30 13:43:57.173287+08	2020-08-30 13:43:57.173309+08
1193	Senior Software Developer	ROVISYS ASIA COMPANY PTE. LTD.	https://sg.indeed.com/rc/clk?jk=5cb09c2833eecfad&fccid=7fc14e8ceb230e7f&vjs=3	2020-08-30 13:43:59.051506+08	2020-08-30 13:43:59.05153+08
1194	#SGUNITEDJOBS SOFTWARE ENGINEER	ENSIGN INFOSECURITY (CYBERSECURITY) PTE. LTD.	https://sg.indeed.com/rc/clk?jk=2433a42ff2aa06f6&fccid=bbe59da7f6884ea1&vjs=3	2020-08-30 13:44:00.915782+08	2020-08-30 13:44:00.915803+08
1195	#SGUNITEDJOBS JAVA-SOFTWARE ENGINEER	APAR TECHNOLOGIES PTE. LTD.	https://sg.indeed.com/rc/clk?jk=b319f165f02ab4dd&fccid=aad03c4fe1c15b8f&vjs=3	2020-08-30 13:44:03.510699+08	2020-08-30 13:44:03.51072+08
1196	Research Assistant	SINGAPORE UNIVERSITY OF TECHNOLOGY AND DESIGN	https://sg.indeed.com/rc/clk?jk=897e3aafcd76bd87&fccid=dc8e60874a709c64&vjs=3	2020-08-30 13:44:06.568239+08	2020-08-30 13:44:06.568953+08
1197	Senior software engineer	VEBITS AI PTE. LIMITED	https://sg.indeed.com/rc/clk?jk=7e2fbfdbac190d7d&fccid=4a1a8d1e42e2c67e&vjs=3	2020-08-30 13:44:10.561577+08	2020-08-30 13:44:10.561598+08
1198	#SGUNITEDJOBS SOFTWARE ENGINEER, AUTOMATED EQUIPMENT	ACEXCELLENT CONSULTING PTE. LTD.	https://sg.indeed.com/rc/clk?jk=2708ac1a71e3acd1&fccid=7e873dd646c4f130&vjs=3	2020-08-30 13:44:13.532265+08	2020-08-30 13:44:13.532291+08
1199	Research Engineer/ Senior Research Engineer	HANALYTICS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=f5c681c8cf3d6596&fccid=f8b4b4cbb99b5498&vjs=3	2020-08-30 13:44:15.792665+08	2020-08-30 13:44:15.792685+08
1200	Software Engineer (Learning Opportunity, 5 Days Work Wk)	AYP Group	https://sg.indeed.com/company/AYP-Group/jobs/Software-Engineer-9489d84269063394?fccid=3cab087a16c2a832&vjs=3	2020-08-30 13:44:17.793179+08	2020-08-30 13:44:17.793211+08
1201	Software Application Engineer (C#)	Experis	https://sg.indeed.com/rc/clk?jk=f1b32259195d6d5c&fccid=ca2b244e2a15ca5c&vjs=3	2020-08-30 13:44:21.517383+08	2020-08-30 13:44:21.517407+08
1202	QA Engineer	MOTIONAL SINGAPORE PTE. LIMITED	https://sg.indeed.com/rc/clk?jk=7c034fc4362378b5&fccid=5a8cc38f6ed1d60a&vjs=3	2020-08-30 13:44:24.959611+08	2020-08-30 13:44:24.959632+08
1203	IT Business Analyst	GBCI Ventures Pte Ltd	https://sg.indeed.com/company/GBCI-Ventures/jobs/IT-Business-Analyst-07721553b01880b1?fccid=04e95814d8c4e088&vjs=3	2020-08-30 13:44:27.938185+08	2020-08-30 13:44:27.938215+08
1204	BSS Support Engineer	PCCW SOLUTIONS SINGAPORE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=c023365318525163&fccid=d1c475222457a48a&vjs=3	2020-08-30 13:44:30.427714+08	2020-08-30 13:44:30.427735+08
1205	DevOps Engineer	ANQLAVE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=07850b8fb8d9ce5c&fccid=b6e449315964f992&vjs=3	2020-08-30 13:44:32.85605+08	2020-08-30 13:44:32.856072+08
1206	Staff/Senior Software Engineer	People Profilers	https://sg.indeed.com/rc/clk?jk=bf12e294b8dd5407&fccid=a53274871a96e632&vjs=3	2020-08-30 13:44:34.438751+08	2020-08-30 13:44:34.438775+08
1207	Cloud Platforms Architecture Lead, APJ, OCTO Singapore,	VMware	https://sg.indeed.com/rc/clk?jk=a816af9ba2eafbf5&fccid=c762a27145bd166e&vjs=3	2020-08-30 13:44:36.823209+08	2020-08-30 13:44:36.823235+08
1208	Civil/Structural/Architectural (CSA) Site Supervisor	FORTIS CONSTRUCTION PTE. LTD.	https://sg.indeed.com/rc/clk?jk=876cfd2f231a2e8a&fccid=0c6b104c0bf822ea&vjs=3	2020-08-30 13:44:38.99961+08	2020-08-30 13:44:38.999635+08
1209	Software Developer	TEJASCO TECHSOFT PTE. LTD.	https://sg.indeed.com/rc/clk?jk=7e1f152b646e85e0&fccid=8f8dc8400423afcc&vjs=3	2020-08-30 13:44:41.78754+08	2020-08-30 13:44:41.787563+08
1210	Project Engineer #SGUnitedJobs	HANSIN SOLUTIONS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=25c7523fa8af7532&fccid=b215c3285cec3392&vjs=3	2020-08-30 13:44:45.908368+08	2020-08-30 13:44:45.908399+08
1211	Systems Engineer	HELIUS TECHNOLOGIES PTE. LTD.	https://sg.indeed.com/rc/clk?jk=2cac32326bd4c0c8&fccid=b3282c125f18e0c0&vjs=3	2020-08-30 13:44:48.162371+08	2020-08-30 13:44:48.162396+08
1212	#SGUNITEDJOBS #SGUP SOFTWARE ENGINEER (6-MONTH)	SINGAPORE EXAMINATIONS AND ASSESSMENT BOARD	https://sg.indeed.com/rc/clk?jk=0921d7d011fc3d8c&fccid=bd039abaed7d052b&vjs=3	2020-08-30 13:44:51.709079+08	2020-08-30 13:44:51.709099+08
1213	Developer / IoT Engineer	Manpower	https://sg.indeed.com/rc/clk?jk=58c2c3ead6f79b93&fccid=1a17983a910f73d8&vjs=3	2020-08-30 13:44:54.927988+08	2020-08-30 13:44:54.928008+08
1214	#SGUNITEDJOBS SOFTWARE ENGINEER (FRONT-END)	COMBUILDER PTE LTD	https://sg.indeed.com/rc/clk?jk=e5fa1b1f943bc640&fccid=a9aeaa8aa41b7af0&vjs=3	2020-08-30 13:44:57.327683+08	2020-08-30 13:44:57.327707+08
1215	Linux Software Engineer	Hays	https://sg.indeed.com/rc/clk?jk=5740a0d6427a8c69&fccid=31670bef3ae6497b&vjs=3	2020-08-30 13:44:59.242516+08	2020-08-30 13:44:59.242537+08
1216	Senior Software Development Engineer (Mobile Apps)	BRIDGETEK PTE. LTD.	https://sg.indeed.com/rc/clk?jk=cecc63832202d4be&fccid=1634511ad5c88d31&vjs=3	2020-08-30 13:45:01.807701+08	2020-08-30 13:45:01.807727+08
1217	#SGUNITEDJOBS SOFTWARE ENGINEER	AVENSYS CONSULTING PTE. LTD.	https://sg.indeed.com/rc/clk?jk=6111254a19684984&fccid=cc2f28d5dc635dec&vjs=3	2020-08-30 13:45:04.115738+08	2020-08-30 13:45:04.115759+08
1218	software engineer (c++)	Randstad	https://sg.indeed.com/rc/clk?jk=4687d814a89a5794&fccid=f8b265243da9f9d7&vjs=3	2020-08-30 13:45:06.722749+08	2020-08-30 13:45:06.72277+08
1219	Copier Hardware Engineer/Technician	Xenetix	https://sg.indeed.com/rc/clk?jk=516ec9beb59b1849&fccid=8650c17b65665f3a&vjs=3	2020-08-30 13:45:08.841422+08	2020-08-30 13:45:08.841449+08
1220	#SGUnitedJobs DevOps Engineer (ACE)	Government Technology Agency	https://sg.indeed.com/rc/clk?jk=89a98d2b541a44d8&fccid=3b9a5811a8b6410b&vjs=3	2020-08-30 13:45:11.301842+08	2020-08-30 13:45:11.301865+08
1221	Civil & Structural Engineer	Staffhub Group Pte Ltd	https://sg.indeed.com/company/Staffhub-Group-Pte-Ltd/jobs/Civil-Structural-Engineer-d93222b2dc004b1a?fccid=a1727a943353744d&vjs=3	2020-08-30 13:45:13.990681+08	2020-08-30 13:45:13.990701+08
1222	#SGUNITEDJOBS SENIOR SOFTWARE ENGINEER (FINANCE INDUSTRY)	LET'S TOK PTE. LTD.	https://sg.indeed.com/rc/clk?jk=8ced4f058ddeb4a9&fccid=f151d8f9bb938508&vjs=3	2020-08-30 13:45:16.372168+08	2020-08-30 13:45:16.37219+08
1223	Senior UX Designer	Ninja Van	https://sg.indeed.com/rc/clk?jk=097d822a61505811&fccid=723bf672358626e9&vjs=3	2020-08-30 13:45:18.854636+08	2020-08-30 13:45:18.854657+08
1224	Java-Software Engineer	APAR TECHNOLOGIES PTE. LTD.	https://sg.indeed.com/rc/clk?jk=241db622a99e6c71&fccid=aad03c4fe1c15b8f&vjs=3	2020-08-30 13:45:21.34057+08	2020-08-30 13:45:21.340601+08
1225	#SGUNITEDJOBS SOFTWARE TEST ENGINEER	SHELL INFOTECH PTE. LTD.	https://sg.indeed.com/rc/clk?jk=1ede62b660ba4997&fccid=4a8b984e999829af&vjs=3	2020-08-30 13:45:23.460063+08	2020-08-30 13:45:23.460083+08
1226	Data Engineer, Azure	Charterhouse Pte Ltd	https://sg.indeed.com/rc/clk?jk=ed410914fc8ff127&fccid=b83c25ae21a976ae&vjs=3	2020-08-30 13:45:26.683907+08	2020-08-30 13:45:26.683933+08
1227	software engineer (c ++ / c#)	Randstad	https://sg.indeed.com/rc/clk?jk=b4b7b4c41bf4cc6f&fccid=f8b265243da9f9d7&vjs=3	2020-08-30 13:45:29.861914+08	2020-08-30 13:45:29.861943+08
1228	Senior DevOps Engineer	ICHX TECH PTE. LTD.	https://sg.indeed.com/rc/clk?jk=fbda6a3fdcd7acbd&fccid=31b8bd4b3c9070ce&vjs=3	2020-08-30 13:45:33.050444+08	2020-08-30 13:45:33.050469+08
1229	Building Automation Engineer #SGUnitedJobs	CUNDALL SINGAPORE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=638ef605960775ee&fccid=dbc8478ad5509c14&vjs=3	2020-08-30 13:45:36.425148+08	2020-08-30 13:45:36.42518+08
1230	#SGUNITEDJOBS SOFTWARE ENGINEER (MAGNOLIA CMS, JAVA)	APAR TECHNOLOGIES PTE. LTD.	https://sg.indeed.com/rc/clk?jk=25536057e6a6905e&fccid=aad03c4fe1c15b8f&vjs=3	2020-08-30 13:45:38.956121+08	2020-08-30 13:45:38.956145+08
1231	#SGUNITEDJOBS EMBEDDED SOFTWARE ENGINEER	DYSON OPERATIONS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=376b42e24d4d5ce8&fccid=366382f52796fce2&vjs=3	2020-08-30 13:45:41.010168+08	2020-08-30 13:45:41.010196+08
1232	#SGUNITEDJOBS DESKTOP SUPPORT ENGINEER	ENNOVATEZ PTE. LTD.	https://sg.indeed.com/rc/clk?jk=2b3a434c73bfe9be&fccid=4b21fabd76605d0d&vjs=3	2020-08-30 13:45:42.853516+08	2020-08-30 13:45:42.853539+08
1233	Business Analyst	GBCI Ventures Pte Ltd	https://sg.indeed.com/company/GBCI-Ventures/jobs/Business-Analyst-5f3c8a482f46e038?fccid=04e95814d8c4e088&vjs=3	2020-08-30 13:45:45.547874+08	2020-08-30 13:45:45.547897+08
1234	#SGUNITEDJOBS JAVA SOFTWARE DEVELOPMENT ENGINEER	WORLDLINE IT AND PAYMENT SERVICES (SINGAPORE) PTE. LTD.	https://sg.indeed.com/rc/clk?jk=691ccdbe5b071670&fccid=787415ecfab8dfa2&vjs=3	2020-08-30 13:45:47.328619+08	2020-08-30 13:45:47.32865+08
1235	Linux System Engineer	ENNOVATEZ PTE. LTD.	https://sg.indeed.com/rc/clk?jk=f399ce08fd174dc3&fccid=4b21fabd76605d0d&vjs=3	2020-08-30 13:45:50.26207+08	2020-08-30 13:45:50.262101+08
1236	#SGUNITEDJOBS SOFTWARE ENGINEER	APAR TECHNOLOGIES PTE. LTD.	https://sg.indeed.com/rc/clk?jk=dea0999e889c8c59&fccid=aad03c4fe1c15b8f&vjs=3	2020-08-30 13:45:53.530111+08	2020-08-30 13:45:53.530148+08
1237	Cloud Developer / Engineer / Devops (AWS, GCP, Azure) – Public Cloud - Global Investment Bank, Singapore	BAH Partners	https://sg.indeed.com/pagead/clk?mo=r&ad=-6NYlbfkN0BBhZYZZ7bY_Q2-fWzXB8nQYCzWpr80zNz3fSsAHgtb9vabgVJZ27a7wT5esBRSfcsQjzrxNzthkKh27dVsRzEYlzHS_tYgQlzYhkTAVy3QA70J_zSx4pHkf8uNzgzH4X3rFmxq4aOZtspVtTLnFR6oMrWYHoDixQHk0jitFr9kdG3iAdduSsS6NQ8E-VFXh1kbh4HYbBHXoffjj4H2-urtHdtmJ30sNX_lnSqXwQZgFmENXJwVgw4dAoTVhn5dok7kdf8qibOMbKVmYTRPh5pSdL2PnzLXjx-n-eOVI2RjsRd_hD4GoI9hVSxyR9RTtN__G3XeEjyKT5SI69Q5yPB9Y9nTbD2wDbNYaQvPeLOnQVtgDMOgLTjenQIU-X9S_W58ZsA2d3-8intl78Ww8M0FgW-Bg_zij68mxD6RFirOzb04S8RDM3XG242bd5pjWXCPpouEMG1heRvDaIljuAuApG_AGdS4P48Jk1AJhWQmTUeJNLb7-t30mMbbE4eT11O0uYptr259HLI5jRD4EZtx1qbU306BdGSe34UihlGj7MhUIXGytsc_6AtNYp5DBF6rhzzUiwGj5vBpfaR3UV8gMhd8HTe8UMXUeI4XmpVtuqSRiF-k0PhT5P5XGoUYAgaK8QQHzQvtCIDD67rlEHquuNLD95spTIHaGe5vSru0JVyucQ-DTgl1lmzPG4h7B30F6Z0VSnv9W8bskv7tgOgaQUgd_9DovpMFTe6xt6a3pUxQ965Zw7zBBQ54vWw84RDrjIUMeNWCLaJ9SI54XqbccyOtSqybmcEQ75YNClVpfacQGuefbROh&p=0&fvj=0&vjs=3	2020-08-30 13:45:57.942711+08	2020-08-30 13:45:57.942741+08
1238	Senior Software Engineer (C#/Python/SECS/GEM)	Experis	https://sg.indeed.com/rc/clk?jk=bfa08ebe990914b2&fccid=ca2b244e2a15ca5c&vjs=3	2020-08-30 13:46:02.630161+08	2020-08-30 13:46:02.630181+08
1239	Technical Product Manager (China)	DOCTOR WORLD PTE. LTD.	https://sg.indeed.com/rc/clk?jk=b0aaaebd7c954b30&fccid=c79eecf82e4c9ac6&vjs=3	2020-08-30 13:46:04.597318+08	2020-08-30 13:46:04.597341+08
1240	#SGUNITEDJOBS SOFTWARE TEST ENGINEER	PRINTRONIX SCHWEIZ GMBH	https://sg.indeed.com/rc/clk?jk=6b160cf52edabfe2&fccid=eaa9b2db9596deb4&vjs=3	2020-08-30 13:46:06.934279+08	2020-08-30 13:46:06.934305+08
1241	DevOps Engineer	BANK OF SINGAPORE LIMITED	https://sg.indeed.com/rc/clk?jk=2d32aa8b6d4d0cb3&fccid=f53f057795eadec6&vjs=3	2020-08-30 13:46:09.761696+08	2020-08-30 13:46:09.761718+08
1242	IT Technical Support Engineer (Shift Work)	IDEMIA	https://sg.indeed.com/rc/clk?jk=a869b77f2a19086c&fccid=56d1ac791824f1a6&vjs=3	2020-08-30 13:46:11.813487+08	2020-08-30 13:46:11.813518+08
1243	Research Engineer (12-month contract), School of Information Systems	STAFFONDEMAND PTE. LTD.	https://sg.indeed.com/rc/clk?jk=cdc47edf2a6008d3&fccid=576bb8f56c826ae6&vjs=3	2020-08-30 13:46:15.224776+08	2020-08-30 13:46:15.224803+08
1244	#SGUnitedJobs #WSIP Engineer/Senior Engineer (Building Engineering Group, Policy & Regulations Department)	Building and Construction Authority	https://sg.indeed.com/rc/clk?jk=2025dead67234163&fccid=b86cc58fe503a776&vjs=3	2020-08-30 13:46:16.517056+08	2020-08-30 13:46:16.517082+08
1245	#SGUNITEDJOBS SOFTWARE DEVELOPER	TEJASCO TECHSOFT PTE. LTD.	https://sg.indeed.com/rc/clk?jk=b30b05bd853fee5b&fccid=8f8dc8400423afcc&vjs=3	2020-08-30 13:46:19.02358+08	2020-08-30 13:46:19.023611+08
1246	BIM Co-ordinator	WAH LOON ENGINEERING PTE. LTD.	https://sg.indeed.com/rc/clk?jk=a31e0b430fa8481d&fccid=d6ed184d13d6e622&vjs=3	2020-08-30 13:46:22.065218+08	2020-08-30 13:46:22.065266+08
1247	Software QA Engineer, SDET (API/Automation)	Randstad	https://sg.indeed.com/rc/clk?jk=0c5e29a561a0e6b4&fccid=f8b265243da9f9d7&vjs=3	2020-08-30 13:46:24.559359+08	2020-08-30 13:46:24.559381+08
1248	#SGUNITEDJOBS RESEARCH ENGINEER/ SENIOR RESEARCH ENGINEER	HANALYTICS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=3c224e13f2138592&fccid=f8b4b4cbb99b5498&vjs=3	2020-08-30 13:46:26.421476+08	2020-08-30 13:46:26.421497+08
1249	Quality Assurance Engineer #SGUnitedJobs	I-ACCESS SOLUTIONS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=39e9bc03a558098a&fccid=ab1d2ea7653f0cab&vjs=3	2020-08-30 13:46:29.50901+08	2020-08-30 13:46:29.509031+08
1250	IT - Middleware System Administrator	NTT DATA SINGAPORE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=8784f18a9e5e24fc&fccid=ac38a400acc8fe73&vjs=3	2020-08-30 13:46:32.522045+08	2020-08-30 13:46:32.52207+08
1251	AI Engineer	Experis	https://sg.indeed.com/rc/clk?jk=f7a0a8f07871ee30&fccid=ca2b244e2a15ca5c&vjs=3	2020-08-30 13:46:34.806217+08	2020-08-30 13:46:34.80624+08
1252	Software Engineer-API, Oracle, Java	APAR TECHNOLOGIES PTE. LTD.	https://sg.indeed.com/rc/clk?jk=2bc13e80c62d1cec&fccid=aad03c4fe1c15b8f&vjs=3	2020-08-30 13:46:36.903851+08	2020-08-30 13:46:36.903882+08
1253	backend software engineer	Randstad	https://sg.indeed.com/rc/clk?jk=17fa24e87e82e3c4&fccid=f8b265243da9f9d7&vjs=3	2020-08-30 13:46:41.410734+08	2020-08-30 13:46:41.410755+08
1254	BIM Modeller / Drafter	Ideals Recruitment Pte Ltd	https://sg.indeed.com/rc/clk?jk=85a2620c41cbbf46&fccid=1820f44f2f271fa5&vjs=3	2020-08-30 13:46:43.937304+08	2020-08-30 13:46:43.937327+08
1255	Assistant Engineer / Engineer ( Electrical / E&E )	Corestaff Pte Ltd	https://sg.indeed.com/company/Corestaff-Pte-Ltd/jobs/Assistant-Engineer-f164dd4f4b34ffbd?fccid=9d2768a60c4e2811&vjs=3	2020-08-30 13:46:46.336461+08	2020-08-30 13:46:46.336483+08
1256	Senior/Quality Assurance (QA) Engineer	People Profilers	https://sg.indeed.com/rc/clk?jk=d8ce293b3af44636&fccid=a53274871a96e632&vjs=3	2020-08-30 13:46:49.287076+08	2020-08-30 13:46:49.287106+08
1257	#SGUNITEDJOBS QA ENGINEER (SOFTWARE/SYSTEM APPLICATIONS)	TOPPAN ECQUARIA PTE. LTD.	https://sg.indeed.com/rc/clk?jk=01aef2bb0edc7925&fccid=fb8555c15a833b3f&vjs=3	2020-08-30 13:46:51.29158+08	2020-08-30 13:46:51.2916+08
1258	#SGUNITEDJOBS SOFTWARE ENGINEER-API, ORACLE, JAVA	APAR TECHNOLOGIES PTE. LTD.	https://sg.indeed.com/rc/clk?jk=d97073d565faccbb&fccid=aad03c4fe1c15b8f&vjs=3	2020-08-30 13:46:55.053378+08	2020-08-30 13:46:55.0534+08
1259	#SGUNITEDJOBS NETWORK ENGINEER	ENNOVATEZ PTE. LTD.	https://sg.indeed.com/rc/clk?jk=b2e58a0ea62ae0ad&fccid=4b21fabd76605d0d&vjs=3	2020-08-30 13:46:57.460152+08	2020-08-30 13:46:57.460173+08
1260	IT Engineer (Engineering Firm) 5 days - Immediate	HKM HR Management Pte Ltd	https://sg.indeed.com/company/HKM-HR-Management-Pte-Ltd./jobs/IT-Engineer-Days-2ed385b5223b446e?fccid=9690234474c51797&vjs=3	2020-08-30 13:46:59.765581+08	2020-08-30 13:46:59.765605+08
1261	#SGUNITEDJOBS ENGINEER	SAMSUNG SDS ASIA PACIFIC PTE. LTD.	https://sg.indeed.com/rc/clk?jk=28c7d8ebd6751d0c&fccid=be7e85c42dd1be5b&vjs=3	2020-08-30 13:47:02.173741+08	2020-08-30 13:47:02.173763+08
1262	#SGUNITEDJOBS SYSTEMS ENGINEER	HELIUS TECHNOLOGIES PTE. LTD.	https://sg.indeed.com/rc/clk?jk=d6926d85b3588045&fccid=b3282c125f18e0c0&vjs=3	2020-08-30 13:47:03.827569+08	2020-08-30 13:47:03.82759+08
1263	#SGUNITEDJOBS SENIOR SOFTWARE ENGINEER	VEBITS AI PTE. LIMITED	https://sg.indeed.com/rc/clk?jk=6266f078746cb43f&fccid=4a1a8d1e42e2c67e&vjs=3	2020-08-30 13:47:05.640333+08	2020-08-30 13:47:05.640354+08
1264	Research Engineer (1-year contract), School of Information Systems	STAFFONDEMAND PTE. LTD.	https://sg.indeed.com/rc/clk?jk=d983705b61fd7348&fccid=576bb8f56c826ae6&vjs=3	2020-08-30 13:47:08.128289+08	2020-08-30 13:47:08.128314+08
1265	Senior Product Manager, Platform	LIBERTY WIRELESS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=6a29582e9ba409fe&fccid=085ba43a362e483a&vjs=3	2020-08-30 13:47:13.724004+08	2020-08-30 13:47:13.724028+08
1266	#SGUNITEDJOBS BSS SUPPORT ENGINEER	PCCW SOLUTIONS SINGAPORE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=5022e53911ff0acf&fccid=d1c475222457a48a&vjs=3	2020-08-30 13:47:16.278276+08	2020-08-30 13:47:16.278301+08
1267	Road / Highway Engineer	The Blue Barrel	https://sg.indeed.com/company/The-Blue-Barrel/jobs/Road-d9e6dc47b0593069?fccid=a959f2f3aac5d872&vjs=3	2020-08-30 13:47:18.819051+08	2020-08-30 13:47:18.819075+08
1268	#SGUNITEDJOBS CUSTOMER RELIABILITY ENGINEER	DUCO TECHNOLOGY PTE. LIMITED	https://sg.indeed.com/rc/clk?jk=1fd2db1a56ef286f&fccid=334ae0864f707505&vjs=3	2020-08-30 13:47:21.034582+08	2020-08-30 13:47:21.034606+08
1269	Product Manager	GMP Group	https://sg.indeed.com/rc/clk?jk=47d7bb3fe555b137&fccid=14c5dc1981ceac75&vjs=3	2020-08-30 13:47:23.468581+08	2020-08-30 13:47:23.468605+08
1270	#SGUNITEDJOBS IT - MIDDLEWARE SYSTEM ADMINISTRATOR	NTT DATA SINGAPORE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=71357522d01f27b0&fccid=ac38a400acc8fe73&vjs=3	2020-08-30 13:47:25.874534+08	2020-08-30 13:47:25.874556+08
1271	#SGUNITEDJOBS IT SUPPORT ENGINEER	FRONTIER FORCE TECHNOLOGY PTE LTD	https://sg.indeed.com/rc/clk?jk=56baf8171e354760&fccid=1b51ef90042960b4&vjs=3	2020-08-30 13:47:27.945459+08	2020-08-30 13:47:27.945481+08
1272	#SGUNITEDJOBS BSS SUPPORT ENGINEER	TEK VILLAGE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=bb9b1f9e7fe67d8b&fccid=a63df415fdfdf25c&vjs=3	2020-08-30 13:47:29.711015+08	2020-08-30 13:47:29.711035+08
1273	#SGUNITEDJOBS SENIOR SOFTWARE DEVELOPER	ROVISYS ASIA COMPANY PTE. LTD.	https://sg.indeed.com/rc/clk?jk=21c0e471c5a6a0b5&fccid=7fc14e8ceb230e7f&vjs=3	2020-08-30 13:47:32.745286+08	2020-08-30 13:47:32.745307+08
1274	#SGUnitedJobs UX Lead (ACE- Gobusiness)	Government Technology Agency	https://sg.indeed.com/rc/clk?jk=2114dd7f9b4e07fb&fccid=3b9a5811a8b6410b&vjs=3	2020-08-30 13:47:34.856362+08	2020-08-30 13:47:34.856384+08
1275	#SGUNITEDJOBS DEVOPS ENGINEER	BANK OF SINGAPORE LIMITED	https://sg.indeed.com/rc/clk?jk=ead2c82cc4999b15&fccid=f53f057795eadec6&vjs=3	2020-08-30 13:47:37.08853+08	2020-08-30 13:47:37.088551+08
1276	#SGUNITEDJOBS DEVOPS ENGINEER	ANQLAVE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=3b8c56a6df293a07&fccid=b6e449315964f992&vjs=3	2020-08-30 13:47:38.847191+08	2020-08-30 13:47:38.847215+08
1277	#SGUNITEDJOBS SITE RELIABILITY ENGINEER (SRE) - BLOOMBERG INDEX SERVICES	BLOOMBERG SINGAPORE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=b1ee854ea84908f7&fccid=f770da67b3b51c62&vjs=3	2020-08-30 13:47:41.402588+08	2020-08-30 13:47:41.402614+08
1278	cloud system engineer	Randstad	https://sg.indeed.com/rc/clk?jk=4c1c1440bc983509&fccid=f8b265243da9f9d7&vjs=3	2020-08-30 13:47:44.554041+08	2020-08-30 13:47:44.554063+08
1279	#SGUNITEDJOBS LINUX SYSTEM ENGINEER	ENNOVATEZ PTE. LTD.	https://sg.indeed.com/rc/clk?jk=6fa152947ae9eb82&fccid=4b21fabd76605d0d&vjs=3	2020-08-30 13:47:47.65168+08	2020-08-30 13:47:47.651702+08
1280	#SGUNITEDJOBS USER EXPERIENCE DESIGNER	APAR TECHNOLOGIES PTE. LTD.	https://sg.indeed.com/rc/clk?jk=8807d367b0c06f6b&fccid=aad03c4fe1c15b8f&vjs=3	2020-08-30 13:47:49.502144+08	2020-08-30 13:47:49.502167+08
1281	Android Consultant	V-KEY PTE. LTD.	https://sg.indeed.com/rc/clk?jk=651b17423402ae68&fccid=0cb21ba041c36914&vjs=3	2020-08-30 13:47:52.80032+08	2020-08-30 13:47:52.800343+08
1282	it security & infrastructure engineer	Randstad	https://sg.indeed.com/rc/clk?jk=a40aabfd8ff29976&fccid=f8b265243da9f9d7&vjs=3	2020-08-30 13:47:56.086335+08	2020-08-30 13:47:56.086358+08
1283	#SGUNITEDJOBS SENIOR SOFTWARE DEVELOPER	ASTO SYSTEMS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=2d50ee55638eecc0&fccid=9defece5c0c67318&vjs=3	2020-08-30 13:48:00.205829+08	2020-08-30 13:48:00.205851+08
1284	#SGUNITEDJOBS ANDROID CONSULTANT	V-KEY PTE. LTD.	https://sg.indeed.com/rc/clk?jk=ff4a966f44304b99&fccid=0cb21ba041c36914&vjs=3	2020-08-30 13:48:03.285102+08	2020-08-30 13:48:03.285124+08
1285	#SGUNITEDJOBS SENIOR PRODUCT MANAGER, PLATFORM	LIBERTY WIRELESS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=c2230c2c933c9ae5&fccid=085ba43a362e483a&vjs=3	2020-08-30 13:48:05.104894+08	2020-08-30 13:48:05.104916+08
1286	#SGUNITEDJOBS NETWORK SECURITY CONSULTANT	ITCAN PTE. LIMITED	https://sg.indeed.com/rc/clk?jk=b0be6f9668baf683&fccid=dac85444d99b91d5&vjs=3	2020-08-30 13:48:07.413634+08	2020-08-30 13:48:07.413692+08
1287	IT Engineer Tech Support #SGUnitedTraineeship	Jireh Group Pte Ltd	https://sg.indeed.com/pagead/clk?mo=r&ad=-6NYlbfkN0Dn1Lju-VvMLd_SktWY1ENLK6VOOt7TLqqnOWzueJ_p5tAqOqTv4PlDDG-fm9-vl-ri9L7v3QN51TQp_thRJxcFDRiyRhCqslQqPtp9qOEztC8xDnJCyiLphOLn-9pRSrFLlfVe3-eX4CXdgWVHyXQqy6L6EyAxTeBO501VvuY9pFvEoaKaW3-CeS8ii2W8bcoJ1rTkxYy2S4nSlBTe1DT7Rydn_zdUYT_k3Cko5G8Dc_tqAHW5-U0TxGVD_1-oZ4Ul2Dm2kfQbmMPUUTfNkklphVw085N0kt26uqAgPygmd8erOlcelCaqoTyBzCgGiRPlNADNHy6du0iu0Kqc8zev1Jhb3DBoH688vUWCARbEaVWVDe90aETGxXWJcoyYpHr_wviOTjdljIPSJFQ-FnOjWQoFEYJV89h0ci66X73LR3Mouv96Lu4dJ3fiihDrnu0PhYH1OXiyKwrxs_xj7X-7Z_nlJbd6UHX0wJZwWZ2oLw==&p=5&fvj=1&vjs=3	2020-08-30 13:48:09.9214+08	2020-08-30 13:48:09.921423+08
1288	Backend Software Engineer, TikTok	TikTok	https://sg.indeed.com/rc/clk?jk=b44c45806c52b204&fccid=caed318a9335aac0&vjs=3	2020-08-30 13:48:12.108632+08	2020-08-30 13:48:12.108655+08
1289	Software Quality Assurance Engineer	Talent Trader Group Pte Ltd	https://sg.indeed.com/pagead/clk?mo=r&ad=-6NYlbfkN0BBhZYZZ7bY_Q2-fWzXB8nQYCzWpr80zNz3fSsAHgtb9vabgVJZ27a7wT5esBRSfcu3jPoPFU_c35qu3G4-BG8C_KkiYQVUQnHYaqsUW8G1NUQkji2rS2oJ-tfVCV9aavH2NAhf6DsusdNa9959htIv3cu4ZE_3vuXjFCrwv8Y6gyzhcjsIBJ1bR_BgQSdfCR5tami0iMhM_nUu3bGt_zA36ZJGs7OeTD2cIIXSoBrdVXAzB8qpLnwg7IagFptSrvkrNH62qU2j_wWEBMZ2Jg1-_WabANIN6ym6uHTn1a4iYi0ltONq0_IasFhyImGWVLUzURdT6g4IW0SUYcIBtoXtX31-wiFBHHq_j9rCMd0cQwefrOtzKHJDmdDG6QvUPw2zSA7jhjQVHv1j6v_oF-nu1dTvhod9_K3Ie5yW3hwogpSNDOp9KxvXHgvNfT-MxgYtbty3EbSFCdYJ-sl_Vfacp8QODGaDffDWYeACCTNPH4tu00XGTzQ_2IuMsuBTHt8sUzngcqQhnstle0BZbnBItZm3asUSBzSBcr3khznMycgPQazX-jIxtN170G-cV0RGnSAVhM-8kSJxIo1F0EDaFmtXr7nc_yhOq1AnvCiL6tEsSrrUmzKIMD7QRlVR8mAm78j7Lzu6Q0QRKghuGTC_sv5bKaynF5xjqfhw-Y2QClT9h3TjCiaxvIapXDYFrvn0UFm3DdUSGQ==&p=7&fvj=0&vjs=3	2020-08-30 13:48:14.809693+08	2020-08-30 13:48:14.809715+08
1290	Testing Software Engineer, TikTok e-Commerce	TikTok	https://sg.indeed.com/rc/clk?jk=cc7fdb9002455a85&fccid=caed318a9335aac0&vjs=3	2020-08-30 13:48:17.508664+08	2020-08-30 13:48:17.508685+08
1291	Software Engineer (Fresh Grad)	Rakuten Asia Pte Ltd	https://sg.indeed.com/company/Rakuten,-Inc./jobs/Software-Engineer-340602be503d2d58?fccid=5e50810dc475b1eb&vjs=3	2020-08-30 13:48:20.785794+08	2020-08-30 13:48:20.785817+08
1292	Frontend Software Engineer, TikTok e-Commerce	TikTok	https://sg.indeed.com/rc/clk?jk=1870f9df5bab2d53&fccid=caed318a9335aac0&vjs=3	2020-08-30 13:48:22.817464+08	2020-08-30 13:48:22.817486+08
1293	Software Engineer	VHF Technologies Pte Ltd	https://sg.indeed.com/company/VHF-Technologies-Pte-Ltd/jobs/Software-Engineer-882540e2de0830ae?fccid=dde1cf81183899df&vjs=3	2020-08-30 13:48:25.66169+08	2020-08-30 13:48:25.661717+08
1294	Software Engineer In Test, Fintech/Loyalty Product	Ascenda Loyalty	https://sg.indeed.com/rc/clk?jk=67db063c8f4995a5&fccid=ef7179e8e4d81a69&vjs=3	2020-08-30 13:48:28.229048+08	2020-08-30 13:48:28.229069+08
1295	Front-End Software Engineer (Infocomm) #SGUnitedTraineeships	SGunited	https://sg.indeed.com/rc/clk?jk=5cd7e5ee09c86421&fccid=789644d61dab830f&vjs=3	2020-08-30 13:48:30.68993+08	2020-08-30 13:48:30.689969+08
1329	Manual Tester for UST Global	UST Global Singapore Pte Limited	https://sg.indeed.com/rc/clk?jk=65c2cec8390a85e5&fccid=8009d67e70703a78&vjs=3	2020-08-30 13:50:04.122771+08	2020-08-30 13:50:04.122794+08
1368	Full-stack Senior Software Engineer (.NET)	Tigerspike	https://sg.indeed.com/rc/clk?jk=8e9c71d816becb44&fccid=19a850e1438d66bf&vjs=3	2020-08-30 13:51:42.609513+08	2020-08-30 13:51:42.609558+08
1296	Software Test Engineer (Automation)	Company Confidential	https://sg.indeed.com/pagead/clk?mo=r&ad=-6NYlbfkN0DNHpLqAaVRuzWRNyPevW9ZpedY5KjY-iw4GyqO-VdA8pa9tcq8z122KEbfBRz2KJfJmvis8YGFl7DWhLgqgMvbuvQ61X1gL7xrMf0ZW--OgCQlXEhLpROfi8KnnPwRvJe_2-LYoU2QGLv_Df_shu6QbGCwMWoegclpD14BFWEks1g5g1x8IACbWFPf6a7dFdaQ1heaC6l5K4N-D9NBkVjZNsyLa4Jtsz3zflLwTGGo5-Cfi7EK3a9loSkq08pksOQxz0w-N8NjidH1DncGMM3JMes3Fu-A_i7-K6XFDPzxFQvjGO3Wzpr94yEJrJLvCjrtz6zUux8Clg1ax2Ofxf_RfYwW74poHPdpLVt74dENIHeyuaF7_W-pbN4VC6Rebjjqb9Wf3FUBfTu-g4MI8t1Xn0G11jYMl7rqZer424k9IRDddmBa3gWiajshRZ7Fb_5S63M6wgO1spefFPnrZbdIBOZvyXBbpXb6DeDo5aULCGOII8JeDnyntUGbTsBr3fv_ESDw1v8U0g==&p=14&fvj=0&vjs=3	2020-08-30 13:48:33.159381+08	2020-08-30 13:48:33.159411+08
1297	Software Test Engineer (Automation)	Company Confidential	https://sg.indeed.com/pagead/clk?mo=r&ad=-6NYlbfkN0DNHpLqAaVRuzWRNyPevW9ZpedY5KjY-iw4GyqO-VdA8pa9tcq8z122KEbfBRz2KJfJmvis8YGFl7DWhLgqgMvbuvQ61X1gL7xrMf0ZW--OgCQlXEhLpROfi8KnnPwRvJe_2-LYoU2QGLv_Df_shu6QbGCwMWoegclpD14BFWEks1t0QCA3f6dOxmU2cErLPqjNeh7IUIT0fiVlcHPq0MXI8H3azQqgfOxi9dTaGkS2gHqg8yqzw4bpYNxoGmlnKnx76tsQHNM9h3Y0VsdPOwtKZYWtMbCpvmKJiMPSpjcH2uW2-0X0Q29StbL_5Tw6f-VSeAjhjnMhGa9ci1FfXpW-1doFpZcexI_k8EQSmV0J22_mMIqQnAm7SK4HLYuAtOfag_ysHMPjSdgxZTfd0h3Y5GTuxkZvvm0_R2rVNSdRQnLyieZFM9RdVz0C23Wu1j4-eY7Odyrj9GP8QOocYE6_XSSpcDgBmc6u9gi_0G4-r77d6l7OIZZ7T0XVF6KLKhumGa1nH7ssgA==&p=0&fvj=0&vjs=3	2020-08-30 13:48:37.464406+08	2020-08-30 13:48:37.464436+08
1298	Software Engineer (Infocomm) #SGUnitedTraineeships	SGunited	https://sg.indeed.com/rc/clk?jk=17cd438e1821f585&fccid=789644d61dab830f&vjs=3	2020-08-30 13:48:40.684314+08	2020-08-30 13:48:40.684338+08
1299	Software Engineer	KAPTECH CONSULTING PTE LTD	https://sg.indeed.com/company/KAPTECH-CONSULTING-PTE-LTD/jobs/Software-Engineer-3d6eb83f85a0ec02?fccid=155bc5d1bf3461fb&vjs=3	2020-08-30 13:48:43.406504+08	2020-08-30 13:48:43.406525+08
1300	Senior Software Engineer (ACMP)	Rakuten Asia Pte Ltd	https://sg.indeed.com/company/Rakuten,-Inc./jobs/Senior-Software-Engineer-0b3588c2e519dc45?fccid=5e50810dc475b1eb&vjs=3	2020-08-30 13:48:45.873413+08	2020-08-30 13:48:45.873435+08
1301	RPA Engineer (#TeSA)	Singtel	https://sg.indeed.com/rc/clk?jk=e8cf11a476aa537e&fccid=a94c6bb50f118c9f&vjs=3	2020-08-30 13:48:48.309083+08	2020-08-30 13:48:48.309114+08
1302	Software Engineer In Test	Tigerspike	https://sg.indeed.com/rc/clk?jk=70441901569312e3&fccid=19a850e1438d66bf&vjs=3	2020-08-30 13:48:50.638105+08	2020-08-30 13:48:50.638128+08
1303	Senior IT Engineer	Capita Singapore	https://sg.indeed.com/pagead/clk?mo=r&ad=-6NYlbfkN0DNHpLqAaVRuzWRNyPevW9ZpedY5KjY-iw4GyqO-VdA8sUA9ZP1s3vSZG6NHK5t8C5MGLl4P_-8ThDdtqBe_A2aSsYl190I-CDRH_ORxha8Aoz-DCnFD5HtWozU3-fq8rsyHA-754_LdehrEjcCSOcd4dcnBJkhl1Cnpq6enCQT1svRFs3tTk9y3oIfNWuFVu-drJ9CBmfGTUuacRN5hFp5Xv_EPxsEhUs6B_Jpso5JhE5XL6ohNOxG5w46dzU3zDKWlraSR5VahjJTsI67PJCtR4DGBIh75E-eZVWHo7KmoKjY5En3jXaXoNiMaKpr7Sw0PrRm2ccfBs-LTMF6PP23rzwaqDLx_2IyhsnluAp3znDspk_X1REeWWKqma11iz4kyKyfi6lbwgapBiHPDObJ1XazsxqQfutucGseC5RH5NkIUfvR4_zFJ9lTbMeBO24VwAZncue-yp1qv1X0vR4ylig2FClAiwTDj_FdwPsZg9DQ2dJQXIkxTPBWhT8bQGdlcsaBqBvnVg3ZBqFKuSqO8zhwiAhcBKOnndpbcv25fQ==&p=6&fvj=0&vjs=3	2020-08-30 13:48:53.129572+08	2020-08-30 13:48:53.129593+08
1304	Associate Software Engineer	Intellect Minds Pte Ltd	https://sg.indeed.com/rc/clk?jk=3df08ed37d446a98&fccid=a7be9f2e94ab1cbf&vjs=3	2020-08-30 13:48:56.12813+08	2020-08-30 13:48:56.12815+08
1305	Senior Software Engineer	Nahimic Singapore Pte Ltd	https://sg.indeed.com/company/Nahimic-Singapore-Pte-Ltd/jobs/Senior-Software-Engineer-1737a36bd1bff576?fccid=9532c1393b97a60d&vjs=3	2020-08-30 13:48:59.053213+08	2020-08-30 13:48:59.053237+08
1306	System Engineer - ICS/SSD/SE/WY	ST Electronics (Info-comm Systems) Pte Ltd	https://sg.indeed.com/rc/clk?jk=d085431302aa8be8&fccid=076a7775171daf4c&vjs=3	2020-08-30 13:49:02.135943+08	2020-08-30 13:49:02.135974+08
1307	Software Engineer	Snaphunt Pte Ltd	https://sg.indeed.com/rc/clk?jk=85a2a54baf668a30&fccid=dd616958bd9ddc12&vjs=3	2020-08-30 13:49:03.97302+08	2020-08-30 13:49:03.973041+08
1308	Senior Software Engineer (Frontend)	Rakuten Asia Pte Ltd	https://sg.indeed.com/company/Rakuten,-Inc./jobs/Senior-Software-Engineer-aebf39e2395cf3f7?fccid=5e50810dc475b1eb&vjs=3	2020-08-30 13:49:06.145663+08	2020-08-30 13:49:06.145694+08
1309	Software Engineer	Nahimic Singapore Pte Ltd	https://sg.indeed.com/company/Nahimic-Singapore-Pte-Ltd/jobs/Software-Engineer-11dd8828b5168ce4?fccid=9532c1393b97a60d&vjs=3	2020-08-30 13:49:08.777927+08	2020-08-30 13:49:08.777949+08
1310	IT Engineer	Micron	https://sg.indeed.com/rc/clk?jk=462e6cb8387ae566&fccid=be240c643a8631c5&vjs=3	2020-08-30 13:49:11.829632+08	2020-08-30 13:49:11.829658+08
1311	ETL / Informatica developer - Software Engineer	SAKSOFT PTE LIMITED	https://sg.indeed.com/rc/clk?jk=436dc16bc88e2a98&fccid=71af0fed7c8a7c4a&vjs=3	2020-08-30 13:49:14.703943+08	2020-08-30 13:49:14.703965+08
1312	AI/ML Engineer	EPERGNE SOLUTIONS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=4f59a361c9444bf9&fccid=97393adfa493904d&vjs=3	2020-08-30 13:49:18.209151+08	2020-08-30 13:49:18.209183+08
1313	Back-End Software Engineer (Infocomm) #SGUnitedTraineeships	SGunited	https://sg.indeed.com/rc/clk?jk=52c739d0f36c93bd&fccid=789644d61dab830f&vjs=3	2020-08-30 13:49:20.699585+08	2020-08-30 13:49:20.699616+08
1314	Software Engineer (Backend)	TRUSTY CARS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=20cfd4098eb7993d&fccid=882e44d000cca2da&vjs=3	2020-08-30 13:49:23.867198+08	2020-08-30 13:49:23.867229+08
1315	Software Development Engineer	Manpower	https://sg.indeed.com/rc/clk?jk=b095395baceea984&fccid=1a17983a910f73d8&vjs=3	2020-08-30 13:49:26.728453+08	2020-08-30 13:49:26.728485+08
1316	Senior Software Engineer (Java / Scala / NoSQL)	Rakuten Asia Pte Ltd	https://sg.indeed.com/company/Rakuten,-Inc./jobs/Senior-Software-Engineer-8c6856633262284c?fccid=5e50810dc475b1eb&vjs=3	2020-08-30 13:49:29.145026+08	2020-08-30 13:49:29.145046+08
1317	Software Engineer Lead (Golang)	Rakuten Asia Pte Ltd	https://sg.indeed.com/company/Rakuten,-Inc./jobs/Software-Engineer-Lead-8dafab018eb108e7?fccid=5e50810dc475b1eb&vjs=3	2020-08-30 13:49:31.739694+08	2020-08-30 13:49:31.739714+08
1318	TECHNICAL SUPPORT ENGINEER	Mantu	https://sg.indeed.com/rc/clk?jk=2d6438324ee094ad&fccid=15d440bd8ae40dab&vjs=3	2020-08-30 13:49:35.962902+08	2020-08-30 13:49:35.962933+08
1319	(Intership) Junior Urban Engineer Asia Pacific	ENGIE IMPACT PTE. LTD.	https://sg.indeed.com/rc/clk?jk=b55794273b7f0bb6&fccid=6ae3fd9d9bc6f5c6&vjs=3	2020-08-30 13:49:38.104367+08	2020-08-30 13:49:38.104393+08
1320	DevOps Engineer	Rakuten Asia Pte Ltd	https://sg.indeed.com/company/Rakuten,-Inc./jobs/Devop-Engineer-393f0c2a9dfcb6ca?fccid=5e50810dc475b1eb&vjs=3	2020-08-30 13:49:40.956659+08	2020-08-30 13:49:40.956691+08
1321	Software Engineer	XYNDICATE.NETWORK PTE. LTD.	https://sg.indeed.com/rc/clk?jk=910efa56de7f85e0&fccid=17ab4f67b08e8057&vjs=3	2020-08-30 13:49:43.407633+08	2020-08-30 13:49:43.407665+08
1322	Software Engineer	People Profilers Pte Ltd	https://sg.indeed.com/rc/clk?jk=96d2009119670af1&fccid=a53274871a96e632&vjs=3	2020-08-30 13:49:46.328732+08	2020-08-30 13:49:46.328753+08
1323	IT Systems Engineer	Techbridge Market Holdings Pte Ltd	https://sg.indeed.com/rc/clk?jk=3c78e438239798d3&fccid=e9008c88d458b156&vjs=3	2020-08-30 13:49:49.162343+08	2020-08-30 13:49:49.162366+08
1324	Software Development Engineer	SPEARDOME PTE. LTD.	https://sg.indeed.com/rc/clk?jk=b904f72893810c76&fccid=6e5ba55f7b71e7df&vjs=3	2020-08-30 13:49:51.61963+08	2020-08-30 13:49:51.61965+08
1325	[JobID: 20200701-SE] [OPEN] Software Engineer (full time / internship positions available, Singapore)	SINGAPORE HEAVY ENGINEERING PTE. LTD.	https://sg.indeed.com/rc/clk?jk=4533adcf72b134b4&fccid=d3d23e4b4f9baa4f&vjs=3	2020-08-30 13:49:54.426009+08	2020-08-30 13:49:54.42604+08
1326	Software Engineer	PERCEPT SOLUTIONS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=091fc4a96a668052&fccid=f6228f639e9a9be2&vjs=3	2020-08-30 13:49:56.392013+08	2020-08-30 13:49:56.392036+08
1327	IT Helpdesk Engineer	QuEST Global Services	https://sg.indeed.com/company/HASK-Engineering-&-Management-Private-Li/jobs/IT-Helpdesk-Engineer-504e481637c7d11e?fccid=dd96ac2a5d318f70&vjs=3	2020-08-30 13:49:58.653293+08	2020-08-30 13:49:58.65332+08
1328	Software Engineer, Singapore	Spring Professional Malaysia Sdn Bhd	https://sg.indeed.com/rc/clk?jk=a8d7a21974af3892&fccid=12fadd75da0b0c6e&vjs=3	2020-08-30 13:50:01.007847+08	2020-08-30 13:50:01.007997+08
1330	Service Technician	En-Syst Equipment & Services Pte Ltd	https://sg.indeed.com/company/En--Syst-Equipment-&-Services/jobs/Service-Technician-186b593cb8c43566?fccid=2136675d133940a8&vjs=3	2020-08-30 13:50:07.287433+08	2020-08-30 13:50:07.287457+08
1331	Computer Vision Software Engineer	ACEXCELLENT CONSULTING PTE. LTD.	https://sg.indeed.com/rc/clk?jk=bab7b4aad919caec&fccid=7e873dd646c4f130&vjs=3	2020-08-30 13:50:10.268167+08	2020-08-30 13:50:10.268191+08
1332	Senior Weight Control Engineer	Aibel	https://sg.indeed.com/rc/clk?jk=bb3365fc7169c488&fccid=436a2d530f4980da&vjs=3	2020-08-30 13:50:12.476074+08	2020-08-30 13:50:12.476094+08
1333	Neoxam / Golden Source / Senior Software Engineer	SAKSOFT PTE LIMITED	https://sg.indeed.com/rc/clk?jk=03294a3abc811282&fccid=71af0fed7c8a7c4a&vjs=3	2020-08-30 13:50:15.434063+08	2020-08-30 13:50:15.434084+08
1334	DevOps & Infrastructure Engineer	Rakuten Asia Pte Ltd	https://sg.indeed.com/company/Rakuten,-Inc./jobs/Devop-Infrastructure-Engineer-0ae4bbe60ac6229d?fccid=5e50810dc475b1eb&vjs=3	2020-08-30 13:50:17.284332+08	2020-08-30 13:50:17.284353+08
1335	Junior Software Engineer	ASTO SYSTEMS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=3690cfa4116d0d91&fccid=9defece5c0c67318&vjs=3	2020-08-30 13:50:19.695471+08	2020-08-30 13:50:19.695494+08
1336	Software Engineer	TRUSTY CARS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=cdd7d90ce44a197e&fccid=882e44d000cca2da&vjs=3	2020-08-30 13:50:22.635863+08	2020-08-30 13:50:22.635894+08
1337	Technical Support Engineer	INNOQ SOLUTIONS PTE LTD	https://sg.indeed.com/company/INNOQ-SOLUTIONS-PTE-LTD/jobs/Technical-Support-Engineer-4b085457ba590f07?fccid=93a3d77f3ddd7521&vjs=3	2020-08-30 13:50:25.475583+08	2020-08-30 13:50:25.475604+08
1338	Intern, Product Owner	Yara	https://sg.indeed.com/rc/clk?jk=019ba4d4692d7fc5&fccid=dd94afe68cf83140&vjs=3	2020-08-30 13:50:27.803864+08	2020-08-30 13:50:27.803887+08
1339	Senior Software Engineer	DOW TECHNOLOGIES AND SYSTEMS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=a688457a9246b13c&fccid=3c65396b19f16500&vjs=3	2020-08-30 13:50:30.786777+08	2020-08-30 13:50:30.786801+08
1340	Technical Software Manager (Cloud)	Talent Trader Group Pte Ltd	https://sg.indeed.com/pagead/clk?mo=r&ad=-6NYlbfkN0BBhZYZZ7bY_Q2-fWzXB8nQYCzWpr80zNz3fSsAHgtb9vabgVJZ27a7wT5esBRSfcuaVPsfXLOkPmFBotsYuX2PO8PPLyPl1zY58_Ug1v-lNEex85oF2t_pRUrwAG6XCOObPYlVdrQ5eI4kaa5plLUCT6b65gwjmmMwBx_iWr_D3ChGcwClWK5QDer_49lpH9d_px4ibf_T8sWowK82-LG_VA7AVviS07ceQrmISDCtmCgd7_6IXRwu-4VBjiTcR6HkDtAMJcHYXJMtFICX1icDW_NcGQ-kqzlzoaYxGqzGLG6OHukyHJjYmJ5sA7PsAMhIcYM5ji_05tZgZDl2Y0ELaBIV0G-BXfBkZm5PiIW41vv0_4kyeaM66FTctZuCShvohI2J4B_900kWYwr159GYtjpx9ZVeUH_-Bc742vPVN8k_U0sCNNxNG7I2mEvVbWm16iBdyAqgIPa7Lwf4Se_xFlCJl9RFjq-WwGDVNBa0cXKqnsPkaBlk1nP_FXd4rZw15pR1oNpKMCB7A2Q_wL7XqpSU-FDSIBJp8KumaTv5wg5BZ8mhVQejC9Lm6EfyijfZRivnJdEpZs22V0z1WZvlLecJF5cr0k15wnuNXsJO4rElV_SOtw4mD8YYd3YKhyFFNkGrrH6YYCbIEY9jWS2SOfFh_8bhvLc92Ci-97WdtwhGpZJjDPSlTvBfy09hqnSGOes3GsrQTQ==&p=13&fvj=0&vjs=3	2020-08-30 13:50:33.53664+08	2020-08-30 13:50:33.536671+08
1341	Software Engineer, Automated Equipment	ACEXCELLENT CONSULTING PTE. LTD.	https://sg.indeed.com/rc/clk?jk=2e4b7a2d07a82271&fccid=7e873dd646c4f130&vjs=3	2020-08-30 13:50:35.856552+08	2020-08-30 13:50:35.856575+08
1342	Senior / Software Engineer	PSB Technologies Pte Ltd	https://sg.indeed.com/rc/clk?jk=b80affff931d64f8&fccid=b39bbcce09ac7832&vjs=3	2020-08-30 13:50:37.777022+08	2020-08-30 13:50:37.777044+08
1343	Software Engineer (Video and VoIP)	INNOVAX SYSTEMS PTE LTD	https://sg.indeed.com/rc/clk?jk=7f43787f71822aa0&fccid=5faccd87e403b958&vjs=3	2020-08-30 13:50:40.260769+08	2020-08-30 13:50:40.260793+08
1344	(103) Software Engineer (Javascript)	IT Consultancy & Services Pte Ltd	https://sg.indeed.com/company/IT-Consultancy-&-Services-Pte-Ltd/jobs/-7ac0eda44acf1e36?fccid=5f9134320c3c84df&vjs=3	2020-08-30 13:50:43.719269+08	2020-08-30 13:50:43.71929+08
1345	Trainee (Software Engineer), Enterprise IT #SGUnitedTraineeships #PublicService	DEFENCE SCIENCE AND TECHNOLOGY AGENCY	https://sg.indeed.com/rc/clk?jk=beadfa54f0e873ad&fccid=1d79a4290fb70d8e&vjs=3	2020-08-30 13:50:46.058456+08	2020-08-30 13:50:46.058478+08
1346	Escalation Engineer (based in Singapore)	Palo Alto Networks	https://sg.indeed.com/rc/clk?jk=d384edc202c39b8b&fccid=0562f887e2bed9ea&vjs=3	2020-08-30 13:50:49.305444+08	2020-08-30 13:50:49.305465+08
1347	Urgent! Entry Level (Software Engineer) - Computer Science/ Computer Engineering	RECRUITFLASH PTE. LTD.	https://sg.indeed.com/rc/clk?jk=6ec89fc7be0ba458&fccid=f74012740d21378a&vjs=3	2020-08-30 13:50:51.005905+08	2020-08-30 13:50:51.005928+08
1348	Senior Software Application Engineer	Accellion Pte Ltd	https://sg.indeed.com/rc/clk?jk=61c3ad8623757188&fccid=04c58e07aa208b41&vjs=3	2020-08-30 13:50:53.397595+08	2020-08-30 13:50:53.397622+08
1349	Senior Software Engineer, Backend (Singapore)	Carousell	https://sg.indeed.com/rc/clk?jk=e9983fbc5fe3ff19&fccid=d8980047cad1df1d&vjs=3	2020-08-30 13:50:56.06548+08	2020-08-30 13:50:56.065502+08
1350	BSS Support Engineer	Tek Village Pte Ltd	https://sg.indeed.com/company/Tek-Village-Pte-Ltd/jobs/Bss-Support-Engineer-f02eb8ea937dc36e?fccid=a63df415fdfdf25c&vjs=3	2020-08-30 13:50:58.142183+08	2020-08-30 13:50:58.142204+08
1351	Project Engineer #SGUnitedJobs	HAI LECK ENGINEERING (PRIVATE) LIMITED	https://sg.indeed.com/rc/clk?jk=30eb3de2023a8260&fccid=e8ba1a99fa84b155&vjs=3	2020-08-30 13:50:59.729942+08	2020-08-30 13:50:59.729966+08
1352	IT Support Engineer	FUNCTIONEIGHT PTE. LTD.	https://sg.indeed.com/rc/clk?jk=7d38e92e8f3a5167&fccid=5fa59d279f83f820&vjs=3	2020-08-30 13:51:03.272094+08	2020-08-30 13:51:03.272115+08
1353	Engineer (RF Design)	AMPLUS COMMUNICATION PTE. LTD.	https://sg.indeed.com/rc/clk?jk=0355f2a29d8701fe&fccid=02a7e42fe42074cd&vjs=3	2020-08-30 13:51:05.637523+08	2020-08-30 13:51:05.637545+08
1354	Software Engineer #SGUnitedJobs	ONEBERRY TECHNOLOGIES PTE. LTD.	https://sg.indeed.com/rc/clk?jk=97300516d6f177d9&fccid=0ba6b6901df5d36c&vjs=3	2020-08-30 13:51:07.424589+08	2020-08-30 13:51:07.424612+08
1355	Software Engineer (Ref 22090)	JOBLINE RESOURCES PTE. LTD.	https://sg.indeed.com/rc/clk?jk=a82ec9a5b949c8a6&fccid=08a987b19a93d3a1&vjs=3	2020-08-30 13:51:11.346905+08	2020-08-30 13:51:11.346928+08
1356	Product Manager (China)	Care Health	https://sg.indeed.com/company/Doctor-One-World-Pte-Ltd/jobs/Product-Manager-986702719e264a20?fccid=373f4e0cd9141cda&vjs=3	2020-08-30 13:51:13.824766+08	2020-08-30 13:51:13.824787+08
1357	Desktop Support Engineer	JK TECHNOLOGY PTE LTD	https://sg.indeed.com/rc/clk?jk=95b8cb6c8ad19374&fccid=7cd5c9e2a96fa9b3&vjs=3	2020-08-30 13:51:15.702939+08	2020-08-30 13:51:15.70297+08
1358	Associate Director - Lead Data Engineer	Aon Corporation	https://sg.indeed.com/rc/clk?jk=76ff10d783707fd8&fccid=dc08cb56cb2d6276&vjs=3	2020-08-30 13:51:17.938111+08	2020-08-30 13:51:17.938131+08
1359	Senior / Software Engineer	CMM Marketing Management Pte Ltd	https://sg.indeed.com/rc/clk?jk=05113d166303215c&fccid=ecc364f0b02e1cda&vjs=3	2020-08-30 13:51:19.758235+08	2020-08-30 13:51:19.758255+08
1360	IT Engineer	ZIG VENTURES LIMITED	https://sg.indeed.com/rc/clk?jk=9b34c4c3b599a575&fccid=3ce180dbb69c67f0&vjs=3	2020-08-30 13:51:21.922832+08	2020-08-30 13:51:21.922854+08
1361	Project Manager	Nahimic Singapore Pte Ltd	https://sg.indeed.com/company/Nahimic-Singapore-Pte-Ltd/jobs/Project-Manager-76c3e9a4a29b690a?fccid=9532c1393b97a60d&vjs=3	2020-08-30 13:51:23.989761+08	2020-08-30 13:51:23.989782+08
1362	Cloud Engineer	GECO Singapore	https://sg.indeed.com/rc/clk?jk=2916600222f0a3b0&fccid=2075ff8a86fa7af0&vjs=3	2020-08-30 13:51:26.559632+08	2020-08-30 13:51:26.559653+08
1363	Senior Software Engineer	SUNNINGDALE TECH LTD.	https://sg.indeed.com/rc/clk?jk=a074bdad997b8aea&fccid=2473a441d15b58f5&vjs=3	2020-08-30 13:51:28.813087+08	2020-08-30 13:51:28.813112+08
1364	IT - Technical Support Engineer/Asst Manager	INFORMA SOLUTIONS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=ea5add139c5223bd&fccid=64b26ac2edc2f9ab&vjs=3	2020-08-30 13:51:31.364954+08	2020-08-30 13:51:31.364976+08
1365	L1 Support Engineer	Phoenix Global Search	https://sg.indeed.com/company/Phoenix-Global-Search/jobs/Support-Engineer-a577ff840f37185f?fccid=55a7988ac77c7e6e&vjs=3	2020-08-30 13:51:34.287906+08	2020-08-30 13:51:34.287928+08
1366	Software Engineers #SGUnitedTraineeships	VIZZIO TECHNOLOGIES PTE. LTD.	https://sg.indeed.com/rc/clk?jk=11c5ac3e976215fc&fccid=43f48c432d54e188&vjs=3	2020-08-30 13:51:36.459155+08	2020-08-30 13:51:36.459178+08
1367	SPC Engineer	SUPERFORM CONSULTING PTE. LTD.	https://sg.indeed.com/rc/clk?jk=5fa93c7a0c4c5f01&fccid=187170815d662f09&vjs=3	2020-08-30 13:51:38.898751+08	2020-08-30 13:51:38.898773+08
1369	Senior / Engineer, Firmware (AMG)(Ref 2020-7178)	STMicroelectronics	https://sg.indeed.com/rc/clk?jk=f4156bd3d8e922d8&fccid=ad65d09ba600d810&vjs=3	2020-08-30 13:51:44.065062+08	2020-08-30 13:51:44.065084+08
1370	Backend Tech Lead, TikTok e-Commerce	TikTok	https://sg.indeed.com/rc/clk?jk=ce5cb37c0913a729&fccid=caed318a9335aac0&vjs=3	2020-08-30 13:51:46.045135+08	2020-08-30 13:51:46.045158+08
1371	Senior DevSecOps Engineer, Cyber Defence	Grab Taxi	https://sg.indeed.com/rc/clk?jk=dc88f5bdfe79037b&fccid=b79fa3ee18655a5a&vjs=3	2020-08-30 13:51:49.188659+08	2020-08-30 13:51:49.188691+08
1372	Senior Quality Assurance Engineer	SPARES CNX PTE. LTD.	https://sg.indeed.com/rc/clk?jk=d38a9a93ccf23294&fccid=f85d66f9c7dc3048&vjs=3	2020-08-30 13:51:52.20176+08	2020-08-30 13:51:52.201791+08
1373	Associate Cybersecurity Specialist	Government Technology Agency	https://sg.indeed.com/rc/clk?jk=8ccddbd984d3acb8&fccid=3b9a5811a8b6410b&vjs=3	2020-08-30 13:51:55.257198+08	2020-08-30 13:51:55.25722+08
1374	DeltaV Batch Engineer	ZENTEK ENGINEERING PTE. LTD.	https://sg.indeed.com/rc/clk?jk=e5376ffde8b77c2f&fccid=df84dd6587d424d8&vjs=3	2020-08-30 13:51:57.623529+08	2020-08-30 13:51:57.623556+08
1375	#SGUNITEDJOBS SOFTWARE ENGINEER	PERCEPT SOLUTIONS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=dc47d1d5bc292239&fccid=f6228f639e9a9be2&vjs=3	2020-08-30 13:51:59.952096+08	2020-08-30 13:51:59.952127+08
1376	#SGUNITEDJOBS SOFTWARE ENGINEER	TRUSTY CARS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=bd210e4ea6f777b2&fccid=882e44d000cca2da&vjs=3	2020-08-30 13:52:03.892009+08	2020-08-30 13:52:03.892041+08
1377	Senior Software Engineer, Fullstack	GRABTAXI HOLDINGS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=77c941ca751b59d4&fccid=b79fa3ee18655a5a&vjs=3	2020-08-30 13:52:06.590743+08	2020-08-30 13:52:06.590768+08
1378	Senior Engineer/ Engineer (Networked Systems) , National Engineering	Defence Science and Technology Agency	https://sg.indeed.com/rc/clk?jk=7aac86bc6a54465f&fccid=1d79a4290fb70d8e&vjs=3	2020-08-30 13:52:09.832989+08	2020-08-30 13:52:09.833012+08
1379	Commodities Trading and Sales Tech - Trading Platform	Goldman Sachs	https://sg.indeed.com/rc/clk?jk=61812f9cdda91047&fccid=16a97ed26c75bf2d&vjs=3	2020-08-30 13:52:12.336144+08	2020-08-30 13:52:12.336166+08
1380	Jr. Server Engineer #SGUnitedJobs	PEOPLEBANK SINGAPORE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=b7e7314d872575eb&fccid=2af2cfa0f62874dc&vjs=3	2020-08-30 13:52:15.150996+08	2020-08-30 13:52:15.151016+08
1381	Junior Backend Developer	BANDLAB SINGAPORE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=f43bfd157b2d6164&fccid=d743ec8bd38eaf79&vjs=3	2020-08-30 13:52:17.520837+08	2020-08-30 13:52:17.520945+08
1382	Frontend Tech Lead, TikTok e-Commerce	TikTok	https://sg.indeed.com/rc/clk?jk=286ea994578800d9&fccid=caed318a9335aac0&vjs=3	2020-08-30 13:52:19.674133+08	2020-08-30 13:52:19.674161+08
1383	Product Manager	EPERGNE SOLUTIONS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=4d7cac07253ce512&fccid=97393adfa493904d&vjs=3	2020-08-30 13:52:23.475041+08	2020-08-30 13:52:23.475062+08
1384	Software Engineer	Applicantz, Inc,	https://sg.indeed.com/company/Applicantz,-Inc,/jobs/Software-Engineer-0dc2a446ba0575c6?fccid=287132f73c4cf148&vjs=3	2020-08-30 13:52:25.552716+08	2020-08-30 13:52:25.552738+08
1385	Test Development Engineer	AXIS-TEC PTE. LTD.	https://sg.indeed.com/rc/clk?jk=b350850970588ea7&fccid=aba7f84b168c1d31&vjs=3	2020-08-30 13:52:28.139874+08	2020-08-30 13:52:28.139894+08
1386	Manager, Global Network Planning & Implementation	Equinix	https://sg.indeed.com/rc/clk?jk=156602ec270f6bde&fccid=e15d9e27876d9dc3&vjs=3	2020-08-30 13:52:30.897764+08	2020-08-30 13:52:30.897785+08
1387	Fresh Graduate	Flintex Consuting Pte Ltd	https://sg.indeed.com/company/Flintex-Consuting-Pte-Ltd/jobs/Fresh-Graduate-90fcb30cc315c4fe?fccid=3127945bf0825b11&vjs=3	2020-08-30 13:52:34.661784+08	2020-08-30 13:52:34.661808+08
1388	Senior Data Engineer	SGInnovate	https://sg.indeed.com/rc/clk?jk=3bcf2b9399c1ee77&fccid=93b82cc9510e530d&vjs=3	2020-08-30 13:52:38.269223+08	2020-08-30 13:52:38.269249+08
1389	Systems Engineer	INNOVAX SYSTEMS PTE LTD	https://sg.indeed.com/rc/clk?jk=6e3b797d9a2654fa&fccid=5faccd87e403b958&vjs=3	2020-08-30 13:52:41.320334+08	2020-08-30 13:52:41.320355+08
1390	Senior Engineer / Engineer	PSB Technologies Pte Ltd	https://sg.indeed.com/rc/clk?jk=0650cb66b93e6057&fccid=b39bbcce09ac7832&vjs=3	2020-08-30 13:52:43.623275+08	2020-08-30 13:52:43.623298+08
1391	Mobile Application Developer	GLITTERING BOOST DIGITAL PTE. LTD.	https://sg.indeed.com/rc/clk?jk=5f2f836d05ae99f6&fccid=1a50e0129cbcacad&vjs=3	2020-08-30 13:52:45.858932+08	2020-08-30 13:52:45.858953+08
1392	Trainee, Engineer (Materials Science/ Materials Engineering) [#SGUnitedTraineeships]	NANYANG TECHNOLOGICAL UNIVERSITY	https://sg.indeed.com/rc/clk?jk=6fa76f38d4f651e2&fccid=d869ca30ff8bbcdd&vjs=3	2020-08-30 13:52:49.194607+08	2020-08-30 13:52:49.194631+08
1393	Engineer (Geotechnical Instrumentation and Monitoring)	RYOBI GEOTECHNIQUE INTERNATIONAL PTE. LTD.	https://sg.indeed.com/rc/clk?jk=2cfbb836a8e72791&fccid=63653884274eed59&vjs=3	2020-08-30 13:52:51.744345+08	2020-08-30 13:52:51.744367+08
1394	#SGUNITEDJOBS SOFTWARE ENGINEER	XYNDICATE.NETWORK PTE. LTD.	https://sg.indeed.com/rc/clk?jk=11b7c697fd969f76&fccid=17ab4f67b08e8057&vjs=3	2020-08-30 13:52:53.796308+08	2020-08-30 13:52:53.796331+08
1395	Software engineer (Typescript and Java)	Collabera Technologies Private Limited Inc	https://sg.indeed.com/rc/clk?jk=86324e56bfd9975a&fccid=ccd32f626fb21bb9&vjs=3	2020-08-30 13:52:57.292517+08	2020-08-30 13:52:57.292548+08
1396	Head of Service Centre, Chief Engineer	PROJECTOR DOCTOR PTE. LTD.	https://sg.indeed.com/rc/clk?jk=8a00bb7ab586d906&fccid=26fab05510ba1816&vjs=3	2020-08-30 13:52:59.538689+08	2020-08-30 13:52:59.538711+08
1397	DevOps Engineer	Intellect Minds Pte Ltd	https://sg.indeed.com/rc/clk?jk=a8eef070dbd41acb&fccid=a7be9f2e94ab1cbf&vjs=3	2020-08-30 13:53:02.370316+08	2020-08-30 13:53:02.370338+08
1398	Senior Embedded Software Engineer	halcyonknights	https://sg.indeed.com/rc/clk?jk=8b85b007b1dc1b5a&fccid=b11f6a4fa1f7ea2f&vjs=3	2020-08-30 13:53:05.126967+08	2020-08-30 13:53:05.126991+08
1399	Civil & Structural Engineer - Infrastructure	WSH Experts Pte Ltd	https://sg.indeed.com/rc/clk?jk=fd6ba768479ec1b7&fccid=f798939737978427&vjs=3	2020-08-30 13:53:07.760956+08	2020-08-30 13:53:07.760982+08
1400	Research Engineer (Electrical & Electronics Engineering/Mechanical Engineering/Mechatronics Engineering/Computer Science)	Nanyang Technological University	https://sg.indeed.com/rc/clk?jk=2bcefbabbcb619b4&fccid=d869ca30ff8bbcdd&vjs=3	2020-08-30 13:53:09.915577+08	2020-08-30 13:53:09.915599+08
1401	Cyber Security Engineer	Trustwave	https://sg.indeed.com/rc/clk?jk=ef655db7fc260797&fccid=fce3bdf5869957ed&vjs=3	2020-08-30 13:53:13.088297+08	2020-08-30 13:53:13.088319+08
1402	Project Development Engineer#SGUnitedJobs	GLENDALE ELECTRONIC COMPONENTS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=8dfa3ff607a23450&fccid=27125b1a02c12ee5&vjs=3	2020-08-30 13:53:15.032108+08	2020-08-30 13:53:15.032131+08
1403	Senior Software Developer	ASTO SYSTEMS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=47e60d3702716229&fccid=9defece5c0c67318&vjs=3	2020-08-30 13:53:17.194005+08	2020-08-30 13:53:17.194029+08
1404	#SGUnitedJobsDesktop Support Engineer Level 1	ITCAN PTE. LIMITED	https://sg.indeed.com/rc/clk?jk=5a064e0c5638651c&fccid=dac85444d99b91d5&vjs=3	2020-08-30 13:53:19.407029+08	2020-08-30 13:53:19.407058+08
1405	Urgent! Entry Level (Assistant Engineer/ Engineer) - Electrical engineering	RECRUITFLASH PTE. LTD.	https://sg.indeed.com/rc/clk?jk=c0e7a343f456247b&fccid=f74012740d21378a&vjs=3	2020-08-30 13:53:22.647766+08	2020-08-30 13:53:22.647787+08
1406	ICT Network Engineer (Apple Experience Essential)	NORTH LONDON COLLEGIATE SCHOOL (SINGAPORE) PTE. LTD.	https://sg.indeed.com/rc/clk?jk=18706338537a13ad&fccid=335cb8f58e1f4afd&vjs=3	2020-08-30 13:53:25.100326+08	2020-08-30 13:53:25.100348+08
1407	Trading Operations Engineer (Site Reliability/DevOps Engineers)	THREE FINS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=49de9ad2fbdd3bd5&fccid=62f8e2eb291986e6&vjs=3	2020-08-30 13:53:28.01049+08	2020-08-30 13:53:28.010514+08
1408	IT Support Engineer	COLLECTIUS CMS (S) PTE. LTD.	https://sg.indeed.com/rc/clk?jk=03c5cf18b31cd8a0&fccid=9b1d78c82b513aa8&vjs=3	2020-08-30 13:53:30.500515+08	2020-08-30 13:53:30.500546+08
1409	Mechanical Design Engineer #SGUnitedTraineeships	ZIMPLISTIC PRIVATE LIMITED	https://sg.indeed.com/rc/clk?jk=018050ac130cd086&fccid=636f3ecdb2f1079d&vjs=3	2020-08-30 13:53:33.419523+08	2020-08-30 13:53:33.419544+08
1410	#SGUNITEDJOBS SOFTWARE ENGINEER (BACKEND)	TRUSTY CARS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=de812cc69f18b300&fccid=882e44d000cca2da&vjs=3	2020-08-30 13:53:35.651371+08	2020-08-30 13:53:35.651392+08
1411	Principal Engineer (Battery & Powertrain)	ION MOBILITY PTE. LTD.	https://sg.indeed.com/rc/clk?jk=81bb69a65ad55c1b&fccid=b14cb506443d08f0&vjs=3	2020-08-30 13:53:39.919158+08	2020-08-30 13:53:39.919182+08
1412	Backend Developer (Node.js / PHP)	DINDINN CORPORATION PTE. LTD.	https://sg.indeed.com/rc/clk?jk=8b97e78d9e239533&fccid=0fe1a1df4aee0b6f&vjs=3	2020-08-30 13:53:43.344581+08	2020-08-30 13:53:43.344604+08
1413	Assistant Service Engineer - Semiconductor	HR Focus	https://sg.indeed.com/pagead/clk?mo=r&ad=-6NYlbfkN0AbLEAfUJ_8-EnULjJ15l1k6LfB5RD9Ew3x4SlXgqMriw8oywaHohqKNN2KzECKg1k4xtJLQDyaohIL34TozxahXkEX7CjnrsgtiEFarLKvZPm_CV_XfA1izlfM9oxbDDldjsvOHvjMYHfkqLGXG0aBhE8npOvmtYVQ8dx8Dnz3XAg4JMBqP3zG5-ne25won_6xVQZDiZr9Bh3nwjJSWU0fPRmBGfrs7rOushgaZG5sNp-eqs3ugJROHGfaolt-W9UxGO8rCUOKlzEKpVsp84FRvv_9Ib-5qpUlNswaYk27s3eWtcwVT2hwUAkdNPhkMuH3pT-iih5S4hgjdH2rgEtPUcqVCbCwGlJe7fStD3Vc_ePFQrZnHl8nKLqYOuSpFCVTkwjxYl6iXzuW1ZzwdfM3of_SXqzfdehq-dLamDvTyljtvkKQ0bbjWi75fHLgJ5aDs6kLo4Q8-6rIBhHOU2BeQ1cLDO9xFfhXEVPx4oXLt3X9G6H3-ndruszcqnMyCaRW4NORvD5cHwQ2Qviy4fvTiJlEdA46DJu9VVMWiVFgW6rcssXpYZ1QW_j1HYJJZFGGeEn5YP-JwDUzqH1Lybysh3kT7TD-dN9z-NJRmXNtlYcsOQM5NyJOguzkVOwA06JVbWKmqoVQWHGwFTwG8VtkFhMFOUhXxX1b-AcelzB9HbfI9o0JuC6f-SWlbY9REyGpGnM3_F17Hg==&p=11&fvj=0&vjs=3	2020-08-30 13:53:45.394262+08	2020-08-30 13:53:45.394294+08
1414	#SGUNITEDJOBS SOFTWARE ENGINEER (VIDEO AND VOIP)	INNOVAX SYSTEMS PTE LTD	https://sg.indeed.com/rc/clk?jk=2138213517c5253f&fccid=5faccd87e403b958&vjs=3	2020-08-30 13:53:48.19845+08	2020-08-30 13:53:48.19848+08
1415	Professional Services Consultant	Biqmind Pte Ltd	https://sg.indeed.com/rc/clk?jk=acb91fcedec69489&fccid=05df59aa349c0299&vjs=3	2020-08-30 13:53:49.793941+08	2020-08-30 13:53:49.793965+08
1416	Release Manager	RAKUTEN MOBILE SINGAPORE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=0add061b153a6217&fccid=ec50cfb225da8906&vjs=3	2020-08-30 13:53:52.163626+08	2020-08-30 13:53:52.163666+08
1417	Desktop Support Engineer	HKBN JOS (Singapore) Pte Ltd	https://sg.indeed.com/company/HKBN-JOS-(Singapore)-Pte-Ltd/jobs/Desktop-Support-Engineer-70072ff97ab345ad?fccid=62f9154e76ce4b61&vjs=3	2020-08-30 13:53:55.180109+08	2020-08-30 13:53:55.180132+08
1418	Senior Site Reliability Engineer	GP NETWORK ASIA PTE. LTD.	https://sg.indeed.com/rc/clk?jk=c542a046266a3d03&fccid=ee3d6d0b6af35ab6&vjs=3	2020-08-30 13:53:57.616231+08	2020-08-30 13:53:57.616263+08
1419	#SGUNITEDJOBS SENIOR SOFTWARE ENGINEER	SUNNINGDALE TECH LTD.	https://sg.indeed.com/rc/clk?jk=b23b9562c1af906e&fccid=2473a441d15b58f5&vjs=3	2020-08-30 13:53:59.65331+08	2020-08-30 13:53:59.653335+08
1420	Electrical System Engineer	ASM TECHNOLOGY SINGAPORE PTE LTD	https://sg.indeed.com/rc/clk?jk=467becd16da40d9b&fccid=f8696a5e815c7dd0&vjs=3	2020-08-30 13:54:01.767753+08	2020-08-30 13:54:01.767778+08
1421	Mobile Application Developer	Golden Bridge Drive (SG) Pte. Ltd.	https://sg.indeed.com/company/GOLDEN-BRIDGE-DRIVE-(SG)-PTE.-LTD./jobs/Mobile-Application-Developer-2d29f192d27bc588?fccid=6d0189e2cafcebfd&vjs=3	2020-08-30 13:54:03.943964+08	2020-08-30 13:54:03.943988+08
1422	#SGUNITEDJOBS ETL / INFORMATICA DEVELOPER - SOFTWARE ENGINEER	SAKSOFT PTE LIMITED	https://sg.indeed.com/rc/clk?jk=8413d676af7c7687&fccid=71af0fed7c8a7c4a&vjs=3	2020-08-30 13:54:07.340272+08	2020-08-30 13:54:07.340294+08
1423	Onsite Deskside Support Engineer	Thatz Resources Pte Ltd	https://sg.indeed.com/pagead/clk?mo=r&ad=-6NYlbfkN0AbLEAfUJ_8-EnULjJ15l1k6LfB5RD9Ew3x4SlXgqMriw8oywaHohqK_bfr-pESj-g0teQ7nyjSCvACMP1_tLHw8JMXm-T69f-2yRjsDbXP_s-P1ipAhhCsnYCMskvXVU1mc75h4sMKuMjqK3Ko6DB99nmdiRpnz2gpY_bQ0W11wbsbm7NJzta_LrAXU2lXqvF298TWfpBJlzaNTv58boV7DBsvTboNCF_w-LsabKOuDIy8ytq7eM2DM6CvPEReoo16pdQOuYbxv0wf3M76gzg8Kg_uxRRaHHuRgzs-TvD4ZS_lEfX549sHBL5UfS38Xj9mk4HzJ0akaEU8hsiL_YBLJrDLdZMvWXV2hTWEkMxiCNbjlstx8L6BxU3hFFZaJoSWKJggro-YaH-eGsyvhDlgHl9wtu_th28wb3_56ZhQWTAm-0tylvZ7f5XwOj3wqIgf8NZnHADOAC79r0lZCJhqxmLmqfh3DRojwB3clEtLLakBG3nrvDMy7KtEx4n-biEhguRUOpXhVUW09vXGOMv_wvssApHEzLWA4Q3DRdxosmk2uwPj_Z3aHuTSgQE8LA5bdzmXoQVpDnuoyKrN4ZMEcAMKfdJ2q2iGcWcVU0hQs4zjFmzsP7h3pKpB8u0bbx8m0jEBldi_eGlQoYV9nZ_QhpncPmjGY2aPnhAYVME5kg==&p=6&fvj=0&vjs=3	2020-08-30 13:54:09.912901+08	2020-08-30 13:54:09.912923+08
1424	Software Engineer, Agile	ACExcellent Consulting	https://sg.indeed.com/company/ACExcellent-Consulting/jobs/Software-Engineer-2a34dd9f7cb6953d?fccid=620e1e15f37eb7d3&vjs=3	2020-08-30 13:54:11.568071+08	2020-08-30 13:54:11.568094+08
1425	Urgent! Entry Level (Engineer) - Maintenance / JAVA programming	RECRUITFLASH PTE. LTD.	https://sg.indeed.com/rc/clk?jk=c0460049b13ae68d&fccid=f74012740d21378a&vjs=3	2020-08-30 13:54:14.010706+08	2020-08-30 13:54:14.010734+08
1426	Senior Design Engineer #SGUnitedJobs	WESTERN BUILDING GROUP PTE. LTD.	https://sg.indeed.com/rc/clk?jk=3c41f01f95a6dfa6&fccid=120d67cb84eac2c5&vjs=3	2020-08-30 13:54:17.490848+08	2020-08-30 13:54:17.490868+08
1427	#SGUNITEDJOBS SENIOR SOFTWARE ENGINEER	DOW TECHNOLOGIES AND SYSTEMS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=dcb94e6b66bce180&fccid=3c65396b19f16500&vjs=3	2020-08-30 13:54:20.407107+08	2020-08-30 13:54:20.407131+08
1428	Lead DevOps Engineer	Sciente International Pte Ltd	https://sg.indeed.com/rc/clk?jk=097137a0df66ab84&fccid=a176617a4318c18e&vjs=3	2020-08-30 13:54:23.647699+08	2020-08-30 13:54:23.64776+08
1429	#SGUNITEDJOBS TRAINEE (SOFTWARE ENGINEER), ENTERPRISE IT #SGUNITEDTRAINEESHIPS #PUBLICSERVICE	DEFENCE SCIENCE AND TECHNOLOGY AGENCY	https://sg.indeed.com/rc/clk?jk=78d4f1942863401a&fccid=1d79a4290fb70d8e&vjs=3	2020-08-30 13:54:26.453762+08	2020-08-30 13:54:26.453784+08
1430	Product Quality Tester #SGUnitedJobs	ZIMPLISTIC PRIVATE LIMITED	https://sg.indeed.com/rc/clk?jk=118c7a8c1d1a8620&fccid=636f3ecdb2f1079d&vjs=3	2020-08-30 13:54:29.096891+08	2020-08-30 13:54:29.096918+08
1431	IT Support Engineer ( CBD / 5D)	Corestaff Pte Ltd	https://sg.indeed.com/company/Corestaff-Pte-Ltd/jobs/IT-Support-Engineer-485cb6ba8183765a?fccid=9d2768a60c4e2811&vjs=3	2020-08-30 13:54:32.641148+08	2020-08-30 13:54:32.641169+08
1432	Assistant Project Manager	EDLUTION PTE. LTD.	https://sg.indeed.com/rc/clk?jk=1d3ab67fd8480cfe&fccid=2efd89f9ddc3d704&vjs=3	2020-08-30 13:54:35.270998+08	2020-08-30 13:54:35.27102+08
1433	UX Lead (ACE- Gobusiness)	Government Technology Agency	https://sg.indeed.com/rc/clk?jk=2bbda7db0861f43c&fccid=3b9a5811a8b6410b&vjs=3	2020-08-30 13:54:37.45098+08	2020-08-30 13:54:37.451003+08
1434	#SGUNITEDJOBS PRODUCT MANAGER	EPERGNE SOLUTIONS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=93ebdb53a607bcd0&fccid=97393adfa493904d&vjs=3	2020-08-30 13:54:39.731796+08	2020-08-30 13:54:39.731827+08
1435	#SGUNITEDJOBS DESKTOP SUPPORT ENGINEER	JK TECHNOLOGY PTE LTD	https://sg.indeed.com/rc/clk?jk=77ca1ab3982be8d0&fccid=7cd5c9e2a96fa9b3&vjs=3	2020-08-30 13:54:41.431129+08	2020-08-30 13:54:41.431155+08
1436	#SGUNITEDJOBS IT ENGINEER	ZIG VENTURES LIMITED	https://sg.indeed.com/rc/clk?jk=28e27f810b4cd036&fccid=3ce180dbb69c67f0&vjs=3	2020-08-30 13:54:43.813501+08	2020-08-30 13:54:43.813523+08
1437	#SGUNITEDJOBS SOFTWARE ENGINEER (REF 22090)	JOBLINE RESOURCES PTE. LTD.	https://sg.indeed.com/rc/clk?jk=8aba9c5f3246b07c&fccid=08a987b19a93d3a1&vjs=3	2020-08-30 13:54:46.410168+08	2020-08-30 13:54:46.410193+08
1438	ITサポートマネージャー/ Support Manager	PERSOL Singapore	https://sg.indeed.com/rc/clk?jk=c94b7ca98323adbf&fccid=00b9e8b19ea4e0fb&vjs=3	2020-08-30 13:54:49.117353+08	2020-08-30 13:54:49.117375+08
1439	#SGUNITEDJOBS TRADING OPERATIONS ENGINEER (SITE RELIABILITY/DEVOPS ENGINEERS)	THREE FINS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=508001610b3dc5d2&fccid=62f8e2eb291986e6&vjs=3	2020-08-30 13:54:51.188531+08	2020-08-30 13:54:51.188551+08
1440	#SGUNITEDJOBS IT SUPPORT ENGINEER	COLLECTIUS CMS (S) PTE. LTD.	https://sg.indeed.com/rc/clk?jk=2f4bf4df44e6cce4&fccid=9b1d78c82b513aa8&vjs=3	2020-08-30 13:54:53.233003+08	2020-08-30 13:54:53.233028+08
1468	Site Support Engineer	Trakomatic Pte Ltd	https://sg.indeed.com/company/Trakomatic-Pte-Ltd/jobs/Site-Support-Engineer-4a5b39c27cd359e1?fccid=4d839107a7977687&vjs=3	2020-08-30 13:56:08.91201+08	2020-08-30 13:56:08.912032+08
1469	PROJECT ENGINEER	Cummins Inc.	https://sg.indeed.com/rc/clk?jk=829466215721a069&fccid=36ccedc5bfdf19b1&vjs=3	2020-08-30 13:56:12.13253+08	2020-08-30 13:56:12.132551+08
1441	System Engineer	GMP TECHNOLOGIES S PTE LTD	https://sg.indeed.com/pagead/clk?mo=r&ad=-6NYlbfkN0AbLEAfUJ_8-EnULjJ15l1k6LfB5RD9Ew3x4SlXgqMriw8oywaHohqKNN2KzECKg1k4xtJLQDyaov9pKgKlj_fmktwd3HPwzWir-sMBO2nkgZafMcfgn-zHgS7iHvmM5gsft7YjhHhmzMkDCvAMbvjIY4lFbuKLSq1OE2s9sbrPUHu009VdyH0zuxJ_f30HYIfp60d-WV31zGn3OBfQHzTRli3I8-CRj3LkM1I7y-jYDBn8rJfu_6MrVimZSADif672uhQmbYhPa0RbnHNTPLDCAgGdkhG9hz6-UyUYJl8mmyEWVW7hecDhHB9WZIhFAin6JuHz_SydMfWpTPcJRVFiSf4mAhhhu_ZXXgfYHNEwG4H7nNn8Vak2-3X2S1pUwZhSYqjNsL9LR29kIVX0zwMz6F20bqhxNbh1nLsqVh7ANoW-RgfJtrftepdthxxBe05VQW2NitQp7JsZnFsMjgDF5P2UcpVlqR07AuGO0e4TnnpcANvB_DtCQe98ZMOfgrPvbldUC5WIS1JkIVV9dT8QXRzqS9ZmnC9k69BqIxZGCLW-h9lisoXdBQcLNkEpGUwG4FAnjPUI3EytWvmgtGwQcdrzQRHAeHmVdBPr1PKb5yaVrWE4XNcMtrR9QGVyBd05GKNUIK94xjrXS_LOps3TEBFt9bKm4Qx6IN-UAX5rGQLN2DdC_P19&p=9&fvj=0&vjs=3	2020-08-30 13:54:55.995351+08	2020-08-30 13:54:55.995373+08
1442	#SGUNITEDJOBS HEAD OF SERVICE CENTRE, CHIEF ENGINEER	PROJECTOR DOCTOR PTE. LTD.	https://sg.indeed.com/rc/clk?jk=622255e6891038fa&fccid=26fab05510ba1816&vjs=3	2020-08-30 13:54:58.869498+08	2020-08-30 13:54:58.86952+08
1443	#SGUNITEDJOBS DELTAV BATCH ENGINEER	ZENTEK ENGINEERING PTE. LTD.	https://sg.indeed.com/rc/clk?jk=2026d844955bd0a5&fccid=df84dd6587d424d8&vjs=3	2020-08-30 13:55:01.364244+08	2020-08-30 13:55:01.364266+08
1444	#SGUNITEDJOBS AI/ML ENGINEER	EPERGNE SOLUTIONS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=4ae73345b0a38b19&fccid=97393adfa493904d&vjs=3	2020-08-30 13:55:04.263184+08	2020-08-30 13:55:04.263206+08
1445	#SGUNITEDJOBS NEOXAM / GOLDEN SOURCE / SENIOR SOFTWARE ENGINEER	SAKSOFT PTE LIMITED	https://sg.indeed.com/rc/clk?jk=d47ee9603ed866e5&fccid=71af0fed7c8a7c4a&vjs=3	2020-08-30 13:55:07.392711+08	2020-08-30 13:55:07.392735+08
1446	Research Engineer (contract till 31 August 2021), School of Information Systems	STAFFONDEMAND PTE. LTD.	https://sg.indeed.com/rc/clk?jk=61341c7d71650a0b&fccid=576bb8f56c826ae6&vjs=3	2020-08-30 13:55:10.308634+08	2020-08-30 13:55:10.308657+08
1447	Senior Technical Product Manager	BitTitan	https://sg.indeed.com/rc/clk?jk=d68d052960d0acf8&fccid=ec4e318dcca5fa55&vjs=3	2020-08-30 13:55:11.935809+08	2020-08-30 13:55:11.935829+08
1448	Systems Analyst	Thatz Resources Pte Ltd	https://sg.indeed.com/pagead/clk?mo=r&ad=-6NYlbfkN0AbLEAfUJ_8-EnULjJ15l1k6LfB5RD9Ew3x4SlXgqMriw8oywaHohqK_bfr-pESj-g0teQ7nyjSCsm9VHrRONnR_EOZtKNQuNfWwQJTGJMnX2tUDtu1mfmlHNZHVG7GfiSIkSWeSCU-g-mKgyE6IeEHtLSr6XooLjrQYxMfWOn6WgvhypVYpgJ80VkMl13IWhEqyE1NbcxPbUwPS6v8jl3T-UM6819R3n2SrVkKgEKdtivI_9oMlaaQQC0susRoNYLWkEz79hDpTEeSWtwjyI_mi4vHOBX8pxoHfpZ4R1G1AQKlCPVdbYRmwzvshjEaakjRG25isOu7v0zlXeg9Nx1NfUBflU9fDhZgcvpTlEn5mdSLvpJ_4EqH9Y25Z3it6f2rMnDdmS30bv5fwKEoB7SSDadfJhV_Bu7zkivDPg8lN0p3qMD4Y8-8c__31698O1xmyqs0AG7XZjxpV_DjpvFUMcQFuDHJzVGw10t2iH93GMgpHXkcPekk-zbQARjIuLNuxFbQLskYSeFlk6p9NbsucAEZw91sWq4e-IAu9Qe9Kx3Bpizy3WKCUyN-NawLkupij970V95Zu6okpybj6rcubLM2p-XRbALi3eGQD0c9yPuArA-FZ4TOOdo2L3uMvIarRBDLgA3R8UC3NSTezp7a6Zfkdnf-LGHdEvKP706BqZi0w5P7HPMs_-IHABiMMFQWkO4G6b1OG-04aUanj51i&p=1&fvj=0&vjs=3	2020-08-30 13:55:14.692708+08	2020-08-30 13:55:14.692729+08
1449	#SGUNITEDJOBS SOFTWARE ENGINEERS #SGUNITEDTRAINEESHIPS	VIZZIO TECHNOLOGIES PTE. LTD.	https://sg.indeed.com/rc/clk?jk=2b51d35e5394e2bb&fccid=43f48c432d54e188&vjs=3	2020-08-30 13:55:16.791859+08	2020-08-30 13:55:16.791883+08
1450	#SGUNITEDJOBS IT SUPPORT ENGINEER	FUNCTIONEIGHT PTE. LTD.	https://sg.indeed.com/rc/clk?jk=704c63172d91aebe&fccid=5fa59d279f83f820&vjs=3	2020-08-30 13:55:19.049493+08	2020-08-30 13:55:19.049515+08
1451	#SGUNITEDJOBS ASSISTANT PROJECT MANAGER	EDLUTION PTE. LTD.	https://sg.indeed.com/rc/clk?jk=929c9bd3d755913a&fccid=2efd89f9ddc3d704&vjs=3	2020-08-30 13:55:21.350847+08	2020-08-30 13:55:21.35088+08
1452	#SGUNITEDJOBS JUNIOR BACKEND DEVELOPER	BANDLAB SINGAPORE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=3027e1836fc0af08&fccid=d743ec8bd38eaf79&vjs=3	2020-08-30 13:55:23.005565+08	2020-08-30 13:55:23.005591+08
1453	#SGUNITEDJOBS SYSTEMS ENGINEER	INNOVAX SYSTEMS PTE LTD	https://sg.indeed.com/rc/clk?jk=ec3a2ecf4f887423&fccid=5faccd87e403b958&vjs=3	2020-08-30 13:55:25.842216+08	2020-08-30 13:55:25.842242+08
1454	Senior / Project Engineer, Broadcast Engineering	Mediacorp Pte Ltd	https://sg.indeed.com/rc/clk?jk=4efbc9608806e4bf&fccid=73355aa9eb8e367d&vjs=3	2020-08-30 13:55:33.493173+08	2020-08-30 13:55:33.493198+08
1455	Senior Application Designer - Lead/Senior UX Designer	PALO IT SINGAPORE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=7cca6b137d125dbe&fccid=5c0b07d8baa81b80&vjs=3	2020-08-30 13:55:36.827064+08	2020-08-30 13:55:36.827088+08
1456	#SGUNITEDJOBS ICT NETWORK ENGINEER (APPLE EXPERIENCE ESSENTIAL)	NORTH LONDON COLLEGIATE SCHOOL (SINGAPORE) PTE. LTD.	https://sg.indeed.com/rc/clk?jk=c73175ea10cb2a38&fccid=335cb8f58e1f4afd&vjs=3	2020-08-30 13:55:39.466951+08	2020-08-30 13:55:39.466975+08
1457	Senior Product Designer / Product Design Lead	SL8 PTE. LTD.	https://sg.indeed.com/rc/clk?jk=f2ee5afb05678806&fccid=1265b4c86365c504&vjs=3	2020-08-30 13:55:42.388186+08	2020-08-30 13:55:42.388209+08
1458	Technical Officer, Maintenance	GMP TECHNOLOGIES S PTE LTD	https://sg.indeed.com/pagead/clk?mo=r&ad=-6NYlbfkN0AbLEAfUJ_8-EnULjJ15l1k6LfB5RD9Ew3x4SlXgqMriw8oywaHohqKNN2KzECKg1k4xtJLQDyaoqmFzhLr1vyu4VH9jvxmgmwmPRNw6mzoJn8wd9bQbXAFrrSPvJTHaTNAkijnHnKE8XF-ApXv0WQkPxGjQuza2LQI4ORMpqSSGaT5-VHD5UWisYynYFXdvgs1VjEttN4GXFnhlHsDbok9rSL8Y2Ue-J3VnKLXeTtVx76g0cmHuoj_a31kLK86j2UMdjkwEPHDYmQTlaRyN1SET914_Rv5e9n_lFdTiP_FsOwKp97QPsDZMTamVFBnNKfqCdQ_LLI8Jivky-i-Lig7-DB18ptuYxDGk_OtwcfvCSBGnQtz3e9r7b78pke7ji6k7UvTZPszY4ruMs0bB8A0CZXP8sMzoVDSB20gtvnvicgyQoBdyXjjTiebFIs7lBJbEOzHQ2aCb79Prxgh81CUcMsfsBSQa9ehPxy8swNq34jDmA_Fq9ir2Xsze2Mm31DMrP-h_An-di7vw_ypv7s4otHkb9j4xxfOPPTj-vyUwnYI-Unst8DUyn6el28QcA-C6p2W4lBizUocBm0H7TyigunhSYA1ynzA3zX7S2s3BfYMQVEX7u6iL_Tb002fyWDoK51ax6fNwIIbUBFscbwYOop5o0yH2SbKokYU0xsxj_FZtpOZ4jqF&p=11&fvj=0&vjs=3	2020-08-30 13:55:45.026886+08	2020-08-30 13:55:45.026911+08
1459	Senior Site Reliability Engineer, FinTech Company	Kerry Consulting	https://sg.indeed.com/rc/clk?jk=81d11e137ee78940&fccid=c3b48867b38a4976&vjs=3	2020-08-30 13:55:47.869673+08	2020-08-30 13:55:47.869695+08
1460	#SGUNITEDJOBS IT BUSINESS ANALYST	SOFTENGER (SINGAPORE) PTE. LTD.	https://sg.indeed.com/rc/clk?jk=73a7ed435cfdb277&fccid=6e5b733c11c153b8&vjs=3	2020-08-30 13:55:49.852429+08	2020-08-30 13:55:49.852451+08
1461	#SGUNITEDJOBS BACKEND DEVELOPER (NODE.JS / PHP)	DINDINN CORPORATION PTE. LTD.	https://sg.indeed.com/rc/clk?jk=c1bdef3ee3390c11&fccid=0fe1a1df4aee0b6f&vjs=3	2020-08-30 13:55:52.682186+08	2020-08-30 13:55:52.682207+08
1462	Business System Analyst Lead	Aryan Solutions Pte Ltd	https://sg.indeed.com/pagead/clk?mo=r&ad=-6NYlbfkN0AbLEAfUJ_8-EnULjJ15l1k6LfB5RD9Ew3x4SlXgqMriw8oywaHohqK_bfr-pESj-g0teQ7nyjSCinigGvB84FBU-rS7MRgeV2a-V409Ni2WVuwONi1ryHen0M1gDV3xuv3rjXs3x5azZ_7CYeACYLPGl2Qm0WTFhBHWnPyx_Und-C-c41X9pp4FbJSZkk6oYJq9HtpgvZcoNzsrtC-WYUxLNZkq9f_NljLFHDXjKbEF65vhEj02Z-aC_nKIAGg0RP3fXRvqVPk9eHO7zMCs9bbUuvEeEpeHwIOFKlcJgd8X6JAqQp5WaAdgPrRcYVfhagslC1jzf8P959XtMexXEdnckZsgL4_tBPqivKY_WwOdp7hcIqCRQd11QutQZ7Ppn77JkgZTqg_iQ4ht6E1QaYguzGRn9-PIIPLmtfWuC0pgL5tPW9QTjCvjfv1eV9M_Rn_FoFje4Znwq-SzN7tyPFiasepFtwccJaYR-9QNi-e0Y1u6GOjRWTV7Q1lGa-KKnOYRRKnvtkAD838nyh3ZkiTYobmKXpMbZO_kIzV-dpOpaiTfnMABPtkYl-GD15oMkZAZZ7sGfrE0nfv2vSolLJmyHlda-mhyANZenqQWJCMLYxvLJM0u-j8GsiOqvc23AoXb5AgGgKplLFobyM_w-tT6SkhpgxdkxI=&p=0&fvj=0&vjs=3	2020-08-30 13:55:56.121113+08	2020-08-30 13:55:56.121135+08
1463	#SGUNITEDJOBS SENIOR APPLICATION DESIGNER - LEAD/SENIOR UX DESIGNER	PALO IT SINGAPORE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=ad993591067b2386&fccid=5c0b07d8baa81b80&vjs=3	2020-08-30 13:55:57.94952+08	2020-08-30 13:55:57.949541+08
1464	Operations Software Engineer	Novelship	https://sg.indeed.com/company/NovelShip/jobs/Operation-Software-Engineer-c2174548e2192103?fccid=b64928317b728694&vjs=3	2020-08-30 13:55:59.481688+08	2020-08-30 13:55:59.481717+08
1465	Software Engineer	PayPal	https://sg.indeed.com/rc/clk?jk=abd1a38dc06ffe9e&fccid=978d9fd9799d55a8&vjs=3	2020-08-30 13:56:02.045553+08	2020-08-30 13:56:02.045574+08
1466	Staff Software Engineer	Visa	https://sg.indeed.com/rc/clk?jk=f6416ec69da6fd73&fccid=a3f737e511d9fc8c&vjs=3	2020-08-30 13:56:04.304119+08	2020-08-30 13:56:04.304151+08
1467	Software Engineer (Java)	EPAM Systems	https://sg.indeed.com/rc/clk?jk=cb78fdf90f1761a6&fccid=532afac41b2663f7&vjs=3	2020-08-30 13:56:06.190537+08	2020-08-30 13:56:06.190567+08
1470	(109) .Net Software Engineer / .Net Senior Software Engineer	IT Consultancy & Services Pte Ltd	https://sg.indeed.com/company/Client-(Auditing-Firm)/jobs/Net-Software-Engineer-d1aba852114cdb79?fccid=02ed0bd00e6eed50&vjs=3	2020-08-30 13:56:13.663876+08	2020-08-30 13:56:13.663896+08
1471	VoIP Systems Engineer	CME Group	https://sg.indeed.com/rc/clk?jk=871ac8f89d3c08bf&fccid=5a3ef63f55aa5ca2&vjs=3	2020-08-30 13:56:16.408977+08	2020-08-30 13:56:16.409002+08
1472	Maintenance Engineer (f/m/d)	Lodige Industries	https://sg.indeed.com/rc/clk?jk=f1894d2be67691fb&fccid=25d236a57a160073&vjs=3	2020-08-30 13:56:18.662927+08	2020-08-30 13:56:18.662949+08
1473	Software Engineer and Analyst	FLINTEX CONSULTING PTE. LTD.	https://sg.indeed.com/rc/clk?jk=ac81c27e7a81967e&fccid=f89f84387a059028&vjs=3	2020-08-30 13:56:21.745861+08	2020-08-30 13:56:21.745892+08
1474	SOFTWARE ENGINEER	SUPREME INFOCOMM (S) PTE. LTD.	https://sg.indeed.com/rc/clk?jk=ec98561771c73e61&fccid=612a53e7d0d1e5ef&vjs=3	2020-08-30 13:56:24.535582+08	2020-08-30 13:56:24.535607+08
1475	Technical Support Engineer	Viskou System Pte Ltd	https://sg.indeed.com/company/VISKOU-TECHNOLOGY-SDN.-BHD./jobs/Technical-Support-Engineer-56455483cb6a714c?fccid=7863203747d4799d&vjs=3	2020-08-30 13:56:26.591573+08	2020-08-30 13:56:26.591599+08
1476	IT Support Engineer	Donna Beauty Pte Ltd	https://sg.indeed.com/company/Donna-Beauty-Pte-Ltd/jobs/IT-Support-Engineer-1c792c60cd624d28?fccid=41b02f2706f1d986&vjs=3	2020-08-30 13:56:29.817148+08	2020-08-30 13:56:29.817178+08
1477	Software Design Engineer [Motion Control]	VISIONAIRES RECRUITMENT AGENCY PRIVATE LIMITED	https://sg.indeed.com/rc/clk?jk=4854185f67ec7557&fccid=fadee5ecf35c00d6&vjs=3	2020-08-30 13:56:31.644849+08	2020-08-30 13:56:31.644873+08
1478	Senior Software Engineer	OakTree Consulting	https://sg.indeed.com/rc/clk?jk=68cc4ae3a52b1316&fccid=bb3d64a90b2ff3fa&vjs=3	2020-08-30 13:56:33.173144+08	2020-08-30 13:56:33.173165+08
1479	Associate Engineer	Singtel	https://sg.indeed.com/rc/clk?jk=4098dd2f17a7eec0&fccid=a94c6bb50f118c9f&vjs=3	2020-08-30 13:56:35.396726+08	2020-08-30 13:56:35.39675+08
1480	Solutions Engineer, WhatsApp (Indonesia)	Facebook	https://sg.indeed.com/rc/clk?jk=32a8d99e90926cf4&fccid=1639254ea84748b5&vjs=3	2020-08-30 13:56:38.119443+08	2020-08-30 13:56:38.119466+08
1481	Senior Software Engineer (React JS)	OAKTREE CONSULTING	https://sg.indeed.com/rc/clk?jk=4baf6429093f8c6b&fccid=bb3d64a90b2ff3fa&vjs=3	2020-08-30 13:56:41.300341+08	2020-08-30 13:56:41.300362+08
1482	SOFTWARE ENGINEER	MONA COMPUTER SYSTEMS (S) PTE LTD	https://sg.indeed.com/rc/clk?jk=bb297522e10e7546&fccid=c39de4053812cfc8&vjs=3	2020-08-30 13:56:44.489572+08	2020-08-30 13:56:44.489604+08
1483	Support Engineer	Ericsson	https://sg.indeed.com/rc/clk?jk=b09bd4b360f3603b&fccid=82656d64a9a3e6a7&vjs=3	2020-08-30 13:56:47.260012+08	2020-08-30 13:56:47.260046+08
1484	Inside Sales Representative Singapore,	VMware	https://sg.indeed.com/rc/clk?jk=87e546a4cd4f17c1&fccid=c762a27145bd166e&vjs=3	2020-08-30 13:56:49.691973+08	2020-08-30 13:56:49.692001+08
1485	Software Engineer/ Senior Engineer, Enterprise IT	Defence Science and Technology Agency	https://sg.indeed.com/rc/clk?jk=ab55b66606828147&fccid=1d79a4290fb70d8e&vjs=3	2020-08-30 13:56:53.148048+08	2020-08-30 13:56:53.148088+08
1486	Ref: 122110 - Senior Software Engineer - Backend (1-Year Agency Contract)	Singtel	https://sg.indeed.com/rc/clk?jk=433bb6c4ef45f783&fccid=a94c6bb50f118c9f&vjs=3	2020-08-30 13:56:55.480651+08	2020-08-30 13:56:55.480673+08
1487	QA Engineer	Total eBiz Solutions Pte. Ltd	https://sg.indeed.com/rc/clk?jk=dc9ccba56f64e591&fccid=55ff183c3998b9d4&vjs=3	2020-08-30 13:56:57.058052+08	2020-08-30 13:56:57.058076+08
1488	Mechanical Design Engineer	Rotimatic	https://sg.indeed.com/rc/clk?jk=a6e2528905c04f31&fccid=a355af7b3ff4da08&vjs=3	2020-08-30 13:56:58.609044+08	2020-08-30 13:56:58.609066+08
1489	Senior Software Engineer (Java & IoT)	Eames Consulting	https://sg.indeed.com/pagead/clk?mo=r&ad=-6NYlbfkN0BBhZYZZ7bY_Q2-fWzXB8nQYCzWpr80zNz3fSsAHgtb9vabgVJZ27a7wT5esBRSfctagfOSdhd1Uht1bdBt-L_IevKjfupGQyEj35D-5IBvCwCgEUoGNPzxEikFHpDyU0gNqWweaPdzjrlAs0XURrKa36Rll57YiJLvLAJk9HXKYOjyZ-lU0n7r07y-MA7XbiWzIda-eih2GiRqdNyi8D87OOs95WMexvuDXGN2e0tS8cKwhG7qZNi_PqouHumCOtQZ2qZ-Q_M_vl7yQmQgzlkAz1csZpVM3FIXLHq984ITTMVK5QjDABMR1u836hLRYcLGHhrnLLbAiaSvb7yx-FFaLNCSxTBbx4ILO1BjPl6F5huwzZlfM0cR_u1Jc185Dd6jsy72j56t2RPsoGUK51q_iwJ-EhNP3W8TAPvjVGJDfreEZuLL5j8P2N6UireM-hzJVXpzPInS7J3-1XObZVpI1WZDmZa7N5GriR8QWs3X39j7dVGpo_Uk4UFtzpmghZHWMUbTB1BQviDo53UGIIRCab-zFBez6qZhulZVyzu62oeKrUnB1ftSXhaRXsLog31y_LUF_DmhEaqkEz708V5UFq8lo8k0gF_2GvfGe3SdlbXPeMmq5Ij_rBIZM2DRkHrQpvDMZ60j1eB9xlitYDFcZvWIz6-iXNJFC21D8UJdScr8WwYs_I6vSmldz0veXb_j80jNi0UKcA==&p=12&fvj=0&vjs=3	2020-08-30 13:57:01.450245+08	2020-08-30 13:57:01.450268+08
1490	Inventory Operations Engineer	Twilio	https://sg.indeed.com/rc/clk?jk=962a3e3a33812856&fccid=2cd10564780b27e2&vjs=3	2020-08-30 13:57:05.558604+08	2020-08-30 13:57:05.558629+08
1491	Software Design Engineer (Semiconductor / Automation / C++)	VISIONAIRES RECRUITMENT AGENCY PRIVATE LIMITED	https://sg.indeed.com/rc/clk?jk=ae1da27cb1809ce3&fccid=fadee5ecf35c00d6&vjs=3	2020-08-30 13:57:08.697206+08	2020-08-30 13:57:08.69723+08
1492	Manufacturing Operator	Silicon Labs	https://sg.indeed.com/rc/clk?jk=54178d15396a5681&fccid=46437b5e9e684d4a&vjs=3	2020-08-30 13:57:12.046837+08	2020-08-30 13:57:12.046869+08
1493	Senior Software Engineer - Backend (PHP/Golang)	WECHAIN FINTECH PTE. LTD.	https://sg.indeed.com/rc/clk?jk=643d20bdc690a2fe&fccid=209e917e3b6599e9&vjs=3	2020-08-30 13:57:14.390297+08	2020-08-30 13:57:14.390329+08
1494	Solutions Engineer (Cloudlfare Teams)	CLOUDFLARE, PTE. LTD.	https://sg.indeed.com/rc/clk?jk=d6fe9ad770296abb&fccid=c57da989524f65e7&vjs=3	2020-08-30 13:57:17.333858+08	2020-08-30 13:57:17.333881+08
1495	Network Engineer	Company Confidential	https://sg.indeed.com/pagead/clk?mo=r&ad=-6NYlbfkN0DNHpLqAaVRuzWRNyPevW9ZpedY5KjY-iw4GyqO-VdA8pa9tcq8z122KEbfBRz2KJc1yvhh-CQJ44MP30W-VjZZ6tYX3Rl88mjSjIPEWFOzINpeGskSm6HwS2d6IpD4_XV1fJ2AlHUGm9MThICmXejdQpa6fXAvwvsZcKpjXAP8EOEBimBDlGKz-Abjb5U7qe6isSWN1V1d1Mhhhf0UYdNAd5OW9QyuswfvAgCIPO_xzViZbTMTf79wxk7QjbjmRU52pJ_tlNRWMQESTAvnq0ChGE0wSGKYRIJpZSRn4XkVFZdh5bMyL_nlefeOYW_ENOTJy6TktxRBYb1LJb86lxMCsHZNRkUDLF5Es4Cdw76mxoTQj-a17_q-RtpwiAPwqGLw139ym12hQ8F6piC1lm5O3qoEOOQ3dtTBuG-Bn8egNa6JnG84wHPCDoWWkjmPVVoQxoBX4IyviN5ZevOb4p3ZPHjxJBwbnAFelFwFPvZ2iQ==&p=3&fvj=0&vjs=3	2020-08-30 13:57:20.881329+08	2020-08-30 13:57:20.881351+08
1496	Kubernetes Engineer	Keyteo Consulting	https://sg.indeed.com/pagead/clk?mo=r&ad=-6NYlbfkN0BBhZYZZ7bY_Q2-fWzXB8nQYCzWpr80zNz3fSsAHgtb9vabgVJZ27a7wT5esBRSfcspgHxjSVlFIze2PV38G6KzMLIn1Bv9d3cFbRvOfmHS51AADKpiZDpN-6rTs4uJw9BNPSL5wRpDxtPC-W8yXr6cKoRENo2WNCk1pJKlSu31v4-_1vn9vyiEuWoA4X8_5PQGDOzbjsLTBR1jGwhWUcBDQvam0bf1b0dE_HcQaB7JgN6fdoAZKcwGXVeJ-1p-ov5nK8pvKi1TRVftSxZUsmAT_IwnLhJoMDiaNnGg_yRftezAp2XxA3tz_7VJ44S82uh9WoUAT-kMJ6WnLqiM89s8wka_jTggtIwlRHWq6ijUg3gCg56q8GP704Xm3mEg6EgNyrXQtFJrP6JV85tHNwVwbOKt7wXSaX3D8vaEqVAOy0SJb7arusxPqdeRGlj8osCSJ_qHMuq5SBxqRYob_Gl17rfGHRVScwvLbYQeuIPCQQgSDB8uCwUuVvlMqe280V-FAegADSkK5V1NSpM775SWCZmZGyoszXZffKjwX2C1Z52XCkgDzSqUy9JYsLxV5HOwQrkk2ZvvQC88mRurw45MhLWlBs703G5ZMwduP9SNtqILE6rzAvtI0mmu0QAr-qyg3Hyxaegv1p5JsGnR_ehqr4o8Af5Ea3kU870B9CaEq9coaZugzWxF&p=4&fvj=0&vjs=3	2020-08-30 13:57:24.187371+08	2020-08-30 13:57:24.187393+08
1497	2020 Fall/Winter Internship: Data Platform Software Intern (Front-End)	Motional	https://sg.indeed.com/rc/clk?jk=914ada16717c9496&fccid=86e1d3bf79028267&vjs=3	2020-08-30 13:57:26.51267+08	2020-08-30 13:57:26.512702+08
1498	Maintenance Engineer (Penjuru)	Schneider Electric	https://sg.indeed.com/rc/clk?jk=06ddb98ca051e704&fccid=8dc4399ddb463d4a&vjs=3	2020-08-30 13:57:28.905009+08	2020-08-30 13:57:28.905031+08
1499	Desktop Support Engineer	ITCAN Pte Ltd	https://sg.indeed.com/company/ITCAN-Pte-Ltd/jobs/Desktop-Support-Engineer-d305961455972448?fccid=dac85444d99b91d5&vjs=3	2020-08-30 13:57:30.438288+08	2020-08-30 13:57:30.438315+08
1500	(109) Java Software Engineers / Senior Java Software Engineers	IT Consultancy & Services Pte Ltd	https://sg.indeed.com/company/Client-(Auditing-Firm)/jobs/Java-Software-Engineer-1b5b05a48ae46e5a?fccid=02ed0bd00e6eed50&vjs=3	2020-08-30 13:57:32.384402+08	2020-08-30 13:57:32.384433+08
1501	Technical Engineer Onsite	HEMMERSBACH SINGAPORE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=6cd2306394f0f8ed&fccid=352ff9cbf6aebe7e&vjs=3	2020-08-30 13:57:34.186659+08	2020-08-30 13:57:34.18668+08
1502	Systems Engineer(UNIX _Middleware)	ENSOFT SDN BHD	https://sg.indeed.com/company/ENSOFT-SDN-BHD/jobs/System-Engineer-25c8529791bccd98?fccid=1bb9551c80071577&vjs=3	2020-08-30 13:57:36.83424+08	2020-08-30 13:57:36.834436+08
1503	Intern, Test and QA	Yara	https://sg.indeed.com/rc/clk?jk=878a4667dd6bc89c&fccid=dd94afe68cf83140&vjs=3	2020-08-30 13:57:39.945198+08	2020-08-30 13:57:39.945221+08
1504	Senior Software Engineer (Backend)	ADVANCE INTELLIGENCE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=f54e6c94a3a18aed&fccid=3dd38fd36d314f13&vjs=3	2020-08-30 13:57:42.587938+08	2020-08-30 13:57:42.587961+08
1505	WebGL Software Engineer	APPLABX PTE. LTD.	https://sg.indeed.com/rc/clk?jk=17108a18fb011f10&fccid=16775b2a5dfd9a19&vjs=3	2020-08-30 13:57:45.203266+08	2020-08-30 13:57:45.2033+08
1506	Sr. SW Engineer	Visa	https://sg.indeed.com/rc/clk?jk=b24cfaa193bc1632&fccid=a3f737e511d9fc8c&vjs=3	2020-08-30 13:57:48.054021+08	2020-08-30 13:57:48.054064+08
1507	Software Engineer (Embedded)	OAKTREE CONSULTING	https://sg.indeed.com/rc/clk?jk=b273e512062a9e1a&fccid=bb3d64a90b2ff3fa&vjs=3	2020-08-30 13:57:51.606381+08	2020-08-30 13:57:51.606404+08
1508	#SGUNITEDJOBS SOFTWARE ENGINEER	TIKTOK PTE. LTD.	https://sg.indeed.com/rc/clk?jk=c12bd2909e04dcbb&fccid=3de77e3672597026&vjs=3	2020-08-30 13:57:53.774301+08	2020-08-30 13:57:53.774325+08
1509	Software Testing Engineer #SGUnitedJobs	PEOPLEBANK SINGAPORE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=ad4e99784279fcf9&fccid=2af2cfa0f62874dc&vjs=3	2020-08-30 13:57:59.5335+08	2020-08-30 13:57:59.533531+08
1510	#SGUNITEDJOBS SENIOR SOFTWARE DEVELOPMENT ENGINEER	KYDON HOLDINGS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=036b8abd3350decb&fccid=85d1219f0060f951&vjs=3	2020-08-30 13:58:01.603591+08	2020-08-30 13:58:01.603615+08
1511	Software Engineer	Jobline Resources Pte Ltd	https://sg.indeed.com/rc/clk?jk=9746af36004c701d&fccid=08a987b19a93d3a1&vjs=3	2020-08-30 13:58:04.280474+08	2020-08-30 13:58:04.280497+08
1512	Product Manager	NCS	https://sg.indeed.com/rc/clk?jk=c897271b2b1f5cd6&fccid=c77d71a30fae8ad4&vjs=3	2020-08-30 13:58:07.386574+08	2020-08-30 13:58:07.386595+08
1513	IT System Engineer	ANVERON CONSULTANCY PTE. LTD.	https://sg.indeed.com/rc/clk?jk=be84fa130b1b5f45&fccid=ce786669089dfa4e&vjs=3	2020-08-30 13:58:10.012287+08	2020-08-30 13:58:10.01231+08
1514	Senior Software Development Engineer	KYDON HOLDINGS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=887a1e6fb1ee0592&fccid=85d1219f0060f951&vjs=3	2020-08-30 13:58:13.846707+08	2020-08-30 13:58:13.846728+08
1515	Proposal Engineer	FESTO PRIVATE LIMITED	https://sg.indeed.com/rc/clk?jk=6c5e84cdcc48abb5&fccid=8e54daf2c4ee3a9a&vjs=3	2020-08-30 13:58:16.677098+08	2020-08-30 13:58:16.677119+08
1516	Engineer	ONE SMART ENGINEERING PTE. LTD.	https://sg.indeed.com/rc/clk?jk=38d097535b4d1a56&fccid=c39c9b1b50f93988&vjs=3	2020-08-30 13:58:18.567034+08	2020-08-30 13:58:18.567055+08
1517	Trainee, R&D Engineer Trainee [#SGUnitedTraineeships]	NANYANG TECHNOLOGICAL UNIVERSITY	https://sg.indeed.com/rc/clk?jk=6569e9b501422a6e&fccid=d869ca30ff8bbcdd&vjs=3	2020-08-30 13:58:21.606983+08	2020-08-30 13:58:21.607007+08
1518	Marketing Technology Data Engineer (Salesforce)	STAFFONDEMAND PTE. LTD.	https://sg.indeed.com/rc/clk?jk=49c7435582379a3a&fccid=576bb8f56c826ae6&vjs=3	2020-08-30 13:58:24.543531+08	2020-08-30 13:58:24.543552+08
1519	#SGUNITEDJOBS SENIOR SOFTWARE ENGINEER (REACT JS)	OAKTREE CONSULTING	https://sg.indeed.com/rc/clk?jk=031e8b0f40453b64&fccid=bb3d64a90b2ff3fa&vjs=3	2020-08-30 13:58:26.805845+08	2020-08-30 13:58:26.805867+08
1520	#SGUNITEDJOBS SOFTWARE ENGINEER AND ANALYST	FLINTEX CONSULTING PTE. LTD.	https://sg.indeed.com/rc/clk?jk=c3ba109185e7a442&fccid=f89f84387a059028&vjs=3	2020-08-30 13:58:28.884197+08	2020-08-30 13:58:28.884218+08
1521	Senior Weight Control Engineer	AIBEL PTE. LTD.	https://sg.indeed.com/rc/clk?jk=66fe3b0dcaa88a4c&fccid=ec4d8f196beed6d9&vjs=3	2020-08-30 13:58:31.827859+08	2020-08-30 13:58:31.827884+08
1522	Trainee, R&D Engineer [#SGUnitedTraineeships]	NANYANG TECHNOLOGICAL UNIVERSITY	https://sg.indeed.com/rc/clk?jk=7bfeebccc53ae6be&fccid=d869ca30ff8bbcdd&vjs=3	2020-08-30 13:58:34.986377+08	2020-08-30 13:58:34.986398+08
1523	DevOps Engineer	DATASPARK PTE. LTD.	https://sg.indeed.com/rc/clk?jk=956af651c1e52bf8&fccid=16a97192ec2a222a&vjs=3	2020-08-30 13:58:37.687848+08	2020-08-30 13:58:37.687887+08
1524	Software Engineer (1 year contract)	PEOPLEFIRST HR CONSULTANCY PTE. LTD.	https://sg.indeed.com/rc/clk?jk=6613b08681c56429&fccid=5513a5786c25a5f2&vjs=3	2020-08-30 13:58:40.398672+08	2020-08-30 13:58:40.398696+08
1525	#SGUNITEDJOBS SOFTWARE ENGINEER	SUPREME INFOCOMM (S) PTE. LTD.	https://sg.indeed.com/rc/clk?jk=89e6ab3026c67feb&fccid=612a53e7d0d1e5ef&vjs=3	2020-08-30 13:58:43.397085+08	2020-08-30 13:58:43.397117+08
1526	.Net Software Developer	TESCOM (SINGAPORE) SOFTWARE SYSTEMS TESTING PTE LTD.	https://sg.indeed.com/rc/clk?jk=fe0aab4e88bb3cc2&fccid=30c2047c51df33ec&vjs=3	2020-08-30 13:58:47.513554+08	2020-08-30 13:58:47.513579+08
1527	Managed Services Engineer - Enterprise Services	CLOUDFLARE, PTE. LTD.	https://sg.indeed.com/rc/clk?jk=d4743eecc1cacaeb&fccid=c57da989524f65e7&vjs=3	2020-08-30 13:58:52.565571+08	2020-08-30 13:58:52.565592+08
1528	Principal Software Engineer, Engineering - Platform (SP Digital)	SPACE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=2b796e8a924d3cf8&fccid=8dcf6ad4797c3f00&vjs=3	2020-08-30 13:58:54.854411+08	2020-08-30 13:58:54.854434+08
1529	IT Infrastructure Engineer	IDEMIA	https://sg.indeed.com/rc/clk?jk=0d3f172f8e09a8a1&fccid=56d1ac791824f1a6&vjs=3	2020-08-30 13:58:57.555452+08	2020-08-30 13:58:57.555474+08
1530	#SGUNITEDJOBS SOFTWARE ENGINEER	MONA COMPUTER SYSTEMS (S) PTE LTD	https://sg.indeed.com/rc/clk?jk=bf97455519190b29&fccid=c39de4053812cfc8&vjs=3	2020-08-30 13:59:00.495305+08	2020-08-30 13:59:00.495326+08
1531	Software Engineer #SGUnitedJobs	MONEYOWL PRIVATE LIMITED	https://sg.indeed.com/rc/clk?jk=b7ac05d76352b961&fccid=de01780feee207c4&vjs=3	2020-08-30 13:59:02.883618+08	2020-08-30 13:59:02.883639+08
1532	Senior Software Engineer, Engineering - Consumer & Payment (SP Digital)	SPACE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=91242c2f4bb7e575&fccid=8dcf6ad4797c3f00&vjs=3	2020-08-30 13:59:05.428085+08	2020-08-30 13:59:05.428125+08
1533	DCS Automation System Engineer	P'nnacle Pte Ltd	https://sg.indeed.com/rc/clk?jk=587a523c39a7f3e4&fccid=70869998b76e82b5&vjs=3	2020-08-30 13:59:07.31332+08	2020-08-30 13:59:07.313342+08
1534	SG Senior Regional Product Support Engineer	Lam Research	https://sg.indeed.com/rc/clk?jk=c6ab2e32fc5757e5&fccid=fb90332c857e2826&vjs=3	2020-08-30 13:59:10.077315+08	2020-08-30 13:59:10.077345+08
1535	Systems Engineer - Linux & Devops	CARTRACK TECHNOLOGIES SOUTH EAST ASIA PTE. LTD.	https://sg.indeed.com/rc/clk?jk=b47d0cd1fe5c184a&fccid=da254bec724fd06b&vjs=3	2020-08-30 13:59:12.136085+08	2020-08-30 13:59:12.136107+08
1536	Senior Engineer (Geotechnical/C&S)	ONE SMART ENGINEERING PTE. LTD.	https://sg.indeed.com/rc/clk?jk=4258310cb58447f6&fccid=c39c9b1b50f93988&vjs=3	2020-08-30 13:59:15.168717+08	2020-08-30 13:59:15.16874+08
1537	Senior SD-WAN Telco Account Executive Singapore,	VMware	https://sg.indeed.com/rc/clk?jk=289f3f07c267ecd1&fccid=c762a27145bd166e&vjs=3	2020-08-30 13:59:18.304267+08	2020-08-30 13:59:18.304289+08
1538	Senior Product Design Engineer	BENJAMIN GENERATION PTE. LTD.	https://sg.indeed.com/rc/clk?jk=70debb312af9cf69&fccid=82138f9299160587&vjs=3	2020-08-30 13:59:21.665807+08	2020-08-30 13:59:21.665831+08
1539	Software Application Engineer #SGUnitedJobs	TME SYSTEMS PTE LTD	https://sg.indeed.com/rc/clk?jk=0ba26c79f0cad079&fccid=6204e56b8df99576&vjs=3	2020-08-30 13:59:25.350125+08	2020-08-30 13:59:25.350147+08
1540	Senior Full Stack Engineer	DATASPARK PTE. LTD.	https://sg.indeed.com/rc/clk?jk=0aaff6ca4caeca5d&fccid=16a97192ec2a222a&vjs=3	2020-08-30 13:59:27.222831+08	2020-08-30 13:59:27.222858+08
1541	SOFTWARE ENGINEER (ENTERPRISE VIEWER) #SGUNITEDJOBS #WSIP	SINGAPORE LAND AUTHORITY	https://sg.indeed.com/rc/clk?jk=ddfab938c44b7965&fccid=423697b7d3ec2bb9&vjs=3	2020-08-30 13:59:29.29972+08	2020-08-30 13:59:29.29975+08
1542	Software Engineer, Singapore	Spring Professional (Singapore) Pte Ltd	https://sg.indeed.com/rc/clk?jk=4aa07e9f75f2f396&fccid=317a1ea19830cae3&vjs=3	2020-08-30 13:59:32.064947+08	2020-08-30 13:59:32.064968+08
1543	DevOps Engineer	SISTIC.COM PTE LTD	https://sg.indeed.com/rc/clk?jk=3eabd5f68f24d017&fccid=c93b512c23211203&vjs=3	2020-08-30 13:59:35.33817+08	2020-08-30 13:59:35.338246+08
1544	Mechanical Site Supervisor	Fortis Construction Pte. Ltd.	https://sg.indeed.com/rc/clk?jk=5310c34b74c018a9&fccid=0c6b104c0bf822ea&vjs=3	2020-08-30 13:59:37.119646+08	2020-08-30 13:59:37.11967+08
1545	#SGUNITEDJOBS (109) .NET SOFTWARE ENGINEER / .NET SENIOR SOFTWARE ENGINEER	IT CONSULTANCY & SERVICES PTE LTD	https://sg.indeed.com/rc/clk?jk=218f66a8e6a925ab&fccid=5f9134320c3c84df&vjs=3	2020-08-30 13:59:39.81669+08	2020-08-30 13:59:39.816731+08
1546	Systems Reliability Engineer	CLOUDFLARE, PTE. LTD.	https://sg.indeed.com/rc/clk?jk=ac1f20808abcefc5&fccid=c57da989524f65e7&vjs=3	2020-08-30 13:59:43.531138+08	2020-08-30 13:59:43.531158+08
1547	Mechanical Design Engineer (Woodlands)	ESTRON MARKETING PTE. LTD.	https://sg.indeed.com/rc/clk?jk=779116cb3804d407&fccid=c0eddffa139fd956&vjs=3	2020-08-30 13:59:45.999352+08	2020-08-30 13:59:45.999374+08
1548	#SGUNITEDJOBS SOFTWARE ENGINEER (EMBEDDED)	OAKTREE CONSULTING	https://sg.indeed.com/rc/clk?jk=53eb6bd3549c1efd&fccid=bb3d64a90b2ff3fa&vjs=3	2020-08-30 13:59:47.651326+08	2020-08-30 13:59:47.651347+08
1549	Trainee, R&D Engineer Trainee (Electromagnetic Effects) [#SGUnitedTraineeships]	NANYANG TECHNOLOGICAL UNIVERSITY	https://sg.indeed.com/rc/clk?jk=f48d3b28ceed8e40&fccid=d869ca30ff8bbcdd&vjs=3	2020-08-30 13:59:50.362546+08	2020-08-30 13:59:50.362568+08
1550	#SGUNITEDJOBS WEBGL SOFTWARE ENGINEER	APPLABX PTE. LTD.	https://sg.indeed.com/rc/clk?jk=0e8a8e1372e201e0&fccid=16775b2a5dfd9a19&vjs=3	2020-08-30 13:59:52.262636+08	2020-08-30 13:59:52.262659+08
1551	Sr/Engineer, Quality and Reliability - Test Development	Micron	https://sg.indeed.com/rc/clk?jk=a2e5464c958d5e31&fccid=be240c643a8631c5&vjs=3	2020-08-30 13:59:56.348561+08	2020-08-30 13:59:56.348582+08
1552	Test Support Engineer	J P INFOTECH PRIVATE LIMITED	https://sg.indeed.com/rc/clk?jk=acaf708211250f52&fccid=256f993f4983fce3&vjs=3	2020-08-30 13:59:59.17949+08	2020-08-30 13:59:59.179511+08
1553	Agile Engineer (Java )	KRIS INFOTECH PTE. LTD.	https://sg.indeed.com/rc/clk?jk=3dc5bb6a70b88a40&fccid=ea5959b675e9523c&vjs=3	2020-08-30 14:00:01.449841+08	2020-08-30 14:00:01.449863+08
1554	Systems Engineer	KYDON HOLDINGS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=e478316f418316a3&fccid=85d1219f0060f951&vjs=3	2020-08-30 14:00:03.529969+08	2020-08-30 14:00:03.52999+08
1555	#SGUNITEDJOBS TECHNICAL ENGINEER ONSITE	HEMMERSBACH SINGAPORE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=9b5e4216440fdf8e&fccid=352ff9cbf6aebe7e&vjs=3	2020-08-30 14:00:05.143526+08	2020-08-30 14:00:05.143551+08
1556	Electrical Site Supervisor	Fortis Construction Pte. Ltd.	https://sg.indeed.com/rc/clk?jk=02266fa9ec1edf4a&fccid=0c6b104c0bf822ea&vjs=3	2020-08-30 14:00:07.488029+08	2020-08-30 14:00:07.488054+08
1557	#SGUNITEDJOBS DESKTOP SUPPORT L1	PAN-ASIA RESOURCES PTE LTD	https://sg.indeed.com/rc/clk?jk=785e0d62d1493d71&fccid=143a4a84deda80ca&vjs=3	2020-08-30 14:00:09.372177+08	2020-08-30 14:00:09.372225+08
1558	Site Reliability Engineer	Ubisoft	https://sg.indeed.com/rc/clk?jk=9ed09f19eebf7c83&fccid=237908de095b6446&vjs=3	2020-08-30 14:00:11.046574+08	2020-08-30 14:00:11.046598+08
1559	Software Engineer (Contract)	Peoplefirst HR	https://sg.indeed.com/company/People-First/jobs/Software-Engineer-f69c3bb673426cf3?fccid=dff6ff4d78ba97cb&vjs=3	2020-08-30 14:00:12.745345+08	2020-08-30 14:00:12.745368+08
1560	Site Reliability Engineer (SRE)	U3 Infotech Pte Ltd	https://sg.indeed.com/rc/clk?jk=5dcee903f9bb01e6&fccid=e2cf7c632c3c38d2&vjs=3	2020-08-30 14:00:15.016258+08	2020-08-30 14:00:15.016291+08
1561	Application Security Engineer	SNAPHUNT PTE. LTD.	https://sg.indeed.com/rc/clk?jk=402602e3bc5ece0e&fccid=dd616958bd9ddc12&vjs=3	2020-08-30 14:00:17.201684+08	2020-08-30 14:00:17.201707+08
1562	Senior Software Manager	STRUCTO PTE. LTD.	https://sg.indeed.com/rc/clk?jk=0c7b057d3b435246&fccid=16a06ff880a947b2&vjs=3	2020-08-30 14:00:19.586039+08	2020-08-30 14:00:19.58606+08
1563	#SGUNITEDJOBS MARKETING TECHNOLOGY DATA ENGINEER (SALESFORCE)	NTUC ENTERPRISE NEXUS CO-OPERATIVE LIMITED	https://sg.indeed.com/rc/clk?jk=e5d1de4550273906&fccid=c11170ec551910c0&vjs=3	2020-08-30 14:00:21.405985+08	2020-08-30 14:00:21.406027+08
1564	Software Engineer	CMM Marketing Management Pte Ltd	https://sg.indeed.com/pagead/clk?mo=r&ad=-6NYlbfkN0AbLEAfUJ_8-EnULjJ15l1k6LfB5RD9Ew3x4SlXgqMriw8oywaHohqK_bfr-pESj-i50_kDh_qrr1HiqmVci9lf70xrdtUMJdf8-xqDwHUOzRZzTpZW95u7T2uMAz0M_hqzrJh9HvrneXTWllXV3N0qHrcoLn4VrcHYqxVzYfQjiC917WiXMnj0fXwWpTTJpZun9s_yED_mnrtWsaaNe3WXm3FNabgRWEGOFDt52y33HjSkfMvwBRkFJk0mfnFXIxHYuIyNJNJWV2cjXVvI9jzdi5DLW5BAbxyiVA6Ut0vWk-5rF7Jl9kAx3W8bN9s_8zh8QntYHseGq7DTSSzJ-lQWDg2CUn8KmXVzUGxB1281kZynldi0zU23nSpB-Srlrx32QHS0ys1kF_ovseFdZ5slQFUtEb1OmSZRZ93HfNQTjV-TgT6a9pQ2LArGdBPB92jvrxPeF9XRenQeE6JoB9jZMRUvDb1FTCj99lpKHezyAhz3FeSoQgMqIF6UDj4Nevo_fe19j6_TGeCjPrLNfxMBBKoSyy3k_4p2u1k7ABRUfTs2Y41qgX8HEP1zyZv6KAKcICZircO9fUgZaLe26Bxp5U3OSvZNQQP9tnbGZWu8WGbzEyYoo7mVC3pN1LIvgB-b8TztNuiArRt6qPy3pLitwEI4nvWUSderhCFebwFaUptfWxLj0axp06j5jhJuXUs=&p=12&fvj=0&vjs=3	2020-08-30 14:00:24.334309+08	2020-08-30 14:00:24.33433+08
1565	#SGUNITEDJOBS SENIOR SOFTWARE ENGINEER (BACKEND)	ADVANCE INTELLIGENCE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=d7192f44082edbca&fccid=3dd38fd36d314f13&vjs=3	2020-08-30 14:00:28.265211+08	2020-08-30 14:00:28.265232+08
1566	#SGUNITEDJOBS SOLUTIONS ENGINEER (CLOUDLFARE TEAMS)	CLOUDFLARE, PTE. LTD.	https://sg.indeed.com/rc/clk?jk=013fbb37e7fe79b1&fccid=c57da989524f65e7&vjs=3	2020-08-30 14:00:31.230428+08	2020-08-30 14:00:31.23047+08
1567	#SGUNITEDJOBS SOFTWARE ENGINEER (1 YEAR CONTRACT)	PEOPLEFIRST HR CONSULTANCY PTE. LTD.	https://sg.indeed.com/rc/clk?jk=4b0bebc89455cbfe&fccid=5513a5786c25a5f2&vjs=3	2020-08-30 14:00:32.832336+08	2020-08-30 14:00:32.832359+08
1568	Full Stack Engineer	Jobline Resources Pte Ltd	https://sg.indeed.com/rc/clk?jk=3ee1675343782980&fccid=08a987b19a93d3a1&vjs=3	2020-08-30 14:00:34.801336+08	2020-08-30 14:00:34.801356+08
1569	Senior Web Developer	CARTRACK TECHNOLOGIES SOUTH EAST ASIA PTE. LTD.	https://sg.indeed.com/rc/clk?jk=711ac0960c46f8f5&fccid=da254bec724fd06b&vjs=3	2020-08-30 14:00:37.435342+08	2020-08-30 14:00:37.435373+08
1570	#SGUNITEDJOBS SENIOR SOFTWARE ENGINEER - BACKEND (PHP/GOLANG)	WECHAIN FINTECH PTE. LTD.	https://sg.indeed.com/rc/clk?jk=48750dda5e0bebb9&fccid=209e917e3b6599e9&vjs=3	2020-08-30 14:00:39.863856+08	2020-08-30 14:00:39.863879+08
1571	#SGUNITEDJOBS PRINCIPAL SOFTWARE ENGINEER, ENGINEERING - PLATFORM (SP DIGITAL)	SPACE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=28955581054885f4&fccid=8dcf6ad4797c3f00&vjs=3	2020-08-30 14:00:42.127141+08	2020-08-30 14:00:42.127165+08
1572	Site Reliability Engineer	eTeam Singapore	https://sg.indeed.com/rc/clk?jk=ba3e1f760e1209a7&fccid=1c3ebebd4900ccb0&vjs=3	2020-08-30 14:00:44.694758+08	2020-08-30 14:00:44.694778+08
1573	Technical Service Engineer #SGUnitedJobs	DATUMSTRUCT (S) PTE LTD	https://sg.indeed.com/rc/clk?jk=00539725f0558447&fccid=cd3cc32486e88705&vjs=3	2020-08-30 14:00:48.400556+08	2020-08-30 14:00:48.400577+08
1574	#SGUNITEDJOBS SENIOR FULL STACK ENGINEER	DATASPARK PTE. LTD.	https://sg.indeed.com/rc/clk?jk=5530c54980e7454c&fccid=16a97192ec2a222a&vjs=3	2020-08-30 14:00:50.717966+08	2020-08-30 14:00:50.717987+08
1575	Senior/Principal Analyst [Data Engineer] (Compliance Strategy & Insights Division)	Inland Revenue Authority of Singapore	https://sg.indeed.com/rc/clk?jk=e184a5bde9cfe8dc&fccid=89dd43a7bc09252c&vjs=3	2020-08-30 14:00:52.946454+08	2020-08-30 14:00:52.946476+08
1576	Senior Product Manager	DATASPARK PTE. LTD.	https://sg.indeed.com/rc/clk?jk=f319ae23dea1451a&fccid=16a97192ec2a222a&vjs=3	2020-08-30 14:00:55.607235+08	2020-08-30 14:00:55.607257+08
1577	#SGUNITEDJOBS .NET SOFTWARE DEVELOPER	TESCOM (SINGAPORE) SOFTWARE SYSTEMS TESTING PTE LTD.	https://sg.indeed.com/rc/clk?jk=449663237b6aab60&fccid=30c2047c51df33ec&vjs=3	2020-08-30 14:00:58.588609+08	2020-08-30 14:00:58.588632+08
1578	Assistant Desktop Support Engineer	PrimeStaff Management Services Pte Ltd	https://sg.indeed.com/pagead/clk?mo=r&ad=-6NYlbfkN0AbLEAfUJ_8-EnULjJ15l1k6LfB5RD9Ew3x4SlXgqMriw8oywaHohqK_bfr-pESj-i50_kDh_qrr_hsK98abMjzpeB9ocfeOYLX5l3yVEl53m1ogT6HDzLeOTOYDmRV702abci7ts5-AlJHeXIcR01U2LrpzJ5Webr39Gbrrl-8q9_U6PaqJ74Kk6ga-GDIPas_pR2QzSm9_WOCRjva-E7D0EswGOlwpnjaCa64gs1QQRlOsls8loMDNwvG3RfvPpmx_vIJpyZg0hPMaVeHLa6NtJ_23XQXaUuWHon8z6Ae88nvHziIOv-k42hvo8IrCaxKBr6cVWRGnG4Y7B85E2O0CpT4OfqfWWsYOZ78nsDho6O6R6E3PAwO_vpGN74_psHvwKpm_vAiK1-DDDLp1bC323K9v-vINPCTfTvodtw-XNGFJRqQ4jHnejAOe013PpGpOdSv6Z0ScKb1LyZasZTqJdKLcVePAxmY-3JofrfyVrPHWwgbYeVg-6Yf59blqi-arQA316tcTbPO5N8C7p8dOxmhagHjj6VmVtezivc9pAAXoxRUIjqPYOsVQ2-E5ikzavmFHSEn-_WQLgYSu0dluOIxK7nxVJlMcgFELCDRkuD71-0iliEiaLeOL3IGqQt7qlgxMrYU-stT5qTi5nTU6P7Vq_Bb9gM5Ncy9H-t4poP2oF4TBqYT0BUT91LB5VE=&p=11&fvj=0&vjs=3	2020-08-30 14:01:01.928189+08	2020-08-30 14:01:01.928211+08
1579	UI/UX Designer	Spring Professional Malaysia Sdn Bhd	https://sg.indeed.com/rc/clk?jk=3e5d2d350a70b453&fccid=12fadd75da0b0c6e&vjs=3	2020-08-30 14:01:04.016019+08	2020-08-30 14:01:04.016039+08
1580	#SGUNITEDJOBS DATA ENGINEER	TIKTOK PTE. LTD.	https://sg.indeed.com/rc/clk?jk=da67297f35b53e66&fccid=3de77e3672597026&vjs=3	2020-08-30 14:01:06.050052+08	2020-08-30 14:01:06.050074+08
1581	Senior Design Engineer	WOH HUP (PRIVATE) LIMITED	https://sg.indeed.com/rc/clk?jk=e67f5e036b10c3ad&fccid=1c0334fd4bff11b1&vjs=3	2020-08-30 14:01:08.677344+08	2020-08-30 14:01:08.677367+08
1582	#SGUNITEDJOBS DEVOPS ENGINEER	DATASPARK PTE. LTD.	https://sg.indeed.com/rc/clk?jk=f19cba141f3db79a&fccid=16a97192ec2a222a&vjs=3	2020-08-30 14:01:10.740254+08	2020-08-30 14:01:10.74028+08
1583	ServiceNow System Admin	AVENSYS CONSULTING PTE. LTD.	https://sg.indeed.com/rc/clk?jk=a3f05605ec5ebfa8&fccid=cc2f28d5dc635dec&vjs=3	2020-08-30 14:01:14.401923+08	2020-08-30 14:01:14.401946+08
1584	#SGUNITEDJOBS MANAGED SERVICES ENGINEER - ENTERPRISE SERVICES	CLOUDFLARE, PTE. LTD.	https://sg.indeed.com/rc/clk?jk=f7fdc57c37d35c68&fccid=c57da989524f65e7&vjs=3	2020-08-30 14:01:16.586886+08	2020-08-30 14:01:16.586907+08
1585	#SGUNITEDJOBS SOFTWARE ENGINEER/ SENIOR ENGINEER, ENTERPRISE IT	DEFENCE SCIENCE AND TECHNOLOGY AGENCY	https://sg.indeed.com/rc/clk?jk=b76dbd5e2a7e3f67&fccid=1d79a4290fb70d8e&vjs=3	2020-08-30 14:01:18.054023+08	2020-08-30 14:01:18.054051+08
1586	IT business analyst	SOFTENGER (SINGAPORE) PTE. LTD.	https://sg.indeed.com/rc/clk?jk=20c6e5fc61e26203&fccid=6e5b733c11c153b8&vjs=3	2020-08-30 14:01:20.64946+08	2020-08-30 14:01:20.649483+08
1587	#SGUNITEDJOBS SYSTEMS ENGINEER	KYDON HOLDINGS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=a4eede4039a11a88&fccid=85d1219f0060f951&vjs=3	2020-08-30 14:01:22.426288+08	2020-08-30 14:01:22.42631+08
1588	Software Engineer	EPS Consultants Pte Ltd	https://sg.indeed.com/pagead/clk?mo=r&ad=-6NYlbfkN0AbLEAfUJ_8-EnULjJ15l1k6LfB5RD9Ew3x4SlXgqMriw8oywaHohqK_bfr-pESj-i50_kDh_qrr0Q4NEtkxSpUE3KGNuo4-8hTx6w28-h66kahQU-nhw3z9W3CjffA63SohTdtzcyX4XWK9cf2uXntvigxM0aH2jhy5-fG14CxuHbQQS82wfnxAqe38hGmK3YnR0rjUVb_EXNnLzq7mjUNAU-JwDgnr5PzZnNcU98UeQqVeLls_OE_OWKh_sFMWBzoBTVAZKHVfvX3na5qEw5TeNXdEYvITnLQAMhiqalKVb1A12DQpcE66LNkCjOqq8mFz5Z2_E-ViJrlYQnbp80eiZmf2gkD0RmkfI3f6SphRB2iPndEyMRCijnxiEJV1QP3MJoJsJMuImLXhbpc5c_fIuhWIToRVv2UcM6ZuFVFK9fEF8pqAsLjSJbSF-J_T6oRUuUDjKGwIm8BppXiAH5q1MUfIjm-vKwXKz-6OuI_6pim_GRK-XDD8pqaG_tUQua55yXeypIhIoOJzpTfGVyKBOQAbFfr5eZct_Ecom4OGvuIi9DljN8wr73OV_VLIsOgpc6wvEOqZtinTXnhbJeKutGoxUtSaVKeoea5pRHiZOI4fMc2uRbclWQ7ZbtPbSqF76a_DV7Ey_fpn1puUUix&p=6&fvj=0&vjs=3	2020-08-30 14:01:25.719772+08	2020-08-30 14:01:25.719795+08
1589	#SGUNITEDJOBS SENIOR SOFTWARE ENGINEER, ENGINEERING - CONSUMER & PAYMENT (SP DIGITAL)	SPACE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=d77de853e886762c&fccid=8dcf6ad4797c3f00&vjs=3	2020-08-30 14:01:28.495585+08	2020-08-30 14:01:28.495605+08
1590	Senior Product Manager, Platform	Circles.Life	https://sg.indeed.com/rc/clk?jk=cb350f2ab6f9e1c0&fccid=20c116c00b6cc7c4&vjs=3	2020-08-30 14:01:31.350772+08	2020-08-30 14:01:31.350793+08
1591	Senior Systems Engineer (Network)	Jobline Resources Pte Ltd	https://sg.indeed.com/rc/clk?jk=9f6a783d5a23f126&fccid=08a987b19a93d3a1&vjs=3	2020-08-30 14:01:33.381674+08	2020-08-30 14:01:33.381698+08
1592	#SGUNITEDJOBS DEVOPS ENGINEER	SISTIC.COM PTE LTD	https://sg.indeed.com/rc/clk?jk=afe5a72a475fd4d0&fccid=c93b512c23211203&vjs=3	2020-08-30 14:01:36.526026+08	2020-08-30 14:01:36.526049+08
1593	#SGUNITEDJOBS TEST SUPPORT ENGINEER	J P INFOTECH PRIVATE LIMITED	https://sg.indeed.com/rc/clk?jk=62965dd01e6f7bce&fccid=256f993f4983fce3&vjs=3	2020-08-30 14:01:38.291353+08	2020-08-30 14:01:38.291376+08
1594	#SGUNITEDJOBS SENIOR PRODUCT MANAGER	DATASPARK PTE. LTD.	https://sg.indeed.com/rc/clk?jk=d3fe1f8ea3a97d95&fccid=16a97192ec2a222a&vjs=3	2020-08-30 14:01:40.931757+08	2020-08-30 14:01:40.931778+08
1595	#SGUNITEDJOBS TECH LEAD	TIKTOK PTE. LTD.	https://sg.indeed.com/rc/clk?jk=2c0ba99bbb27a04d&fccid=3de77e3672597026&vjs=3	2020-08-30 14:01:43.473292+08	2020-08-30 14:01:43.473315+08
1596	#SGUNITEDJOBS APPLICATION SECURITY ENGINEER	ANTAES ASIA PTE. LTD.	https://sg.indeed.com/rc/clk?jk=10e39ba42a4b6afb&fccid=a63866efd5459cb0&vjs=3	2020-08-30 14:01:46.015927+08	2020-08-30 14:01:46.015987+08
1597	#SGUNITEDJOBS AGILE ENGINEER (JAVA )	KRIS INFOTECH PTE. LTD.	https://sg.indeed.com/rc/clk?jk=10ff220193488b4f&fccid=ea5959b675e9523c&vjs=3	2020-08-30 14:01:48.53761+08	2020-08-30 14:01:48.537704+08
1598	Data Engineer, Azure or AWS experience (Asset Management)	Charterhouse-SG	https://sg.indeed.com/rc/clk?jk=8af603bc2d91c51e&fccid=d8b3178c7a8fc162&vjs=3	2020-08-30 14:01:50.789527+08	2020-08-30 14:01:50.789552+08
1599	#SGUNITEDJOBS (109) JAVA SOFTWARE ENGINEERS / SENIOR JAVA SOFTWARE ENGINEERS	IT CONSULTANCY & SERVICES PTE LTD	https://sg.indeed.com/rc/clk?jk=92d436b863092a0a&fccid=5f9134320c3c84df&vjs=3	2020-08-30 14:01:52.739136+08	2020-08-30 14:01:52.739159+08
1600	#SGUNITEDJOBS SERVICENOW SYSTEM ADMIN	AVENSYS CONSULTING PTE. LTD.	https://sg.indeed.com/rc/clk?jk=364d5c16dd3d618c&fccid=cc2f28d5dc635dec&vjs=3	2020-08-30 14:01:55.25474+08	2020-08-30 14:01:55.254767+08
1601	#SGUNITEDJOBS IT SYSTEM ENGINEER	ANVERON CONSULTANCY PTE. LTD.	https://sg.indeed.com/rc/clk?jk=6961b4046339e114&fccid=ce786669089dfa4e&vjs=3	2020-08-30 14:01:57.26224+08	2020-08-30 14:01:57.26226+08
1602	Mobile Developer (React Native & Android)	STYL SOLUTIONS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=25fb75eabe782131&fccid=311ef22b6f0bbdf3&vjs=3	2020-08-30 14:01:58.95428+08	2020-08-30 14:01:58.954303+08
1603	Reliability Engineer	GMP TECHNOLOGIES S PTE LTD	https://sg.indeed.com/pagead/clk?mo=r&ad=-6NYlbfkN0AbLEAfUJ_8-EnULjJ15l1k6LfB5RD9Ew3x4SlXgqMriw8oywaHohqKNN2KzECKg1k4RD50f-74708LW-948IBfsJo_sIGd85jd5t3ClSbHqlmcEwHgb2UEYiCxCRo-CSHd0pX_4CvI0FLiXoeHk601flwp_aExX1KFRxU4yPDtBxFNSFcGBBRZSBbN0_YHJkWh6d_FJNAzQ3xPWwIK10PaJiIWcZInHqDg_9xSFng7oYu_KquvL893Ar2D6GI4-TNhvST1nVg7HlFG9SpnJmaJp5yd3PjJ0uplcBJhQ9IZucZE4r5jskKsIgXUgJD_Bbp_ApU2UKnxfxz82-HD04o1e9e5Yc22kp8fG-llF3DzX7m-_-s6XyiZ4-7EmYmfthiaEfJuRFlDZLisWjWGSdrW4xxeF-XrKFYzSZGDVGAXcVyBzJkFvR4Btocfm6jzCFHMngZNKvHmX8Fpja8wr4lKW0zS0XwTjDBnsB6KOZY3a8caNEo1snh5sHwMBoXKGAeKKFsHuJumW_CkRgw8ewjoX5N7LpiEldOkwFAPJIws9bHv21FTS7L1eN18Wxr4q1e63jwslmVPwLnMkV_1lTUQXcFZED7Np_PLvE3r6Nh1Ooml1at7-GLDSH51vjGYHuZz4SXSd4Kkq9ujWMHV--tv2mHANO6NKM0nDNE7RgpHgw==&p=6&fvj=0&vjs=3	2020-08-30 14:02:02.446302+08	2020-08-30 14:02:02.446325+08
1604	#SGUNITEDJOBS SYSTEMS ENGINEER - LINUX & DEVOPS	CARTRACK TECHNOLOGIES SOUTH EAST ASIA PTE. LTD.	https://sg.indeed.com/rc/clk?jk=5ae6e48b52b68df9&fccid=da254bec724fd06b&vjs=3	2020-08-30 14:02:04.598489+08	2020-08-30 14:02:04.598511+08
1605	#SGUNITEDJOBS SYSTEMS RELIABILITY ENGINEER	CLOUDFLARE, PTE. LTD.	https://sg.indeed.com/rc/clk?jk=3528e74c33fa3a21&fccid=c57da989524f65e7&vjs=3	2020-08-30 14:02:06.801051+08	2020-08-30 14:02:06.801079+08
1606	DevOps Architect	Morgan McKinley	https://sg.indeed.com/rc/clk?jk=088f986887f942e8&fccid=893f9f3cd9fe4472&vjs=3	2020-08-30 14:02:09.761023+08	2020-08-30 14:02:09.761045+08
1607	Senior Web Developer	Morgan McKinley	https://sg.indeed.com/rc/clk?jk=a6a5887e027a05c8&fccid=893f9f3cd9fe4472&vjs=3	2020-08-30 14:02:11.622984+08	2020-08-30 14:02:11.623005+08
1608	SAP Hybris Specialist	PeopleSearch	https://sg.indeed.com/rc/clk?jk=1c43586a6a02cf57&fccid=9e275c2fcecf2d5b&vjs=3	2020-08-30 14:02:14.286328+08	2020-08-30 14:02:14.286395+08
1609	#SGUNITEDJOBS SENIOR WEB DEVELOPER	CARTRACK TECHNOLOGIES SOUTH EAST ASIA PTE. LTD.	https://sg.indeed.com/rc/clk?jk=bd2e0c601bc9e09b&fccid=da254bec724fd06b&vjs=3	2020-08-30 14:02:16.907059+08	2020-08-30 14:02:16.907082+08
1610	#SGUNITEDJOBS MOBILE DEVELOPER (REACT NATIVE & ANDROID)	STYL SOLUTIONS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=704ca74fe8c35aac&fccid=311ef22b6f0bbdf3&vjs=3	2020-08-30 14:02:19.067264+08	2020-08-30 14:02:19.067285+08
1611	Smart Contracts Lead Developer	Randstad	https://sg.indeed.com/rc/clk?jk=b46992881506a13c&fccid=f8b265243da9f9d7&vjs=3	2020-08-30 14:02:22.269985+08	2020-08-30 14:02:22.27001+08
1612	Senior UI/UX Designer	Activate Interactive Pte Ltd	https://sg.indeed.com/rc/clk?jk=87cbd13c142cdd9b&fccid=c9f176bd62cd0a84&vjs=3	2020-08-30 14:02:24.651042+08	2020-08-30 14:02:24.651063+08
1613	Software Engineer	Bosch Group	https://sg.indeed.com/rc/clk?jk=35355f44cd21a015&fccid=a2faf1301ac6ad4b&vjs=3	2020-08-30 14:02:27.826108+08	2020-08-30 14:02:27.826128+08
1614	IT ENGINEER (Software Applications)	Micron	https://sg.indeed.com/rc/clk?jk=c5c48f3c079cf355&fccid=be240c643a8631c5&vjs=3	2020-08-30 14:02:30.292027+08	2020-08-30 14:02:30.292056+08
1615	Software Engineer	NDR Medical Technology Pte Ltd	https://sg.indeed.com/company/NDR-Medical-Technology-Pte-Ltd/jobs/Software-Engineer-c57d71a362b3ed27?fccid=8d8c2d3db830444d&vjs=3	2020-08-30 14:02:32.358549+08	2020-08-30 14:02:32.35857+08
1616	Software Engineer	CBM Pte Ltd	https://sg.indeed.com/rc/clk?jk=0f83922b9e583504&fccid=0a105808913d907f&vjs=3	2020-08-30 14:02:34.675314+08	2020-08-30 14:02:34.675338+08
1617	Ref: 121988 - Software Engineer	Singtel	https://sg.indeed.com/rc/clk?jk=03385011c23cd3bd&fccid=a94c6bb50f118c9f&vjs=3	2020-08-30 14:02:36.676+08	2020-08-30 14:02:36.676023+08
1618	Software Engineer	U3 Infotech Pte Ltd	https://sg.indeed.com/rc/clk?jk=d7daafdbb5bc0da5&fccid=e2cf7c632c3c38d2&vjs=3	2020-08-30 14:02:39.720714+08	2020-08-30 14:02:39.720738+08
1619	Software Engineer (Backend)	MUSIIO PTE. LTD.	https://sg.indeed.com/rc/clk?jk=320c46aee771365c&fccid=4cfef32255c25985&vjs=3	2020-08-30 14:02:43.883875+08	2020-08-30 14:02:43.883897+08
1620	Intern, Software Engineering	Yara	https://sg.indeed.com/rc/clk?jk=a4d11534cb04fd49&fccid=dd94afe68cf83140&vjs=3	2020-08-30 14:02:46.221844+08	2020-08-30 14:02:46.221865+08
1621	Software Engineer	TIKTOK PTE. LTD.	https://sg.indeed.com/rc/clk?jk=9b2423d2e7803754&fccid=3de77e3672597026&vjs=3	2020-08-30 14:02:48.940017+08	2020-08-30 14:02:48.940039+08
1622	Desktop Engineer L2	Transcendent Business Services	https://sg.indeed.com/company/erfew/jobs/Desktop-Engineer-94010cfb2e349675?fccid=bb8b7fc3558dccfe&vjs=3	2020-08-30 14:02:50.951835+08	2020-08-30 14:02:50.951858+08
1623	Project Engineer (Environmental Engineering)	ST Engineering Marine Ltd	https://sg.indeed.com/rc/clk?jk=a1481295e933a987&fccid=16f2eddd48b4b6c3&vjs=3	2020-08-30 14:02:52.489509+08	2020-08-30 14:02:52.48953+08
1624	Software QA Testing Engineer	Argyll Scott	https://sg.indeed.com/rc/clk?jk=c0785b7bcb4ae200&fccid=42461e5d7843c8f4&vjs=3	2020-08-30 14:02:55.763176+08	2020-08-30 14:02:55.763206+08
1625	Field Service Engineer II	Thermo Fisher Scientific	https://sg.indeed.com/rc/clk?jk=106803b90d46b0b8&fccid=126e3afd205caa95&vjs=3	2020-08-30 14:02:58.174617+08	2020-08-30 14:02:58.174646+08
1626	Senior Software Engineer	LOOP	https://sg.indeed.com/rc/clk?jk=b69f6df0f9c23924&fccid=dd616958bd9ddc12&vjs=3	2020-08-30 14:03:00.519717+08	2020-08-30 14:03:00.519741+08
1627	IT Onsite Engineer	Transcendent Business Services	https://sg.indeed.com/company/erfew/jobs/IT-Onsite-Engineer-cd1665d7c908f3d6?fccid=bb8b7fc3558dccfe&vjs=3	2020-08-30 14:03:02.490559+08	2020-08-30 14:03:02.490581+08
1628	Support Engineer	ForgeRock	https://sg.indeed.com/rc/clk?jk=575ea0d998e51b06&fccid=e242c9b70b1527fc&vjs=3	2020-08-30 14:03:05.163706+08	2020-08-30 14:03:05.163725+08
1629	Software Engineer Intern	MOBBIN	https://sg.indeed.com/rc/clk?jk=394e51b96a1b4a73&fccid=cbd2e9d8db58f55f&vjs=3	2020-08-30 14:03:06.991674+08	2020-08-30 14:03:06.991698+08
1630	Network Operations Engineer II	Astreya	https://sg.indeed.com/rc/clk?jk=da0802c49186365f&fccid=506419d259b703fe&vjs=3	2020-08-30 14:03:09.401523+08	2020-08-30 14:03:09.401565+08
1631	Associate Support Engineer	ForgeRock	https://sg.indeed.com/rc/clk?jk=14e110d181f84556&fccid=e242c9b70b1527fc&vjs=3	2020-08-30 14:03:11.644576+08	2020-08-30 14:03:11.644605+08
1632	Backend Engineer	HMLET CENTRAL PTE. LTD.	https://sg.indeed.com/rc/clk?jk=c59768cc35f85456&fccid=0b375a060d54af09&vjs=3	2020-08-30 14:03:14.144736+08	2020-08-30 14:03:14.144758+08
1633	Data Analyst	ABB	https://sg.indeed.com/rc/clk?jk=958294bfabe4d602&fccid=38b4474838e7b7a1&vjs=3	2020-08-30 14:03:17.65284+08	2020-08-30 14:03:17.652863+08
1634	Test Engineer	ACHIEVE TECHNOLOGY ASIA PACIFIC PTE LTD	https://sg.indeed.com/rc/clk?jk=017fc0d5b9c987eb&fccid=fbe791276b191d26&vjs=3	2020-08-30 14:03:20.302466+08	2020-08-30 14:03:20.302502+08
1635	Software Engineer	EXCELPOINT SYSTEMS (PTE) LTD	https://sg.indeed.com/rc/clk?jk=31b3b33ce43620c0&fccid=511b94387ada0495&vjs=3	2020-08-30 14:03:22.263775+08	2020-08-30 14:03:22.264155+08
1636	Software Engineer (Cloud & Mobile Apps)	RnB Partners	https://sg.indeed.com/rc/clk?jk=a9be4b22c28b46b3&fccid=5cb65435261b54ea&vjs=3	2020-08-30 14:03:25.80429+08	2020-08-30 14:03:25.804312+08
1637	Optics Engineer	EMAGE VISION PTE. LTD.	https://sg.indeed.com/rc/clk?jk=57d1fc9d22850966&fccid=4f0243becf02e125&vjs=3	2020-08-30 14:03:28.350265+08	2020-08-30 14:03:28.350287+08
1638	#SGUNITEDJOBS SOFTWARE ENGINEER (BACKEND)	MUSIIO PTE. LTD.	https://sg.indeed.com/rc/clk?jk=1d848085cc4a6a3a&fccid=4cfef32255c25985&vjs=3	2020-08-30 14:03:30.45767+08	2020-08-30 14:03:30.457691+08
1639	Desktop Technician	HCL SINGAPORE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=5b381e8bdbcf5e0e&fccid=580cf49bf1ac7109&vjs=3	2020-08-30 14:03:33.31383+08	2020-08-30 14:03:33.313851+08
1640	Senior/ Software Engineer	VCARGO CLOUD PTE. LTD.	https://sg.indeed.com/rc/clk?jk=b41023066492ac6c&fccid=c38b2caecaf6f748&vjs=3	2020-08-30 14:03:35.643237+08	2020-08-30 14:03:35.643268+08
1641	Automotive Embedded Engineer	PARAMOUNT RESOURCES PTE LTD	https://sg.indeed.com/rc/clk?jk=9130d02ec5342e19&fccid=e4460d7a830ad683&vjs=3	2020-08-30 14:03:37.947113+08	2020-08-30 14:03:37.947136+08
1642	System Engineer (UNIX _MIDDLEWARE)	Ensoft Consulting	https://sg.indeed.com/company/Ensoft/jobs/System-Engineer-186a474d13baaef7?fccid=edc7a93c1bdbca40&vjs=3	2020-08-30 14:03:41.05037+08	2020-08-30 14:03:41.050392+08
1643	Site Engineer	GS ENGINEERING & CONSTRUCTION CORP.	https://sg.indeed.com/rc/clk?jk=314e13f469622d3d&fccid=24662367984f0f37&vjs=3	2020-08-30 14:03:43.699754+08	2020-08-30 14:03:43.699775+08
1644	Engineer (IPOC Development) (Contract)	Maritime and Port Authority of Singapore	https://sg.indeed.com/rc/clk?jk=3e06b0f8ea4bfdc6&fccid=230f872eae2d7330&vjs=3	2020-08-30 14:03:46.675345+08	2020-08-30 14:03:46.675366+08
1645	Desktop Support Engineer	PRO-DATECH SYSTEMS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=958792de00c87031&fccid=f4423160b551ccb1&vjs=3	2020-08-30 14:03:49.226213+08	2020-08-30 14:03:49.226234+08
1646	Data Engineer	TIKTOK PTE. LTD.	https://sg.indeed.com/rc/clk?jk=e92bb4c2c78c9a1c&fccid=3de77e3672597026&vjs=3	2020-08-30 14:03:51.342108+08	2020-08-30 14:03:51.342138+08
1647	Full-Stack Developer Intern (October onwards)	Bambu	https://sg.indeed.com/company/Bambu/jobs/Full-Stack-Developer-Intern-dde91769b475e203?fccid=04d5946612eb93b8&vjs=3	2020-08-30 14:03:53.451404+08	2020-08-30 14:03:53.451434+08
1648	Senior Manufacturing Test Engineer	Xilinx	https://sg.indeed.com/rc/clk?jk=07d38b595a73ed93&fccid=7ae83685be939814&vjs=3	2020-08-30 14:03:55.333025+08	2020-08-30 14:03:55.333047+08
1649	SSD Senior Test Engineer	Micron	https://sg.indeed.com/rc/clk?jk=25f1fd7ec750d922&fccid=be240c643a8631c5&vjs=3	2020-08-30 14:03:57.860593+08	2020-08-30 14:03:57.860613+08
1650	Executive Engineer - Civil and Structural	Beca	https://sg.indeed.com/rc/clk?jk=d5f71bab0aa6e84d&fccid=fd4b16b8c7e8d03f&vjs=3	2020-08-30 14:04:00.184996+08	2020-08-30 14:04:00.185029+08
1651	Fullstack Developer	ACLS	https://sg.indeed.com/rc/clk?jk=f183083152e02d1a&fccid=bec21331891dd522&vjs=3	2020-08-30 14:04:03.18238+08	2020-08-30 14:04:03.182401+08
1652	Senior Associate Engineer (121421)	Singtel	https://sg.indeed.com/rc/clk?jk=a97edac4f3b861df&fccid=a94c6bb50f118c9f&vjs=3	2020-08-30 14:04:05.681421+08	2020-08-30 14:04:05.681446+08
1653	Consumer Networks _ DevOps Engineer (121914)	Singtel	https://sg.indeed.com/rc/clk?jk=79e4333d80869997&fccid=a94c6bb50f118c9f&vjs=3	2020-08-30 14:04:08.00935+08	2020-08-30 14:04:08.009374+08
1654	Access Control Engineer	Keyteo Consulting Pte Ltd	https://sg.indeed.com/rc/clk?jk=98aa3be973f27a06&fccid=96687b9ddd1931a1&vjs=3	2020-08-30 14:04:10.408945+08	2020-08-30 14:04:10.408967+08
1655	Senior / Technology Development Engineer - Electrical or Software (Machine Control)	Institute of Technical Education	https://sg.indeed.com/rc/clk?jk=fdff96015adc180a&fccid=92b6f4092701f5ba&vjs=3	2020-08-30 14:04:12.87482+08	2020-08-30 14:04:12.87484+08
1656	Software Engineer, Agile	ACEXCELLENT CONSULTING PTE. LTD.	https://sg.indeed.com/rc/clk?jk=18fc25ae195fe826&fccid=7e873dd646c4f130&vjs=3	2020-08-30 14:04:14.758848+08	2020-08-30 14:04:14.758873+08
1657	APJC Competitive Business Development Manager	Cisco Systems	https://sg.indeed.com/rc/clk?jk=b2887d3c3e7045ad&fccid=dfc44f3b8c44a6db&vjs=3	2020-08-30 14:04:17.242544+08	2020-08-30 14:04:17.242565+08
1658	Technical Support Engineer (L2/L3)	DIGIFY PTE. LTD.	https://sg.indeed.com/rc/clk?jk=388bb45598828de9&fccid=8ba0270d125de38e&vjs=3	2020-08-30 14:04:20.339541+08	2020-08-30 14:04:20.339563+08
1659	Software Development Engineer in Test (SDET)	IKIGAI Enablers	https://sg.indeed.com/rc/clk?jk=f461f7a8dbb108cc&fccid=8ef4c49ebff2cba9&vjs=3	2020-08-30 14:04:23.630361+08	2020-08-30 14:04:23.630389+08
1660	Citrix Engineer	ACEXCELLENT CONSULTING PTE. LTD.	https://sg.indeed.com/rc/clk?jk=f880bdc6dbf2a85a&fccid=7e873dd646c4f130&vjs=3	2020-08-30 14:04:26.227352+08	2020-08-30 14:04:26.227372+08
1661	Network Engineer	Shell Infotech Pte Ltd	https://sg.indeed.com/rc/clk?jk=08b6ece96762f74c&fccid=4a8b984e999829af&vjs=3	2020-08-30 14:04:28.386728+08	2020-08-30 14:04:28.386759+08
1662	Customer Delivery Manager	VISENZE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=019c597cebb60872&fccid=df28bbcc67a6cb10&vjs=3	2020-08-30 14:04:31.184815+08	2020-08-30 14:04:31.184835+08
1663	Managed Services Engineer	SIMCORP SINGAPORE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=9db92f5d9f8c15a4&fccid=0c91abbd8146eca6&vjs=3	2020-08-30 14:04:34.336328+08	2020-08-30 14:04:34.336355+08
1664	IT Business Analyst	Softenger Singapore Pte Ltd	https://sg.indeed.com/company/Softenger-Singapore-Pte-Ltd/jobs/IT-Business-Analyst-2a10ca3e208f46c7?fccid=e6660cfdac87ff78&vjs=3	2020-08-30 14:04:36.983087+08	2020-08-30 14:04:36.983109+08
1665	GTM Program Management Lead APJ Singapore,	VMware	https://sg.indeed.com/rc/clk?jk=f05cbb2ce454f82d&fccid=c762a27145bd166e&vjs=3	2020-08-30 14:04:39.694324+08	2020-08-30 14:04:39.694348+08
1666	SOFTWARE ENGINEER #SGUNITEDJOBS	VHF TECHNOLOGIES PTE LTD	https://sg.indeed.com/rc/clk?jk=140c1cca401763d8&fccid=666ac55b1c3b7358&vjs=3	2020-08-30 14:04:42.31836+08	2020-08-30 14:04:42.318383+08
1667	Software Engineer #SGUnitedJobs	THIS IS SYNTHESIS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=207720ef4ba3fb9d&fccid=1ccf402f9e382bc2&vjs=3	2020-08-30 14:04:45.743414+08	2020-08-30 14:04:45.743433+08
1668	HCI Partner Sales Manager - APJ Singapore,	VMware	https://sg.indeed.com/rc/clk?jk=abf2e6ef4e967b06&fccid=c762a27145bd166e&vjs=3	2020-08-30 14:04:49.178191+08	2020-08-30 14:04:49.178216+08
1669	Software Engineer	Embrio Consulting	https://sg.indeed.com/company/Embrio-Consulting-Pte-Ltd/jobs/Software-Engineer-32f834eb0126218b?fccid=a71f6e8f05db8ee0&vjs=3	2020-08-30 14:04:52.579323+08	2020-08-30 14:04:52.579345+08
1670	Software Engineer (Java) - Entry level (Degree Computer / Science engineering)	RECRUITFLASH PTE. LTD.	https://sg.indeed.com/rc/clk?jk=9c50c0897aafc70e&fccid=f74012740d21378a&vjs=3	2020-08-30 14:04:55.262978+08	2020-08-30 14:04:55.262999+08
1671	ITサポート/ Support Engineer	PERSOL Singapore	https://sg.indeed.com/rc/clk?jk=0224bf42448cf0cb&fccid=00b9e8b19ea4e0fb&vjs=3	2020-08-30 14:04:57.434679+08	2020-08-30 14:04:57.434717+08
1672	Systems Engineer (Digital Transformation)	Cartrack	https://sg.indeed.com/rc/clk?jk=032cfb395f8b97f4&fccid=214c752603950228&vjs=3	2020-08-30 14:04:59.311594+08	2020-08-30 14:04:59.311616+08
1673	Trainee, Research Engineer (Software Development) [#SGUnitedTraineeships]	NANYANG TECHNOLOGICAL UNIVERSITY	https://sg.indeed.com/rc/clk?jk=7a36d91bca418eb6&fccid=d869ca30ff8bbcdd&vjs=3	2020-08-30 14:05:03.055204+08	2020-08-30 14:05:03.055226+08
1674	Senior System Engineer (Unix)	SWIVELT PTE. LTD.	https://sg.indeed.com/rc/clk?jk=7ef2c25d71725fcb&fccid=d0ef9688c886770b&vjs=3	2020-08-30 14:05:06.38146+08	2020-08-30 14:05:06.381492+08
1675	Software Engineer	COLLABERA SERVICES PVT. LTD	https://sg.indeed.com/company/COLLABERA-SERVICES-PVT.-LTD/jobs/Software-Engineer-69693d6b0817c4ac?fccid=8b343f1c9066e936&vjs=3	2020-08-30 14:05:09.77884+08	2020-08-30 14:05:09.778862+08
1676	Software Engineer ( CBD / System Design)	CORESTAFF PTE. LTD.	https://sg.indeed.com/rc/clk?jk=08f0df3265847c5b&fccid=9d2768a60c4e2811&vjs=3	2020-08-30 14:05:11.759998+08	2020-08-30 14:05:11.76002+08
1677	Senior Quality Management System Engineer	BIOFOURMIS SINGAPORE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=a530b0ede702263d&fccid=ed255c0f8f8768e9&vjs=3	2020-08-30 14:05:14.880269+08	2020-08-30 14:05:14.880292+08
1678	#SGUNITEDJOBS SOFTWARE ENGINEER (C#)	PALAZON TECHNOLOGY PTE LTD	https://sg.indeed.com/rc/clk?jk=29d12bcfc2d10855&fccid=59414d631df22e02&vjs=3	2020-08-30 14:05:17.115596+08	2020-08-30 14:05:17.115616+08
1679	#SGUNITEDJOBS DESKTOP TECHNICIAN	HCL SINGAPORE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=f449c5c009f25cf7&fccid=580cf49bf1ac7109&vjs=3	2020-08-30 14:05:19.413563+08	2020-08-30 14:05:19.413585+08
1680	IT Security Engineer	UNTHREATS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=b64d44366365f31a&fccid=af35976ab6b9b02e&vjs=3	2020-08-30 14:05:23.262301+08	2020-08-30 14:05:23.26233+08
1681	#SGUNITEDJOBS SOFTWARE ENGINEER (JAVA)	SESAMI (SINGAPORE) PTE LTD	https://sg.indeed.com/rc/clk?jk=e29474a12359fd7d&fccid=76ec7cc76b4a8268&vjs=3	2020-08-30 14:05:25.427962+08	2020-08-30 14:05:25.427988+08
1682	Network Security Engineer	SKY & F PTE. LTD.	https://sg.indeed.com/rc/clk?jk=54a1700e2a987b1b&fccid=f424a2dd5bf01857&vjs=3	2020-08-30 14:05:28.360681+08	2020-08-30 14:05:28.360704+08
1683	Engineer/Manager	SINGTEL MOBILE SINGAPORE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=e1b6e18841326aed&fccid=a94c6bb50f118c9f&vjs=3	2020-08-30 14:05:31.346229+08	2020-08-30 14:05:31.346255+08
1684	Software Engineer/Application Developer (C or C++)	Randstad	https://sg.indeed.com/rc/clk?jk=c1937ca29ffd9a7b&fccid=f8b265243da9f9d7&vjs=3	2020-08-30 14:05:33.979175+08	2020-08-30 14:05:33.979195+08
1685	Quality Assurance Engineer	REN PTE. LTD.	https://sg.indeed.com/rc/clk?jk=d2a6d74f5f63d126&fccid=f1a48a553b167014&vjs=3	2020-08-30 14:05:36.083598+08	2020-08-30 14:05:36.083641+08
1686	Senior Applications Engineer	Silicon Labs	https://sg.indeed.com/rc/clk?jk=c776c5f7d549a0ec&fccid=46437b5e9e684d4a&vjs=3	2020-08-30 14:05:38.715586+08	2020-08-30 14:05:38.715606+08
1687	PLC Automation Engineer (PLC/Servo/Stepper Motion Controller/North Area)	TEMPSERV PTE. LTD.	https://sg.indeed.com/rc/clk?jk=b16fd4919fb0e9c9&fccid=9b5d24d6b512f96f&vjs=3	2020-08-30 14:05:41.293682+08	2020-08-30 14:05:41.293704+08
1688	#SGUNITEDJOBS SENIOR/ SOFTWARE ENGINEER	VCARGO CLOUD PTE. LTD.	https://sg.indeed.com/rc/clk?jk=189b34961c4bab3f&fccid=c38b2caecaf6f748&vjs=3	2020-08-30 14:05:43.432252+08	2020-08-30 14:05:43.432274+08
1689	Engineer - Product Support Group	RF360 SINGAPORE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=1f19cafeae04166a&fccid=095588e0a5765d6e&vjs=3	2020-08-30 14:05:46.00521+08	2020-08-30 14:05:46.00523+08
1690	#SGUNITEDJOBS SOFTWARE ENGINEER, AGILE	ACEXCELLENT CONSULTING PTE. LTD.	https://sg.indeed.com/rc/clk?jk=19f83072a0d062c3&fccid=7e873dd646c4f130&vjs=3	2020-08-30 14:05:48.179169+08	2020-08-30 14:05:48.17919+08
1691	#SGUNITEDJOBS TEST ENGINEER	ACHIEVE TECHNOLOGY ASIA PACIFIC PTE LTD	https://sg.indeed.com/rc/clk?jk=90da39c18fe24e6d&fccid=fbe791276b191d26&vjs=3	2020-08-30 14:05:50.164024+08	2020-08-30 14:05:50.164054+08
1692	Software Architect	Ethos Search Associates	https://sg.indeed.com/company/Ethos-Search-Associates-Pte-Ltd/jobs/Software-Architect-b7f13169018560dd?fccid=387d99a2d8fe92f8&vjs=3	2020-08-30 14:05:52.160812+08	2020-08-30 14:05:52.160995+08
1693	Senior QA Engineer (1-Year Contract)	VISENZE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=5ec3b6755dc4af1a&fccid=df28bbcc67a6cb10&vjs=3	2020-08-30 14:05:54.273292+08	2020-08-30 14:05:54.273315+08
1694	Senior Associate, Data Engineer	PwC	https://sg.indeed.com/rc/clk?jk=8c7d8d25af08dd2c&fccid=5e964c4afc56b180&vjs=3	2020-08-30 14:05:57.514801+08	2020-08-30 14:05:57.51482+08
1695	IT /Network Engineer	LUCKY JOINT CONSTRUCTION PTE. LTD.	https://sg.indeed.com/rc/clk?jk=a92178bb32455bf0&fccid=d7d53176adcce302&vjs=3	2020-08-30 14:06:00.317589+08	2020-08-30 14:06:00.317612+08
1696	Cloud Solution Architect - Azure Infra	Microsoft	https://sg.indeed.com/rc/clk?jk=9231ea63fb51640a&fccid=734cb5a01ee60f80&vjs=3	2020-08-30 14:06:02.326704+08	2020-08-30 14:06:02.326731+08
1697	Cyber Range Engineer	Jobline Resources Pte Ltd	https://sg.indeed.com/rc/clk?jk=1df0d55206d10a84&fccid=08a987b19a93d3a1&vjs=3	2020-08-30 14:06:05.192107+08	2020-08-30 14:06:05.192128+08
1698	Android Developer	ALEPH PTE. LTD.	https://sg.indeed.com/rc/clk?jk=da2889d18cf956e1&fccid=50bc83045b15e63d&vjs=3	2020-08-30 14:06:08.451387+08	2020-08-30 14:06:08.451413+08
1699	Manager, Senior Data Engineer	PwC	https://sg.indeed.com/rc/clk?jk=0b0b03d438559b56&fccid=5e964c4afc56b180&vjs=3	2020-08-30 14:06:10.823815+08	2020-08-30 14:06:10.823838+08
1700	Software Manager	Ethos Search Associates	https://sg.indeed.com/company/Ethos-Search-Associates-Pte-Ltd/jobs/Software-Manager-4f614cfef732e667?fccid=387d99a2d8fe92f8&vjs=3	2020-08-30 14:06:13.16591+08	2020-08-30 14:06:13.165931+08
1701	Product Manager	TRUSTY CARS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=ce54516318af87c8&fccid=882e44d000cca2da&vjs=3	2020-08-30 14:06:15.495914+08	2020-08-30 14:06:15.495936+08
1702	Project Engineer #SGUnitedJobs	VHF TECHNOLOGIES PTE LTD	https://sg.indeed.com/rc/clk?jk=7a3da40a834e9cd1&fccid=666ac55b1c3b7358&vjs=3	2020-08-30 14:06:17.834069+08	2020-08-30 14:06:17.834094+08
1703	System Engineer/Manager	SINGAPORE TELECOMMUNICATIONS LIMITED	https://sg.indeed.com/rc/clk?jk=68305e60f03dbe71&fccid=fa835ed545bbf2b9&vjs=3	2020-08-30 14:06:20.658119+08	2020-08-30 14:06:20.658158+08
1704	#SGUNITEDJOBS PRINCIPAL SOFTWARE ENGINEER	XENDIT PTE. LTD.	https://sg.indeed.com/rc/clk?jk=ddabf7c5e42bfb53&fccid=fe16e7030d87f82e&vjs=3	2020-08-30 14:06:23.769088+08	2020-08-30 14:06:23.769118+08
1705	DevOps Engineer	VISENZE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=2dc9b4337ade94e6&fccid=df28bbcc67a6cb10&vjs=3	2020-08-30 14:06:26.743131+08	2020-08-30 14:06:26.743151+08
1706	#SGUNITEDJOBS (103) SOFTWARE ENGINEER (JAVASCRIPT)	IT CONSULTANCY & SERVICES PTE LTD	https://sg.indeed.com/rc/clk?jk=59ee56eac611c60e&fccid=5f9134320c3c84df&vjs=3	2020-08-30 14:06:28.964126+08	2020-08-30 14:06:28.964147+08
1707	#SGUNITEDJOBS SOFTWARE ENGINEER	COLLABERA TECHNOLOGIES PTE. LTD.	https://sg.indeed.com/rc/clk?jk=0ec51b953cfa2761&fccid=ccd32f626fb21bb9&vjs=3	2020-08-30 14:06:31.221103+08	2020-08-30 14:06:31.221126+08
1708	Senior Software Engineer #SGUnitedJobs	BIQMIND PTE. LTD.	https://sg.indeed.com/rc/clk?jk=28ceb97905d9062c&fccid=05df59aa349c0299&vjs=3	2020-08-30 14:06:33.187548+08	2020-08-30 14:06:33.18757+08
1709	#SGUNITEDJOBS DESKTOP SUPPORT ENGINEER	PRO-DATECH SYSTEMS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=b212675436cd1a0e&fccid=f4423160b551ccb1&vjs=3	2020-08-30 14:06:35.7954+08	2020-08-30 14:06:35.795419+08
1710	#SGUNITEDJOBS ENGINEER/MANAGER	SINGTEL MOBILE SINGAPORE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=6edca9b01e0acf06&fccid=a94c6bb50f118c9f&vjs=3	2020-08-30 14:06:38.467153+08	2020-08-30 14:06:38.467177+08
1711	Test Manager	Jobline Resources Pte Ltd	https://sg.indeed.com/rc/clk?jk=99890c5ccad230d1&fccid=08a987b19a93d3a1&vjs=3	2020-08-30 14:06:40.289794+08	2020-08-30 14:06:40.289815+08
1712	Cyber Security Engineer (CyberArk)	ITCAN Pte Ltd	https://sg.indeed.com/company/ITCAN-Pte-Ltd/jobs/Cyber-Security-Engineer-7cf0fecc12294e31?fccid=dac85444d99b91d5&vjs=3	2020-08-30 14:06:42.70922+08	2020-08-30 14:06:42.709243+08
1713	Software Cosultant	Adecco - GS	https://sg.indeed.com/rc/clk?jk=e46f1124fa4e741f&fccid=fa101182bd51b2ce&vjs=3	2020-08-30 14:06:45.103889+08	2020-08-30 14:06:45.10391+08
1714	Unit Manager - Thin Film	RF360 SINGAPORE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=c278fc04036f0e2f&fccid=095588e0a5765d6e&vjs=3	2020-08-30 14:06:49.424818+08	2020-08-30 14:06:49.424839+08
1715	#SGUNITEDJOBS CITRIX ENGINEER	ACEXCELLENT CONSULTING PTE. LTD.	https://sg.indeed.com/rc/clk?jk=8a656248eddda50f&fccid=7e873dd646c4f130&vjs=3	2020-08-30 14:06:51.99487+08	2020-08-30 14:06:51.99489+08
1716	Assistant Engineer/Engineer – (System Integration)	RECRUITFLASH PTE. LTD.	https://sg.indeed.com/rc/clk?jk=30cfad1999755305&fccid=f74012740d21378a&vjs=3	2020-08-30 14:06:54.838602+08	2020-08-30 14:06:54.838623+08
1717	Outsource IT Engineer (L1)	NTC INTEGRATION (PTE) LTD	https://sg.indeed.com/rc/clk?jk=09da54f2e45c5d68&fccid=8c174a1f329a4e51&vjs=3	2020-08-30 14:06:57.760481+08	2020-08-30 14:06:57.760501+08
1718	Data Engineer	Ambition	https://sg.indeed.com/rc/clk?jk=7269516e37e905fb&fccid=c9cd3dc1c74035d6&vjs=3	2020-08-30 14:06:59.978506+08	2020-08-30 14:06:59.978527+08
1719	Tech Lead	TIKTOK PTE. LTD.	https://sg.indeed.com/rc/clk?jk=fe11734e43d12e10&fccid=3de77e3672597026&vjs=3	2020-08-30 14:07:02.555141+08	2020-08-30 14:07:02.555163+08
1720	#SGUNITEDJOBS MANAGED SERVICES ENGINEER	SIMCORP SINGAPORE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=84d25b408aeb3fcc&fccid=0c91abbd8146eca6&vjs=3	2020-08-30 14:07:05.499822+08	2020-08-30 14:07:05.499845+08
1721	#SGUNITEDJOBS AUTOMOTIVE EMBEDDED ENGINEER	PARAMOUNT RESOURCES PTE LTD	https://sg.indeed.com/rc/clk?jk=9f240a12d66f296e&fccid=e4460d7a830ad683&vjs=3	2020-08-30 14:07:08.006164+08	2020-08-30 14:07:08.006186+08
1722	#SGUNITEDJOBS OUTSOURCE IT ENGINEER (L1)	NTC INTEGRATION (PTE) LTD	https://sg.indeed.com/rc/clk?jk=3a5043c63094fb6d&fccid=8c174a1f329a4e51&vjs=3	2020-08-30 14:07:10.090247+08	2020-08-30 14:07:10.090269+08
1723	#SGUNITEDJOBS PRODUCT MANAGER	TRUSTY CARS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=816c49406b10fa50&fccid=882e44d000cca2da&vjs=3	2020-08-30 14:07:12.15162+08	2020-08-30 14:07:12.151642+08
1724	"#SGUnitedJobs" Assistant Manager, Information Technology	Hindu Endowments Board	https://sg.indeed.com/rc/clk?jk=ffdd519fd34e552e&fccid=9fe94f5c95af5670&vjs=3	2020-08-30 14:07:14.582329+08	2020-08-30 14:07:14.582354+08
1725	Senior Architect, Professional Services	TIBCO SOFTWARE SINGAPORE PTE LTD	https://sg.indeed.com/rc/clk?jk=0339c14575da5f0b&fccid=4abbd69d04f89a18&vjs=3	2020-08-30 14:07:17.916585+08	2020-08-30 14:07:17.916608+08
1726	Senior Network Engineer (Firewalls & Security)	ITCAN Pte Ltd	https://sg.indeed.com/company/ITCAN-Pte-Ltd/jobs/Senior-Network-Engineer-fe46fc96520de4b2?fccid=dac85444d99b91d5&vjs=3	2020-08-30 14:07:20.26206+08	2020-08-30 14:07:20.2621+08
1727	#SGUnitedJobs Systems Engineer	ITCAN PTE. LIMITED	https://sg.indeed.com/rc/clk?jk=f7c69aba4f383468&fccid=dac85444d99b91d5&vjs=3	2020-08-30 14:07:23.751168+08	2020-08-30 14:07:23.751194+08
1728	#SGUNITEDJOBS DEVOPS ENGINEER	VISENZE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=3e61b28c2c0aecda&fccid=df28bbcc67a6cb10&vjs=3	2020-08-30 14:07:25.975752+08	2020-08-30 14:07:25.975771+08
1729	AI Machine Learning Engineering Manager (Singapore based)	Agoda	https://sg.indeed.com/rc/clk?jk=b743e193f65fa753&fccid=460239a31e3c73bb&vjs=3	2020-08-30 14:07:29.922048+08	2020-08-30 14:07:29.92207+08
1730	Senior DevOps Engineer	PRUDENTIAL SERVICES SINGAPORE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=ab58267a79fd20ed&fccid=fc8c3d0a4bc1aa4f&vjs=3	2020-08-30 14:07:32.319357+08	2020-08-30 14:07:32.319389+08
1731	System and Security Engineer (Ref 23330)	JOBLINE RESOURCES PTE. LTD.	https://sg.indeed.com/rc/clk?jk=80c3eaa06512cc94&fccid=08a987b19a93d3a1&vjs=3	2020-08-30 14:07:34.276636+08	2020-08-30 14:07:34.276656+08
1732	Talent Acquisition Specialist (Short term Contract) #SGUnitedJobs	CIALFO PTE. LTD.	https://sg.indeed.com/rc/clk?jk=e6841c63fcf2cccf&fccid=a9e238e08ed877ca&vjs=3	2020-08-30 14:07:38.186364+08	2020-08-30 14:07:38.186389+08
1733	Data Engineer, Azure (Asset Management)	Charterhouse Pte Ltd	https://sg.indeed.com/rc/clk?jk=68db80c0167b92fb&fccid=b83c25ae21a976ae&vjs=3	2020-08-30 14:07:41.21827+08	2020-08-30 14:07:41.218314+08
1734	Maintenance Engineer (CBD / E&E)	Corestaff Pte Ltd	https://sg.indeed.com/company/Corestaff-Pte-Ltd/jobs/Maintenance-Engineer-ef221262b64daa4c?fccid=9d2768a60c4e2811&vjs=3	2020-08-30 14:07:44.367179+08	2020-08-30 14:07:44.367203+08
1735	Senior Product Manager	HOMAGE CO PTE. LTD.	https://sg.indeed.com/rc/clk?jk=e7cca949e18a19b9&fccid=288029edb6c524ff&vjs=3	2020-08-30 14:07:47.834504+08	2020-08-30 14:07:47.834526+08
1736	Staff/Senior Software Engineer/$5k/Network/Jurong	People Profilers Pte Ltd	https://sg.indeed.com/pagead/clk?mo=r&ad=-6NYlbfkN0AbLEAfUJ_8-EnULjJ15l1k6LfB5RD9Ew3x4SlXgqMriw8oywaHohqK_bfr-pESj-g4IrkFOAYTCBxlINqf1InTEPgCwjmqKRoRpUaXcYWOubxefS4pJl-eaJVUURG0r_cyOkXIuI8Rz7-I-_hUHs6NX39Ieoq2jt0kybl5UEiX_GeSSWcyh9VJ8TUnkFC6Wl43OEbwhScWFXs9mdSAjgHzBRpZa29siMf54bVmTEj_-ezCSiCf2lRuucZzHoicv8X3l-fpvq2Xo-fN2gSHo_lvd4adlHpp2qQJLJQgtrNzd1FpZCAvs5I0gBFEZRG6-t5hpJMtOQFkBgXLTYxY86aWUBQ-sNXZMzkb1ePT-ok8AwAK6zEMIKmcHFvwkUZj24E8OkINnOsxSI6qcnYS31Qk6KafUwNF1Yx_fqkFp-8NxaWAp2brv2ed66xtDmwrDbHJc_3bUR8MmBx593PCCwj8wn0gMPoumBHfAGp33knJlB1GiRND_pN6leE54Fsh40DCMYO6BvedbEkQJ6MSl4VG97RUEiF0g3y2pRWmksv8ETHAmYxTEX132tvnh9MSxEuTc_qfKLfUFyzOS_wjx-BNvRjofqf95ug92aaJ6Js1w54Ly-7NAiKRU775UtmT7PyTqXETvCF1kqBF2dyZ_RdwR__EBkb8IQ1ReB1SI7nVflP-O9BU6tI-meOJOUjz_T4=&p=4&fvj=0&vjs=3	2020-08-30 14:07:53.335684+08	2020-08-30 14:07:53.335714+08
1737	Data Engineering Manager	Volt	https://sg.indeed.com/rc/clk?jk=a56124461dfbe572&fccid=86c0b4fa6c1398be&vjs=3	2020-08-30 14:07:56.205161+08	2020-08-30 14:07:56.205183+08
1738	#SGUNITEDJOBS CORPORATE BANK TECHNOLOGY – PAYMENTS AND CHEQUES – SR. DEVELOPMENT ENGINEER - VP	DEUTSCHE BANK AKTIENGESELLSCHAFT	https://sg.indeed.com/rc/clk?jk=c3cc0452713bf043&fccid=f1d8e147024abb3f&vjs=3	2020-08-30 14:07:57.936281+08	2020-08-30 14:07:57.936315+08
1739	#SGUNITEDJOBS TECHNICAL SUPPORT ENGINEER (L2/L3)	DIGIFY PTE. LTD.	https://sg.indeed.com/rc/clk?jk=500ca384bb19976c&fccid=8ba0270d125de38e&vjs=3	2020-08-30 14:07:59.695298+08	2020-08-30 14:07:59.695323+08
1740	#SGUNITEDJOBS IT SECURITY ENGINEER	UNTHREATS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=017ea0591a7f5281&fccid=af35976ab6b9b02e&vjs=3	2020-08-30 14:08:01.620112+08	2020-08-30 14:08:01.620144+08
1741	Software Engineer (Halcon/C#/WPF/ MVVM) (1 Year Contract/US MNC)	TEMPSERV PTE. LTD.	https://sg.indeed.com/rc/clk?jk=85cfaabbd530190a&fccid=9b5d24d6b512f96f&vjs=3	2020-08-30 14:08:05.620655+08	2020-08-30 14:08:05.620679+08
1742	#SGUNITEDJOBS IT /NETWORK ENGINEER	LUCKY JOINT CONSTRUCTION PTE. LTD.	https://sg.indeed.com/rc/clk?jk=1eabb4bb85ec9faa&fccid=d7d53176adcce302&vjs=3	2020-08-30 14:08:07.91143+08	2020-08-30 14:08:07.911451+08
1743	Senior Executive, IT Digital & Commercial Systems - 2 Years Contract	Sentosa Development Corporation	https://sg.indeed.com/rc/clk?jk=44a2bf1f90c76a9d&fccid=65d65f8a4a30f72c&vjs=3	2020-08-30 14:08:10.170083+08	2020-08-30 14:08:10.170106+08
1744	System Engineer/ Senior System Engineer	Capita Singapore	https://sg.indeed.com/pagead/clk?mo=r&ad=-6NYlbfkN0DNHpLqAaVRuzWRNyPevW9ZpedY5KjY-iw4GyqO-VdA8sUA9ZP1s3vSZG6NHK5t8C7b6uEZxXvXliahhSMqrCcl7EIOvTyaB1RWd8RTvKy59Xx8F_GLTIqTs26y3bDBP8yZhyFkQl8YqK4eDyyu1vTiKWgBZXzyhHMn1p74iJdzMQkyBHyfr55pGIO8-8g_NfEnNqk2DSVi1Ed65dm4L7BgKF3GAiu-z4bv2liVG2NKhTi3y2k-KCMohap9mks68y_jD2QPXE1-b1PO-JZnP-r6gWBWJAbYRiQ_IsaaY01WV1pTiV40F3AuTGSkVkQvA6Zk313TyrLonchj3yDqZOk9slsOsvIBNHbP4OpB50t9TBrCFuAkpGrAz_tCjf_95JIBhw9BSjdskBZMcSI5dZ6SmF1ZHG5tXvHPyGhtT5OqqesH6PpCxgt1OLnl4Ee8V6XVutObj9SjzYL_hqE0XSxJJ3RMdoZ18ozjqxIsTb1iObX48B8Vn3Y6KCdwZKbTO5ac_1OOAfTfSw==&p=12&fvj=0&vjs=3	2020-08-30 14:08:12.4456+08	2020-08-30 14:08:12.445634+08
1745	Customer Delivery Manager	ViSenze - Artificial Intelligence for the Visual Web	https://sg.indeed.com/rc/clk?jk=2e7f3c9fdb08862f&fccid=f947fcaac3b936c9&vjs=3	2020-08-30 14:08:15.361623+08	2020-08-30 14:08:15.361644+08
1746	Electrical Design Engineer (5days/ West/ Company Transport PickUp)	HKM HR Management Pte Ltd	https://sg.indeed.com/company/HKM-HR-Management-Pte-Ltd./jobs/Electrical-Design-Engineer-9761acf71e7432e9?fccid=9690234474c51797&vjs=3	2020-08-30 14:08:17.879332+08	2020-08-30 14:08:17.879362+08
1747	#SGUNITEDJOBS SOFTWARE ENGINEER (HALCON/C#/WPF/ MVVM) (1 YEAR CONTRACT/US MNC)	TEMPSERV PTE. LTD.	https://sg.indeed.com/rc/clk?jk=6461b91657419476&fccid=9b5d24d6b512f96f&vjs=3	2020-08-30 14:08:20.90904+08	2020-08-30 14:08:20.909062+08
1748	Senior IT Engineer / Senior System Engineer	Morgan McKinley	https://sg.indeed.com/rc/clk?jk=71f70648757a5300&fccid=893f9f3cd9fe4472&vjs=3	2020-08-30 14:08:23.424455+08	2020-08-30 14:08:23.424481+08
1749	#SGUNITEDJOBS SENIOR DEVOPS ENGINEER	PRUDENTIAL SERVICES SINGAPORE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=bb3bffa467cd5261&fccid=fc8c3d0a4bc1aa4f&vjs=3	2020-08-30 14:08:25.106911+08	2020-08-30 14:08:25.106933+08
1750	#SGUNITEDJOBS SENIOR ARCHITECT, PROFESSIONAL SERVICES	TIBCO SOFTWARE SINGAPORE PTE LTD	https://sg.indeed.com/rc/clk?jk=8eb6cc4ac9b6cc19&fccid=4abbd69d04f89a18&vjs=3	2020-08-30 14:08:27.944191+08	2020-08-30 14:08:27.944219+08
1751	#SGUNITEDJOBS DESKTOP SUPPORT ENGINEER - (FRESHERS ARE WELCOME) - PCP	PCCW SOLUTIONS INSYS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=a3ae36feac41fe0d&fccid=c0b81d79b91b5051&vjs=3	2020-08-30 14:08:30.096431+08	2020-08-30 14:08:30.096456+08
1752	DevOps Engineer (Cloud)	Embrio Consulting	https://sg.indeed.com/company/Embrio-Consulting-Pte-Ltd/jobs/Devop-Engineer-cbcc681860b68c55?fccid=a71f6e8f05db8ee0&vjs=3	2020-08-30 14:08:31.874059+08	2020-08-30 14:08:31.87409+08
1753	Senior / Software Engineer	GMP TECHNOLOGIES S PTE LTD	https://sg.indeed.com/pagead/clk?mo=r&ad=-6NYlbfkN0AbLEAfUJ_8-EnULjJ15l1k6LfB5RD9Ew3x4SlXgqMriw8oywaHohqKNN2KzECKg1lK04RWJOxmtbw7X6-FZn_KUBdbx25tI8LrQjTdXOeQ7QxE0fb5moRO6ktxW1AQK0QoXCXVt6KdWdKWdQ3b25BK3gbD6ad5dfA1oWHXxoFtR3vm8T8atTS22u7k9Vbb_9Mx5YPUATJOLt11KmC0Dla-bPWPAYMmoZh1OU0aGLy9Y3oAyjOxd2qB5q2IbPkrm4g-QXelKJDjIiM2SjE4ERbvz2mUAg3Yy9ASG62VetzHXvkSkxnH95B9mR0y_W0zua15ucz7LV1GTz2paJh9sCfsNISV9UmcZC4JhPnKinGyF80yC5BLTegnmseuljHH2i96bOW-IKPjTixXey97ZN4Wy_Wj0JlfVARU5UHzywuxHq1RrVLO_71z41cr7kQyRiai34khVd5jfHBVOklaPDzvHYvJz4bmjNMQcp4Kk0Kd-CFykDbIRreh9HSlvooXDHoumVVudi6OGHuDsFIIM2jDIEKbfDfBtI1IU2mJilQnBQoIQq-PJqdmxaXpbToqvabTuqmLAft0V-Go5Ix7SwP_Yb2PFsyK1j9SYRXBDraVB8VbbYnGQ8dFkat8wgs9gAfw2VxUW8_RWEdaipSJLgj3RbiiWAJhTPaD2SKcMyPBLlmhiADElNAVf9OuWT4VUJ2UkX3HS3GKDA==&p=6&fvj=0&vjs=3	2020-08-30 14:08:34.715128+08	2020-08-30 14:08:34.715151+08
1754	IT SUPPORT ENGINEER, IMMEDIATE POSITION - #SGUNITEDJOBS	QUANTUM DIGITAL SOLUTIONS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=002bbf689165b38a&fccid=1dd95ffabf3f82b0&vjs=3	2020-08-30 14:08:36.727775+08	2020-08-30 14:08:36.727795+08
1755	Audio DSP Engineer	HPS Partners Pte Ltd	https://sg.indeed.com/pagead/clk?mo=r&ad=-6NYlbfkN0AbLEAfUJ_8-EnULjJ15l1k6LfB5RD9Ew3x4SlXgqMriw8oywaHohqKNN2KzECKg1lK04RWJOxmtSJDPBMMNlUD1NItPsOMMonMEa2tU6fnxD9IC46EognDF1EzWvi2sDEb4sqomUCo-F2IeWALZ6WeISOIDCVAbl8jByzFsdnFA-Fdb91rQNcWbjC0lr38Mu795AWYWxWSknk5tmhB4IxPtYYPuAHCOLbp_l68p6rWyt1DCii_j9FHN58zRj97YJWTIE7lNDHAbcMCs-d00s582zSqpEGU5AfWxBU-D4i6km70JKA4xB-VYKHpHPHQP_gTc5SJKXsDsaRA1-GTqY16fROZdwViYfArJZ8QIB1WZ2Kc9071mTsYsGSnT9XQ7EslxrKN7g2I4dYvKDBG1UUva8bGZGJBFzZTLBPvFbNYE4XQU7L-54at-o_I8cpxQT4T1S_zadMFoOx-SymxMjF526ikzGnRWwg7iYx_IvihTmgvID-OYe76TkxLBQFBAnYNdIn0kaE2oUwdYcxGAubKLStYGGd5IZg4XCvor5NP_rhncwaw0Im4hg0B5b5udEQ9oEwBB18eXZwfu9zJjeEwcOBwg_VmtZ21TRa7Cw_4cwVFt27YD260vppMwBcHG40WQWhjAUV8aHRim8pnlV4-&p=8&fvj=0&vjs=3	2020-08-30 14:08:40.014157+08	2020-08-30 14:08:40.01418+08
1756	#SGUNITEDJOBS NETWORK SECURITY ENGINEER	SKY & F PTE. LTD.	https://sg.indeed.com/rc/clk?jk=c2ed8357c622ca3f&fccid=f424a2dd5bf01857&vjs=3	2020-08-30 14:08:41.555006+08	2020-08-30 14:08:41.555027+08
1757	#SGUNITEDJOBS ANDROID DEVELOPER	ALEPH PTE. LTD.	https://sg.indeed.com/rc/clk?jk=1615a042dfaf3345&fccid=50bc83045b15e63d&vjs=3	2020-08-30 14:08:43.690718+08	2020-08-30 14:08:43.690742+08
1758	#SGUNITEDJOBS SENIOR SYSTEM ENGINEER (UNIX)	SWIVELT PTE. LTD.	https://sg.indeed.com/rc/clk?jk=f83ab8aa46d4b865&fccid=d0ef9688c886770b&vjs=3	2020-08-30 14:08:46.520932+08	2020-08-30 14:08:46.520953+08
1759	UI/UX Designer	Spring Professional (Singapore) Pte. Ltd.	https://sg.indeed.com/rc/clk?jk=03a30af1b7aac749&fccid=317a1ea19830cae3&vjs=3	2020-08-30 14:08:51.389755+08	2020-08-30 14:08:51.389777+08
1760	#SGUNITEDJOBS SYSTEM AND SECURITY ENGINEER (REF 23330)	JOBLINE RESOURCES PTE. LTD.	https://sg.indeed.com/rc/clk?jk=8afb731873f263f6&fccid=08a987b19a93d3a1&vjs=3	2020-08-30 14:08:54.261442+08	2020-08-30 14:08:54.261474+08
1761	Senior MES Engineer	P'nnacle Pte Ltd	https://sg.indeed.com/pagead/clk?mo=r&ad=-6NYlbfkN0AbLEAfUJ_8-EnULjJ15l1k6LfB5RD9Ew3x4SlXgqMriw8oywaHohqKNN2KzECKg1lK04RWJOxmtf4m3jtZo2qgMM5JvxOPfEZvefSF5DRzFltPQfkG2gnid1nPSvJkkNq0LVPrXw04sZifdmcHV7nr8xR_7nhHJ6ElJNFwMw14STd29kRXOxGUaxwHtD91RZmrS6v-pOUBj92fyQnW4w7-iuuia8MSJJnn6o83xabZZUs77RSFFq3CfviBXo0LjSblST40d1FleCiM29UlGQhjK1B8ubCZdpuI-uM1ZLPdU5ryLHGI7A_GfrPN-6ZXFDKWav9Jl6mEqSBFRdEkC9dcYuir-jGC3PbvJ_cnF5yTl9CtiO4r2KDoTB76N7QZDLtCs0KdSeUrAH-bgaGZTcp6Pf0aoDnHHpE0zFu69akrCn7ufK4yHQsKnA1OMOCzeJs6olwBpMSPX9PdH_ctTdTw94enXwaTitv_EWepnZI1_N0w2KA4NxTEnEdP8h4YksFIl2WbdPhGkfq-W8SByvQcxYER_HersaIi5dPwn5ImanqoZ2TrY0sj8IZpFtldUrhMAHml9j2Ds2fLQFvth-ge-mU3-HHOZW7I13Ief__rhZVspmMAiJyTxPcLvDanuoplbHrvV3ZJQ-zSTkRUY4LrC84fIDBMoRMyuE3gfLqaf8yD9gubulkFvcch-VJq88o=&p=14&fvj=0&vjs=3	2020-08-30 14:08:58.173091+08	2020-08-30 14:08:58.173113+08
1762	Firmware Engineer	HPS Partners Pte Ltd	https://sg.indeed.com/pagead/clk?mo=r&ad=-6NYlbfkN0AbLEAfUJ_8-EnULjJ15l1k6LfB5RD9Ew3x4SlXgqMriw8oywaHohqKNN2KzECKg1lK04RWJOxmtYNXt_p9muAr3LO5t8UM57Jvvu1OsqnonBDFpGYfFH106t-Yre0Qsgq4LLPJaiTIh62fxsgoE_iGJeNj4-nIyN88GlQpC7ajQ7tHedin_i6XlRKu0bWJZHb_pC0hVX8la0mWkFmVNVzv6hxHNMCVWDeTq_aGZa8Xw83Rm-IYXUbfzfWgqDE0ZYIu1b51jtSRBddrJV9dT2DJgJ7wfp5IJvL68jhLMoKrJsfKU5CYnSJPtN7BZl_T_VvfIBRtT4W1i9eI-eKcnYIt86hBAsfUZcuTJ8-mfmaXcmu4n-dAv0W8Qt6tzNdO2SfQsUHNToxIPbFrRXCudV5ObUo1lWRkzCCN5triUoK5nrBoZ3-eLsfsZK518JQMGJvEeGqnoJun72Mtb6fOSBcgMG0zg_QYhlEB5qj17MeOLyUZvHxFDltF9Uvwy7WYUBX-RJxLkSiRH6IrqBdw49vUmHoqyunUhn_fdjZ1LFG_BacV5noCzyLL1Md-wpA9DQSXMpRdr-C82k_xIcjXT-QfmbSeC3DqaebZYKX12VkY5NqlSc8uI009pBqCJVDJFiY9Euv_VTvY4x3o-A72C-FUnc0PB-3L4Oi1DYpEHIYM0A==&p=0&fvj=0&vjs=3	2020-08-30 14:09:01.425213+08	2020-08-30 14:09:01.425234+08
1805	Senior Software Engineer	Salt Recruitment	https://sg.indeed.com/rc/clk?jk=80fbb73d1f856955&fccid=d35f6b081e467c24&vjs=3	2020-08-30 14:10:51.690747+08	2020-08-30 14:10:51.690769+08
1763	#SGUNITEDJOBS SENIOR EXECUTIVE, IT DIGITAL & COMMERCIAL SYSTEMS - 2 YEARS CONTRACT	SENTOSA DEVELOPMENT CORPORATION	https://sg.indeed.com/rc/clk?jk=d03283ab0a6a24e0&fccid=65d65f8a4a30f72c&vjs=3	2020-08-30 14:09:03.35185+08	2020-08-30 14:09:03.351874+08
1764	Software Engineer, Core Services - Apple Media Products	Apple	https://sg.indeed.com/rc/clk?jk=f0de038048dc7a40&fccid=c1099851e9794854&vjs=3	2020-08-30 14:09:06.397071+08	2020-08-30 14:09:06.397093+08
1765	Software Engineer	Teradyne	https://sg.indeed.com/rc/clk?jk=b24d7a7ea42c0baf&fccid=24b68f331fefccc0&vjs=3	2020-08-30 14:09:09.460127+08	2020-08-30 14:09:09.460149+08
1766	Quality Engineer	Medtronic	https://sg.indeed.com/rc/clk?jk=4923f4b329b39f70&fccid=f06a4d05bf5510ec&vjs=3	2020-08-30 14:09:12.259063+08	2020-08-30 14:09:12.259126+08
1767	Software Engineer (Software Development) #SGUnitedTraineeships #SGUP	SGunited	https://sg.indeed.com/rc/clk?jk=1a2e9c8ed19466b9&fccid=789644d61dab830f&vjs=3	2020-08-30 14:09:14.952636+08	2020-08-30 14:09:14.952665+08
1768	Software Engineer (iDirect) #SGUnitedTraineeships #SGUP	SGunited	https://sg.indeed.com/rc/clk?jk=75c6288564d73eed&fccid=789644d61dab830f&vjs=3	2020-08-30 14:09:17.266485+08	2020-08-30 14:09:17.266529+08
1769	Associate Test Engineer (LS-Swift)	KLA-Tencor	https://sg.indeed.com/rc/clk?jk=6737059844dd8d16&fccid=c8fc142c28286059&vjs=3	2020-08-30 14:09:20.059811+08	2020-08-30 14:09:20.059832+08
1770	Performance Engineer	Keppel Corporation	https://sg.indeed.com/rc/clk?jk=64a1da59f5c04309&fccid=5a2be630799e9295&vjs=3	2020-08-30 14:09:21.924088+08	2020-08-30 14:09:21.924111+08
1771	Software Engineer, Testing (Mid Level)	MOBILITYX PTE. LTD.	https://sg.indeed.com/rc/clk?jk=6758960be05377d5&fccid=8f70e765b4390e53&vjs=3	2020-08-30 14:09:24.130359+08	2020-08-30 14:09:24.130387+08
1772	Project Engineer/Project Co-ordinator	TRITON TECH PTE LTD	https://sg.indeed.com/company/Koon-Seng-Plumbing-and-Trading-PTE-LTD/jobs/Project-Engineer-Project-Ordinator-33f6595d571f4c7a?fccid=30a09b9feb1f143c&vjs=3	2020-08-30 14:09:26.578367+08	2020-08-30 14:09:26.578397+08
1773	Intern, Student Training in Engineering Program (STEP), 2021	Google	https://sg.indeed.com/rc/clk?jk=894b35aeadf3b741&fccid=a5b4499d9e91a5c6&vjs=3	2020-08-30 14:09:29.027878+08	2020-08-30 14:09:29.027898+08
1774	Associate Software Developer #SGUnitedTraineeships #SGUP	SGunited	https://sg.indeed.com/rc/clk?jk=750c21a3a3f57a1c&fccid=789644d61dab830f&vjs=3	2020-08-30 14:09:31.358155+08	2020-08-30 14:09:31.358175+08
1775	Software Engineer	BANK OF SINGAPORE LIMITED	https://sg.indeed.com/rc/clk?jk=162bde9424ec4c73&fccid=f53f057795eadec6&vjs=3	2020-08-30 14:09:34.024844+08	2020-08-30 14:09:34.024863+08
1776	New Grad Software Engineer	STRIPE PAYMENTS SINGAPORE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=d39e42327aae7284&fccid=7b7508f16485a41d&vjs=3	2020-08-30 14:09:35.903803+08	2020-08-30 14:09:35.903824+08
1777	Lead Piping Design Engineer	Linkgap	https://sg.indeed.com/rc/clk?jk=9c1d447782815521&fccid=3a35d3c1bed2048e&vjs=3	2020-08-30 14:09:38.552975+08	2020-08-30 14:09:38.552998+08
1778	Desktop Engineer Level 1	ITCAN Pte Ltd	https://sg.indeed.com/company/IT-Business-Solutions-Sdn-Bhd/jobs/Desktop-Engineer-Level-7d02e801a39a5e4c?fccid=60e626149f3eaafb&vjs=3	2020-08-30 14:09:41.34626+08	2020-08-30 14:09:41.346291+08
1779	Desktop Support Engineer	COMPASSITES TECHNOLOGY SOLUTIONS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=3f9574e7f1360299&fccid=3eab401e3406fb78&vjs=3	2020-08-30 14:09:43.848284+08	2020-08-30 14:09:43.848308+08
1780	Software Engineer	INNOVATIVE CONSULTING PTE. LTD.	https://sg.indeed.com/rc/clk?jk=c42b7756898cfe09&fccid=511289303354d940&vjs=3	2020-08-30 14:09:46.67995+08	2020-08-30 14:09:46.679971+08
1781	Embedded Software Engineer	UNI CONNECT PTE LTD	https://sg.indeed.com/rc/clk?jk=0d8e8b73dc6878e2&fccid=ce037523ea4289b5&vjs=3	2020-08-30 14:09:49.377308+08	2020-08-30 14:09:49.377329+08
1782	Test Engineer, Networking (iDirect) #SGUnitedTraineeships #SGUP	SGunited	https://sg.indeed.com/rc/clk?jk=d8e21408f7f5edf0&fccid=789644d61dab830f&vjs=3	2020-08-30 14:09:51.663291+08	2020-08-30 14:09:51.663312+08
1783	#SGUnitedJobs Senior Software/Hardware Engineer (6 Months)	Singapore Land Authority	https://sg.indeed.com/rc/clk?jk=a7f15e1f72611108&fccid=423697b7d3ec2bb9&vjs=3	2020-08-30 14:09:53.654287+08	2020-08-30 14:09:53.654307+08
1784	Principal Software Engineer	XENDIT PTE. LTD.	https://sg.indeed.com/rc/clk?jk=127e21abb2ab65f3&fccid=fe16e7030d87f82e&vjs=3	2020-08-30 14:09:56.422995+08	2020-08-30 14:09:56.423017+08
1785	Senior Software Engineer (PHP, Drupal)	INDUSTRIAL ELECTRONICS PTE LTD	https://sg.indeed.com/rc/clk?jk=b3eb0e41b5160547&fccid=4f8d70df44c72446&vjs=3	2020-08-30 14:09:59.333093+08	2020-08-30 14:09:59.333115+08
1786	Quantitative Trading Analyst	DRW Trading Group	https://sg.indeed.com/rc/clk?jk=9506fe59ceb41fbe&fccid=42ccd87a2c182a30&vjs=3	2020-08-30 14:10:01.38886+08	2020-08-30 14:10:01.388891+08
1787	Enterprise Program Director - APJ 105	Nutanix	https://sg.indeed.com/rc/clk?jk=1fde5e96430c7287&fccid=dd7de5cf522ca5fc&vjs=3	2020-08-30 14:10:04.446988+08	2020-08-30 14:10:04.447009+08
1788	Software Engineer (FullStack Developer)	EPS COMPUTER SYSTEMS PTE LTD	https://sg.indeed.com/rc/clk?jk=d0f88ccdff15ffc5&fccid=3a0666a23d72e8ec&vjs=3	2020-08-30 14:10:06.587223+08	2020-08-30 14:10:06.58725+08
1789	IT Field Engineer	NEW4U SYSTEM PTE LTD	https://sg.indeed.com/rc/clk?jk=94615cc4346a7c63&fccid=14c91a7e7245b68e&vjs=3	2020-08-30 14:10:09.451103+08	2020-08-30 14:10:09.451125+08
1790	Quantitative Trading Analyst	DRW	https://sg.indeed.com/rc/clk?jk=dcfa044b31ab1e2e&fccid=d9e7c4d795860e0c&vjs=3	2020-08-30 14:10:12.441588+08	2020-08-30 14:10:12.441607+08
1791	#SGUNITEDJOBS 2 * SOFTWARE ENGINEER	NAHIMIC SINGAPORE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=5e07575c236aaafe&fccid=67bbe96d83d97c71&vjs=3	2020-08-30 14:10:14.99501+08	2020-08-30 14:10:14.99503+08
1792	Senior / Software Engineer, Frontend	Gigworks Pte Ltd	https://sg.indeed.com/company/Gigworks-Pte-Ltd/jobs/Senior-26ad05bfeb4d65ac?fccid=cbee8ee77c5b4966&vjs=3	2020-08-30 14:10:18.379138+08	2020-08-30 14:10:18.379158+08
1793	Software Engineer #SGUnitedTraineeships #SGUnitedMidCareer	MXHL PTE. LTD.	https://sg.indeed.com/rc/clk?jk=21ba9f5ec67ba881&fccid=b5708d8bd00222f1&vjs=3	2020-08-30 14:10:20.851705+08	2020-08-30 14:10:20.851735+08
1794	Application Developer/Software Engineer	ENCORA TECHNOLOGIES PTE. LTD.	https://sg.indeed.com/rc/clk?jk=7d415b02cc4ed093&fccid=12655ef495bea0a8&vjs=3	2020-08-30 14:10:23.870665+08	2020-08-30 14:10:23.870686+08
1795	Project Coordinator	SYNERGRAPHIC DESIGN PTE LTD	https://sg.indeed.com/rc/clk?jk=87154dbb999e3c8b&fccid=bf25570ed3be2b44&vjs=3	2020-08-30 14:10:26.926507+08	2020-08-30 14:10:26.926537+08
1796	IT Support Engineer	Quantum Digital Solutions Pte Ltd	https://sg.indeed.com/company/Quantum-Digital-Solutions-Pte-Ltd/jobs/IT-Support-Engineer-545a43040775bd44?fccid=f7ec83baede98da4&vjs=3	2020-08-30 14:10:29.499477+08	2020-08-30 14:10:29.4995+08
1797	Engineer Mechanical General	GENERAL ELECTRIC INTERNATIONAL, INC.	https://sg.indeed.com/rc/clk?jk=030fb31145515d34&fccid=c5c99ec01e2125aa&vjs=3	2020-08-30 14:10:32.383139+08	2020-08-30 14:10:32.383161+08
1798	Software Engineer	COMBUILDER FMIT PTE. LTD.	https://sg.indeed.com/rc/clk?jk=667e17d8ae7a7e94&fccid=340fc38632e18d15&vjs=3	2020-08-30 14:10:34.577887+08	2020-08-30 14:10:34.577909+08
1799	Application Engineer	MODEC OFFSHORE PRODUCTION SYSTEMS (SINGAPORE) PTE. LTD.	https://sg.indeed.com/rc/clk?jk=27924e8e20af8f3a&fccid=3eb20b7e763020d0&vjs=3	2020-08-30 14:10:36.680334+08	2020-08-30 14:10:36.680357+08
1800	Data Center Engineer	Jobster Pte Ltd EA License No: 06C5060	https://sg.indeed.com/rc/clk?jk=76a96fcc58275a71&fccid=29ec3fa981e0dc7a&vjs=3	2020-08-30 14:10:39.537301+08	2020-08-30 14:10:39.537322+08
1801	DevOps Engineer	Ubisoft	https://sg.indeed.com/rc/clk?jk=06a8d8b39b22dbeb&fccid=237908de095b6446&vjs=3	2020-08-30 14:10:42.224113+08	2020-08-30 14:10:42.224134+08
1802	Biostatistician (Clinical Informatics)	NATIONAL CANCER CENTRE OF SINGAPORE PTE LTD	https://sg.indeed.com/rc/clk?jk=0ead124c11b81f96&fccid=9e4e1c9f8e4dcaf8&vjs=3	2020-08-30 14:10:44.705889+08	2020-08-30 14:10:44.705918+08
1803	Senior Software Engineer	BROADTEK PTE. LTD.	https://sg.indeed.com/rc/clk?jk=d97f58567baf0a9a&fccid=7d48989def84cbdb&vjs=3	2020-08-30 14:10:46.800882+08	2020-08-30 14:10:46.800903+08
1804	Test Technician	Beyondsoft International Singapore Pte Ltd	https://sg.indeed.com/rc/clk?jk=e39a546c1259bf47&fccid=1761facd3325c6be&vjs=3	2020-08-30 14:10:49.714233+08	2020-08-30 14:10:49.714256+08
1806	Associate Functional Test Engineer #SGUnitedTraineeships #SGUP	SGunited	https://sg.indeed.com/rc/clk?jk=275688862538d477&fccid=789644d61dab830f&vjs=3	2020-08-30 14:10:53.246522+08	2020-08-30 14:10:53.246544+08
1807	Python Developer / Engineer #SGUnitedTraineeships #SGUP	SGunited	https://sg.indeed.com/rc/clk?jk=2d720c76a9dd6c10&fccid=789644d61dab830f&vjs=3	2020-08-30 14:10:55.481555+08	2020-08-30 14:10:55.481578+08
1808	Automation Engineer - Commissioning	ZPMC SOUTHEAST ASIA PTE. LTD.	https://sg.indeed.com/rc/clk?jk=18ab480faefccb84&fccid=ddbbf979e62f7e69&vjs=3	2020-08-30 14:10:58.86821+08	2020-08-30 14:10:58.868231+08
1809	Senior Software Engineer (Node.js)	INDUSTRIAL ELECTRONICS PTE LTD	https://sg.indeed.com/rc/clk?jk=d6e0c12d6182b7a8&fccid=4f8d70df44c72446&vjs=3	2020-08-30 14:11:02.516195+08	2020-08-30 14:11:02.516217+08
1810	Technical Support Team Leader (Telecom Industry)	Career-Connex	https://sg.indeed.com/company/Skyf.IT/jobs/Technical-Support-Team-Leader-d7043554f00a4ba5?fccid=addf0520c23219f2&vjs=3	2020-08-30 14:11:04.365219+08	2020-08-30 14:11:04.365242+08
1811	PHP Developer	Capital Human Resource Management Pte Ltd	https://sg.indeed.com/rc/clk?jk=055fc2f8a70c1250&fccid=110c176cdac6e53f&vjs=3	2020-08-30 14:11:06.590759+08	2020-08-30 14:11:06.590786+08
1812	APAC NOC Service Engineer - Service Provider	Hamilton Barnes	https://sg.indeed.com/rc/clk?jk=32eb94b6b87ade42&fccid=93a43e6684eb7b5b&vjs=3	2020-08-30 14:11:08.726161+08	2020-08-30 14:11:08.726184+08
1813	Software Engineer - Mobile (IOS or Android)	MONSTAR LAB PTE. LTD.	https://sg.indeed.com/rc/clk?jk=040a8af23675f1a8&fccid=c557b193e608a6dd&vjs=3	2020-08-30 14:11:11.847419+08	2020-08-30 14:11:11.847445+08
1814	Senior Software Engineer	CCRMANAGER PTE. LTD.	https://sg.indeed.com/rc/clk?jk=b00ee3ac832c52cc&fccid=3e887a7642d589ef&vjs=3	2020-08-30 14:11:15.07855+08	2020-08-30 14:11:15.07857+08
1815	Operation & Maintenance Engineer #SGUnitedTraineeships #SGUP	SGunited	https://sg.indeed.com/rc/clk?jk=e40bce41a5c4bc31&fccid=789644d61dab830f&vjs=3	2020-08-30 14:11:17.581561+08	2020-08-30 14:11:17.581585+08
1816	Applications & Customer Escalation Team Manager	Olive Tree International Search	https://sg.indeed.com/rc/clk?jk=c99441bb64fefa01&fccid=bb8003f325c912f7&vjs=3	2020-08-30 14:11:19.910492+08	2020-08-30 14:11:19.910513+08
1817	Senior Power Systems Engineer	Power Systems Consultants	https://sg.indeed.com/rc/clk?jk=7977d8f71cee1d47&fccid=16b5af3d0d5a68f5&vjs=3	2020-08-30 14:11:23.097367+08	2020-08-30 14:11:23.097391+08
1818	Software Engineer	Experis	https://sg.indeed.com/rc/clk?jk=dae7d36d23138d53&fccid=ca2b244e2a15ca5c&vjs=3	2020-08-30 14:11:25.886487+08	2020-08-30 14:11:25.886508+08
1819	L400	N3	https://sg.indeed.com/rc/clk?jk=7ef52292b3fcb47b&fccid=f97dc516e82cc449&vjs=3	2020-08-30 14:11:28.719592+08	2020-08-30 14:11:28.719613+08
1820	Application Engineer	ATS APPLIED TECH SYSTEMS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=b2adf1fbc5d90a8b&fccid=f09db4a0445ad0cf&vjs=3	2020-08-30 14:11:31.914972+08	2020-08-30 14:11:31.914996+08
1821	Application Support Associate	ETEAM WORKFORCE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=a5e5150368009b3f&fccid=c95e7aab6aee0827&vjs=3	2020-08-30 14:11:35.253313+08	2020-08-30 14:11:35.253343+08
1822	Senior Test Engineer	UNCHARTED PARTNERS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=bba99442261a2e02&fccid=9dd2beecdedd229f&vjs=3	2020-08-30 14:11:37.486627+08	2020-08-30 14:11:37.486651+08
1823	Mechanical Design Engineer #SGUnitedJobs	ZIMPLISTIC PRIVATE LIMITED	https://sg.indeed.com/rc/clk?jk=af7183d65aee879d&fccid=636f3ecdb2f1079d&vjs=3	2020-08-30 14:11:40.661455+08	2020-08-30 14:11:40.661485+08
1824	#SGUNITEDJOBS SOFTWARE ENGINEER	INNOVATIVE CONSULTING PTE. LTD.	https://sg.indeed.com/rc/clk?jk=ec7c7fbe46396410&fccid=511289303354d940&vjs=3	2020-08-30 14:11:42.911274+08	2020-08-30 14:11:42.911295+08
1825	Principal Power System Engineer	Power Systems Consultants	https://sg.indeed.com/rc/clk?jk=2c9c21b3dff2d552&fccid=16b5af3d0d5a68f5&vjs=3	2020-08-30 14:11:44.987692+08	2020-08-30 14:11:44.98773+08
1826	Middleware Engineer	U3 INFOTECH PTE. LTD.	https://sg.indeed.com/rc/clk?jk=dcc7624ae4874b1a&fccid=e2cf7c632c3c38d2&vjs=3	2020-08-30 14:11:48.070469+08	2020-08-30 14:11:48.070488+08
1827	Senior Software Engineer	CCRMANAGER PTE. LTD	https://sg.indeed.com/rc/clk?jk=f145332809df20e5&fccid=e31e613638fafee5&vjs=3	2020-08-30 14:11:50.039801+08	2020-08-30 14:11:50.039846+08
1828	ELK Engineer (GC002)	EPS COMPUTER SYSTEMS PTE LTD	https://sg.indeed.com/rc/clk?jk=9fc8ff7ab5d27650&fccid=3a0666a23d72e8ec&vjs=3	2020-08-30 14:11:52.700012+08	2020-08-30 14:11:52.700037+08
1829	Test Technician	BEYONDSOFT INTERNATIONAL (SINGAPORE) PTE. LTD.	https://sg.indeed.com/rc/clk?jk=a92c5878a309c754&fccid=782e7a0f2391dd5c&vjs=3	2020-08-30 14:11:55.571824+08	2020-08-30 14:11:55.571844+08
1830	#SGUNITEDJOBS SOFTWARE ENGINEER #SGUNITEDTRAINEESHIPS #SGUNITEDMIDCAREER	MXHL PTE. LTD.	https://sg.indeed.com/rc/clk?jk=7c7988f1a4ae7ab4&fccid=b5708d8bd00222f1&vjs=3	2020-08-30 14:11:57.436734+08	2020-08-30 14:11:57.436755+08
1831	Software Engineer	COMBUILDER PTE LTD	https://sg.indeed.com/rc/clk?jk=d70a443fcd5d8ba4&fccid=a9aeaa8aa41b7af0&vjs=3	2020-08-30 14:12:00.239333+08	2020-08-30 14:12:00.239355+08
1832	Engineer, Back-End Lead	Sea Limited	https://sg.indeed.com/rc/clk?jk=1713590366ea720f&fccid=74701e2a60c2ea8b&vjs=3	2020-08-30 14:12:02.556548+08	2020-08-30 14:12:02.556568+08
1833	Regional Sales Manager - SEA	ABB	https://sg.indeed.com/rc/clk?jk=4f30800411e76a3c&fccid=38b4474838e7b7a1&vjs=3	2020-08-30 14:12:04.586475+08	2020-08-30 14:12:04.586505+08
1834	Technical Project Manager - Packet Core	ION IP Optical Networks	https://sg.indeed.com/rc/clk?jk=50cf6aeb6054b1c5&fccid=4f8f9ba36e98f550&vjs=3	2020-08-30 14:12:06.333365+08	2020-08-30 14:12:06.333385+08
1835	#SGUNITEDJOBS IT FIELD ENGINEER	VASSS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=bdd9235bd53d764a&fccid=3665fcf25706b468&vjs=3	2020-08-30 14:12:08.960922+08	2020-08-30 14:12:08.960953+08
1836	Senior / Software Engineer	GMP Group	https://sg.indeed.com/rc/clk?jk=198a6293b743bb4b&fccid=14c5dc1981ceac75&vjs=3	2020-08-30 14:12:11.791679+08	2020-08-30 14:12:11.7917+08
1837	Full Stack Engineer (Partnerships)	ASIA WEALTH PLATFORM PTE. LTD.	https://sg.indeed.com/rc/clk?jk=b157e87e323f14b8&fccid=aa14f5049d8bed43&vjs=3	2020-08-30 14:12:14.33723+08	2020-08-30 14:12:14.337251+08
1838	Engineer/Manager, Radio Operations	SINGTEL MOBILE SINGAPORE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=e8e0d9b555ad94c3&fccid=a94c6bb50f118c9f&vjs=3	2020-08-30 14:12:16.44048+08	2020-08-30 14:12:16.440504+08
1839	Field System Engineer (DCS)	BAYES Recruitment Pte Ltd	https://sg.indeed.com/rc/clk?jk=c238367ff00ea136&fccid=8782ca857c91ba33&vjs=3	2020-08-30 14:12:19.211002+08	2020-08-30 14:12:19.211025+08
1840	#SGUNITEDJOBS SOFTWARE ENGINEER	COMBUILDER FMIT PTE. LTD.	https://sg.indeed.com/rc/clk?jk=22899948234b7ca9&fccid=340fc38632e18d15&vjs=3	2020-08-30 14:12:21.531889+08	2020-08-30 14:12:21.531937+08
1841	Kubernetes Engineer	Antaès Consulting	https://sg.indeed.com/rc/clk?jk=2e083746461ec1c7&fccid=eb02ec06acb94c88&vjs=3	2020-08-30 14:12:23.585018+08	2020-08-30 14:12:23.585039+08
1842	Software & Control Engineer	Citadel Search	https://sg.indeed.com/company/Citadel-Search/jobs/Software-Control-Engineer-09c44a87b46a4f00?fccid=f6dfdb6f2075fb10&vjs=3	2020-08-30 14:12:25.78571+08	2020-08-30 14:12:25.78573+08
1843	Site Reliability Engineer	PICO (SINGAPORE) PTE. LTD.	https://sg.indeed.com/rc/clk?jk=ceefc5a2834fe5b7&fccid=8747ebd5a9ac4d38&vjs=3	2020-08-30 14:12:28.219188+08	2020-08-30 14:12:28.219212+08
1844	#SGUNITEDJOBS SOFTWARE ENGINEER	BANK OF SINGAPORE LIMITED	https://sg.indeed.com/rc/clk?jk=62f6fd2189ddd711&fccid=f53f057795eadec6&vjs=3	2020-08-30 14:12:29.94041+08	2020-08-30 14:12:29.94044+08
1845	Senior/Principal Visualization Engineer	Motional	https://sg.indeed.com/rc/clk?jk=a7db26f83e57da0b&fccid=86e1d3bf79028267&vjs=3	2020-08-30 14:12:32.964897+08	2020-08-30 14:12:32.964919+08
1846	Senior/ Software Engineer #SGUnitedJobs	AKRIBIS SYSTEMS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=c8765df3beecdc47&fccid=ba10c26e956df539&vjs=3	2020-08-30 14:12:35.766123+08	2020-08-30 14:12:35.766145+08
1847	L2 Application Production Support	SOFTENGER (SINGAPORE) PTE. LTD.	https://sg.indeed.com/rc/clk?jk=d24984dff040bb43&fccid=6e5b733c11c153b8&vjs=3	2020-08-30 14:12:38.100125+08	2020-08-30 14:12:38.100154+08
1848	Account Sales Manager	ACEPLP.COM PTE LTD	https://sg.indeed.com/rc/clk?jk=5de538d22da82bca&fccid=17833ec3996b018e&vjs=3	2020-08-30 14:12:40.840517+08	2020-08-30 14:12:40.840539+08
1849	Embedded systems Engineer/Firmware engineer	THIRD WAVE POWER PTE. LTD.	https://sg.indeed.com/rc/clk?jk=6368df9fca0a2786&fccid=9f64c9c47385771d&vjs=3	2020-08-30 14:12:43.97126+08	2020-08-30 14:12:43.971283+08
1850	#SGUNITEDJOBS APPLICATION ENGINEER	ATS APPLIED TECH SYSTEMS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=2dc6a3aa38f29a0b&fccid=f09db4a0445ad0cf&vjs=3	2020-08-30 14:12:46.771299+08	2020-08-30 14:12:46.771323+08
1851	IT Team Lead	BLOCKCHAIN SOLUTIONS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=a412407c034ecdc9&fccid=7543aaaab0e1ccba&vjs=3	2020-08-30 14:12:49.630333+08	2020-08-30 14:12:49.630362+08
1852	Lead, Technology- Digital Venture	Standard Chartered	https://sg.indeed.com/rc/clk?jk=861b07fe14b6b948&fccid=5249cd8e17163cb5&vjs=3	2020-08-30 14:12:51.464934+08	2020-08-30 14:12:51.464958+08
1853	#SGUnitedJobs Onsite Support - Desktop	ITCAN PTE. LIMITED	https://sg.indeed.com/rc/clk?jk=a63b5a6fa042ec41&fccid=dac85444d99b91d5&vjs=3	2020-08-30 14:12:54.335707+08	2020-08-30 14:12:54.335727+08
1854	System Administrator / System Engineer / Site Reliability Engineer	NETVIRTA SINGAPORE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=59c5ab8773aa301a&fccid=3653e9e2d49b5a35&vjs=3	2020-08-30 14:12:57.068438+08	2020-08-30 14:12:57.068458+08
1855	Network Engineer	DYNAMIC HUMAN CAPITAL PTE. LTD.	https://sg.indeed.com/rc/clk?jk=68f0ba3bf0f84577&fccid=97a89e03e958c062&vjs=3	2020-08-30 14:13:00.926261+08	2020-08-30 14:13:00.926281+08
1856	Senior Site Reliability Engineer	PICO (SINGAPORE) PTE. LTD.	https://sg.indeed.com/rc/clk?jk=4c18eb0e85fee5b6&fccid=8747ebd5a9ac4d38&vjs=3	2020-08-30 14:13:03.238097+08	2020-08-30 14:13:03.238117+08
1857	PROPOSAL ENGINEER #SGUnited	EICS TECHNOLOGY PTE LTD	https://sg.indeed.com/rc/clk?jk=20fabddb649317e3&fccid=4a53535bdfbad14d&vjs=3	2020-08-30 14:13:06.065728+08	2020-08-30 14:13:06.065758+08
1858	#SGUNITEDJOBS SENIOR SOFTWARE ENGINEER	NAHIMIC SINGAPORE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=aaa08b508acbaf80&fccid=67bbe96d83d97c71&vjs=3	2020-08-30 14:13:08.004959+08	2020-08-30 14:13:08.00498+08
1859	#SGUNITEDJOBS SOFTWARE ENGINEER, TESTING (MID LEVEL)	MOBILITYX PTE. LTD.	https://sg.indeed.com/rc/clk?jk=93655398ecc1cfe6&fccid=8f70e765b4390e53&vjs=3	2020-08-30 14:13:11.158947+08	2020-08-30 14:13:11.159+08
1860	#SGUNITEDJOBS SENIOR SOFTWARE ENGINEER	CCRMANAGER PTE. LTD.	https://sg.indeed.com/rc/clk?jk=ff67128be6b24ee2&fccid=3e887a7642d589ef&vjs=3	2020-08-30 14:13:14.603887+08	2020-08-30 14:13:14.603908+08
1861	DevOps Engineer	Steenbok Pte Ltd	https://sg.indeed.com/rc/clk?jk=bb751bc787a582f4&fccid=de5524734728713f&vjs=3	2020-08-30 14:13:17.606094+08	2020-08-30 14:13:17.606114+08
1862	Data Engineer, Azure or AWS experience (Asset Management)	CHARTERHOUSE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=b5486929acf83576&fccid=b83c25ae21a976ae&vjs=3	2020-08-30 14:13:19.649996+08	2020-08-30 14:13:19.650017+08
1863	#SGUNITEDJOBS ELK ENGINEER (GC002)	EPS COMPUTER SYSTEMS PTE LTD	https://sg.indeed.com/rc/clk?jk=0ee496a9be65645e&fccid=3a0666a23d72e8ec&vjs=3	2020-08-30 14:13:21.695253+08	2020-08-30 14:13:21.695274+08
1864	Senior DevOps Engineer	IAG INSURTECH INNOVATION HUB PTE. LTD.	https://sg.indeed.com/rc/clk?jk=7a7e7f7d7bf38027&fccid=f5cde15a2d782505&vjs=3	2020-08-30 14:13:24.450304+08	2020-08-30 14:13:24.450325+08
1865	#SGUNITEDJOBS IT FIELD ENGINEER	NEW4U SYSTEM PTE LTD	https://sg.indeed.com/rc/clk?jk=97896c3035085e6b&fccid=14c91a7e7245b68e&vjs=3	2020-08-30 14:13:26.200812+08	2020-08-30 14:13:26.200834+08
1866	#SGUNITEDJOBS SOFTWARE ENGINEER (FULLSTACK DEVELOPER)	EPS COMPUTER SYSTEMS PTE LTD	https://sg.indeed.com/rc/clk?jk=f2c525f6225c1ed8&fccid=3a0666a23d72e8ec&vjs=3	2020-08-30 14:13:28.554937+08	2020-08-30 14:13:28.554959+08
1867	Delivery Engineer	ENVOY SEARCH PARTNERS PTE. LIMITED	https://sg.indeed.com/rc/clk?jk=29a2ad9aaa154234&fccid=da6bfe2e253eefda&vjs=3	2020-08-30 14:13:31.316546+08	2020-08-30 14:13:31.316567+08
1868	Technical Manager	Jobline Resources Pte Ltd	https://sg.indeed.com/rc/clk?jk=5a61203924ab110a&fccid=08a987b19a93d3a1&vjs=3	2020-08-30 14:13:34.263475+08	2020-08-30 14:13:34.263496+08
1869	Support Engineer	PCCW SOLUTIONS SINGAPORE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=c7b2bcf94a9d4cce&fccid=d1c475222457a48a&vjs=3	2020-08-30 14:13:37.307824+08	2020-08-30 14:13:37.307847+08
1870	#SGUNITEDJOBS FULL STACK ENGINEER (PARTNERSHIPS)	ASIA WEALTH PLATFORM PTE. LTD.	https://sg.indeed.com/rc/clk?jk=a2b807e9438f6035&fccid=aa14f5049d8bed43&vjs=3	2020-08-30 14:13:39.880279+08	2020-08-30 14:13:39.880308+08
1871	Site Reliability Engineer	UBISOFT SINGAPORE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=ce5b021ffa98a915&fccid=237908de095b6446&vjs=3	2020-08-30 14:13:43.096802+08	2020-08-30 14:13:43.096856+08
1872	#SGUNITEDJOBS SOFTWARE DESIGN ENGINEER (MOBILE APPS)	PERCEPT SOLUTIONS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=ca2eec0288e3eb85&fccid=f6228f639e9a9be2&vjs=3	2020-08-30 14:13:44.484361+08	2020-08-30 14:13:44.484383+08
1873	Data Scientist (Machine Learning Engineer)	Narus Knowledge Pte. Ltd. narus.io	https://sg.indeed.com/rc/clk?jk=cccd3eafffe9610d&fccid=0d279d63d6b37f8d&vjs=3	2020-08-30 14:13:46.17598+08	2020-08-30 14:13:46.176+08
1874	Cyber Security Engineer	EVEREST GOLD PTE. LTD.	https://sg.indeed.com/rc/clk?jk=ee8862d725a80c84&fccid=a9d73c6f86a6c475&vjs=3	2020-08-30 14:13:48.930768+08	2020-08-30 14:13:48.93079+08
1875	CI / Build Engineer / DevOps Engineer	NETVIRTA SINGAPORE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=ffbd9da6960e7f37&fccid=3653e9e2d49b5a35&vjs=3	2020-08-30 14:13:51.076356+08	2020-08-30 14:13:51.076384+08
1876	#SGUNITEDJOBS SOFTWARE ENGINEER	COMBUILDER PTE LTD	https://sg.indeed.com/rc/clk?jk=05aebf23a4e11063&fccid=a9aeaa8aa41b7af0&vjs=3	2020-08-30 14:13:52.492383+08	2020-08-30 14:13:52.492404+08
1877	Fullstack Engineer	Salt Recruitment	https://sg.indeed.com/rc/clk?jk=def36467b44ba6e9&fccid=d35f6b081e467c24&vjs=3	2020-08-30 14:13:54.667168+08	2020-08-30 14:13:54.667188+08
1878	Senior/DevOps Engineer	GETS ASIA PTE. LTD.	https://sg.indeed.com/rc/clk?jk=0d80603ccf145e7a&fccid=f7837d8ab946f307&vjs=3	2020-08-30 14:13:57.627037+08	2020-08-30 14:13:57.627057+08
1879	#SGUNITEDJOBS IT TEAM LEAD	BLOCKCHAIN SOLUTIONS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=8d897b489bf69d18&fccid=7543aaaab0e1ccba&vjs=3	2020-08-30 14:13:59.519506+08	2020-08-30 14:13:59.519526+08
1880	Technical Delivery Lead - Telephony Infrastructure 003	U3 INFOTECH PTE. LTD.	https://sg.indeed.com/rc/clk?jk=7f73b6b87635ec63&fccid=e2cf7c632c3c38d2&vjs=3	2020-08-30 14:14:01.894763+08	2020-08-30 14:14:01.89479+08
1881	DevOps Engineer (Contract)	Steenbok Pte Ltd	https://sg.indeed.com/rc/clk?jk=7a82255722ac7aa7&fccid=de5524734728713f&vjs=3	2020-08-30 14:14:04.396831+08	2020-08-30 14:14:04.396862+08
1882	#SGUNITEDJOBS SITE RELIABILITY ENGINEER	PICO (SINGAPORE) PTE. LTD.	https://sg.indeed.com/rc/clk?jk=3c8fc521c33555f0&fccid=8747ebd5a9ac4d38&vjs=3	2020-08-30 14:14:06.743914+08	2020-08-30 14:14:06.743936+08
1883	Senior Backend Java Developer	Volt	https://sg.indeed.com/rc/clk?jk=be3f2ff6fe8aa7fe&fccid=86c0b4fa6c1398be&vjs=3	2020-08-30 14:14:09.821972+08	2020-08-30 14:14:09.821993+08
1884	Hybrid Bonding Engineer (Process Development/Application)	Volt	https://sg.indeed.com/rc/clk?jk=6826ada0b508b3e8&fccid=86c0b4fa6c1398be&vjs=3	2020-08-30 14:14:12.345391+08	2020-08-30 14:14:12.345415+08
1885	#SGUNITEDJOBS SENIOR SITE RELIABILITY ENGINEER	PICO (SINGAPORE) PTE. LTD.	https://sg.indeed.com/rc/clk?jk=61324954694fa86f&fccid=8747ebd5a9ac4d38&vjs=3	2020-08-30 14:14:15.876556+08	2020-08-30 14:14:15.876575+08
1886	Structural Engineer	Citadel Search	https://sg.indeed.com/company/Citadel-Search/jobs/Structural-Engineer-a09237f2f4268d56?fccid=f6dfdb6f2075fb10&vjs=3	2020-08-30 14:14:17.951458+08	2020-08-30 14:14:17.951477+08
1887	#SGUNITEDJOBS DESKTOP SUPPORT ENGINEER	COMPASSITES TECHNOLOGY SOLUTIONS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=c2210fff10f833f2&fccid=3eab401e3406fb78&vjs=3	2020-08-30 14:14:19.775337+08	2020-08-30 14:14:19.775356+08
1888	#SGUNITEDJOBS SOFTWARE ENGINEER - MOBILE (IOS OR ANDROID)	MONSTAR LAB PTE. LTD.	https://sg.indeed.com/rc/clk?jk=d5f3d44485312b6c&fccid=c557b193e608a6dd&vjs=3	2020-08-30 14:14:21.25982+08	2020-08-30 14:14:21.25984+08
1889	#SGUNITEDJOBS PROJECT & SYSTEM ENGINEER	OCEAN COMMUNICATIONS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=cd4ed0bcff7001b7&fccid=a25f22f39d8ad267&vjs=3	2020-08-30 14:14:23.346869+08	2020-08-30 14:14:23.346893+08
1890	Senior Application Consultant	ACTIVATE INTERACTIVE PTE LTD	https://sg.indeed.com/rc/clk?jk=567be5d02c152290&fccid=c9f176bd62cd0a84&vjs=3	2020-08-30 14:14:25.769283+08	2020-08-30 14:14:25.769301+08
1891	Geotechnical Engineer	Citadel Search	https://sg.indeed.com/company/Citadel-Search/jobs/Geotechnical-Engineer-aeb32b21462c4ffb?fccid=f6dfdb6f2075fb10&vjs=3	2020-08-30 14:14:29.225302+08	2020-08-30 14:14:29.225322+08
1892	#SGUNITEDJOBS CYBER SECURITY ENGINEER	EVEREST GOLD PTE. LTD.	https://sg.indeed.com/rc/clk?jk=eaa048a55bd05905&fccid=a9d73c6f86a6c475&vjs=3	2020-08-30 14:14:31.706693+08	2020-08-30 14:14:31.706713+08
1893	#SGUNITEDJOBS DELIVERY ENGINEER	ENVOY SEARCH PARTNERS PTE. LIMITED	https://sg.indeed.com/rc/clk?jk=f9373d544fba9f71&fccid=da6bfe2e253eefda&vjs=3	2020-08-30 14:14:33.19336+08	2020-08-30 14:14:33.193379+08
1894	#SGUNITEDJOBS MIDDLEWARE ENGINEER	U3 INFOTECH PTE. LTD.	https://sg.indeed.com/rc/clk?jk=2e78e097002ae7f5&fccid=e2cf7c632c3c38d2&vjs=3	2020-08-30 14:14:34.631166+08	2020-08-30 14:14:34.631197+08
1895	#SGUNITEDJOBS TEST TECHNICIAN	BEYONDSOFT INTERNATIONAL (SINGAPORE) PTE. LTD.	https://sg.indeed.com/rc/clk?jk=d44f30b3e8fdc34f&fccid=782e7a0f2391dd5c&vjs=3	2020-08-30 14:14:36.767433+08	2020-08-30 14:14:36.767456+08
1896	Salesforce Engineering Manager (Sales & Revenue), APAC	foodpanda Singapore	https://sg.indeed.com/rc/clk?jk=53681f6ab9c52fe5&fccid=8bf6fce5822c5030&vjs=3	2020-08-30 14:14:44.944539+08	2020-08-30 14:14:44.944564+08
1897	Senior Consultant - Telephony 003	U3 INFOTECH PTE. LTD.	https://sg.indeed.com/rc/clk?jk=75b726b95f205c46&fccid=e2cf7c632c3c38d2&vjs=3	2020-08-30 14:14:47.830701+08	2020-08-30 14:14:47.830723+08
1898	#SGUNITEDJOBS TECHNICAL DELIVERY LEAD - TELEPHONY INFRASTRUCTURE 003	U3 INFOTECH PTE. LTD.	https://sg.indeed.com/rc/clk?jk=1695f04ebd98f30b&fccid=e2cf7c632c3c38d2&vjs=3	2020-08-30 14:14:50.577303+08	2020-08-30 14:14:50.577325+08
1899	#SGUNITEDJOBS NETWORK ENGINEER	DYNAMIC HUMAN CAPITAL PTE. LTD.	https://sg.indeed.com/rc/clk?jk=161e8e9a691231e2&fccid=97a89e03e958c062&vjs=3	2020-08-30 14:14:52.690889+08	2020-08-30 14:14:52.690913+08
1900	#SGUNITEDJOBS CI / BUILD ENGINEER / DEVOPS ENGINEER	NETVIRTA SINGAPORE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=20f6d4269e73ea57&fccid=3653e9e2d49b5a35&vjs=3	2020-08-30 14:14:55.096284+08	2020-08-30 14:14:55.096305+08
1901	#SGUNITEDJOBS SENIOR TEST ENGINEER	UNCHARTED PARTNERS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=316bf38a622e3f2f&fccid=9dd2beecdedd229f&vjs=3	2020-08-30 14:14:57.622362+08	2020-08-30 14:14:57.622383+08
1902	#SGUNITEDJOBS APPLICATION DEVELOPER/SOFTWARE ENGINEER	ENCORA TECHNOLOGIES PTE. LTD.	https://sg.indeed.com/rc/clk?jk=361f4306e3be8871&fccid=12655ef495bea0a8&vjs=3	2020-08-30 14:15:00.755605+08	2020-08-30 14:15:00.755628+08
1903	#SGUNITEDJOBS SUPPORT ENGINEER	PCCW SOLUTIONS SINGAPORE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=8da705654a3b2bdb&fccid=d1c475222457a48a&vjs=3	2020-08-30 14:15:02.925162+08	2020-08-30 14:15:02.925182+08
1904	#SGUNITEDJOBS APPLICATION SUPPORT ASSOCIATE	ETEAM WORKFORCE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=42410a5f6fbebd61&fccid=c95e7aab6aee0827&vjs=3	2020-08-30 14:15:04.622479+08	2020-08-30 14:15:04.622522+08
1905	#SGUNITEDJOBS L2 APPLICATION PRODUCTION SUPPORT	SOFTENGER (SINGAPORE) PTE. LTD.	https://sg.indeed.com/rc/clk?jk=d4e295e0856e38d6&fccid=6e5b733c11c153b8&vjs=3	2020-08-30 14:15:07.304595+08	2020-08-30 14:15:07.304617+08
1906	#SGUNITEDJOBS SENIOR DEVOPS ENGINEER	IAG INSURTECH INNOVATION HUB PTE. LTD.	https://sg.indeed.com/rc/clk?jk=f974b16b8fdf3e0e&fccid=f5cde15a2d782505&vjs=3	2020-08-30 14:15:09.39168+08	2020-08-30 14:15:09.391702+08
1907	#SGUNITEDJOBS SITE RELIABILITY ENGINEER	UBISOFT SINGAPORE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=6fc5e11d497cd83b&fccid=237908de095b6446&vjs=3	2020-08-30 14:15:11.142749+08	2020-08-30 14:15:11.142778+08
1908	Sales Executive, Singapore (SaaS, construction tech start-up)	OpenSpace	https://sg.indeed.com/company/Movemeon/jobs/Sales-Executive-56fc6e346bdd13da?fccid=18292113f8e20149&vjs=3	2020-08-30 14:15:13.737284+08	2020-08-30 14:15:13.737306+08
1909	#SGUNITEDJOBS SYSTEM ADMINISTRATOR / SYSTEM ENGINEER / SITE RELIABILITY ENGINEER	NETVIRTA SINGAPORE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=575ea12981d32a54&fccid=3653e9e2d49b5a35&vjs=3	2020-08-30 14:15:16.049003+08	2020-08-30 14:15:16.049033+08
1910	#SGUNITEDJOBS SENIOR/DEVOPS ENGINEER	GETS ASIA PTE. LTD.	https://sg.indeed.com/rc/clk?jk=aed597753ba508d9&fccid=f7837d8ab946f307&vjs=3	2020-08-30 14:15:18.05078+08	2020-08-30 14:15:18.050802+08
1911	Technical Lead/Developer	ENCORA TECHNOLOGIES PTE. LTD.	https://sg.indeed.com/rc/clk?jk=4e7cb3cbaa94201d&fccid=12655ef495bea0a8&vjs=3	2020-08-30 14:15:21.291857+08	2020-08-30 14:15:21.291887+08
1912	Senior Application Consultant (Node JS)	ACTIVATE INTERACTIVE PTE LTD	https://sg.indeed.com/rc/clk?jk=61cc913a39a49a16&fccid=c9f176bd62cd0a84&vjs=3	2020-08-30 14:15:23.796686+08	2020-08-30 14:15:23.796707+08
1913	Design Engineer | Tool & Die | West	FSK Advisory Pte Ltd	https://sg.indeed.com/company/FSK-Advisory-Pte-Ltd/jobs/Design-Engineer-Tool-Die-West-7270cd054c11bb46?fccid=b77be7362e09b66c&vjs=3	2020-08-30 14:15:26.336516+08	2020-08-30 14:15:26.336546+08
1914	#SGUNITEDJOBS SENIOR CONSULTANT - TELEPHONY 003	U3 INFOTECH PTE. LTD.	https://sg.indeed.com/rc/clk?jk=b29a6dd29174e01b&fccid=e2cf7c632c3c38d2&vjs=3	2020-08-30 14:15:28.692124+08	2020-08-30 14:15:28.692143+08
1915	#SGUNITEDJOBS SENIOR APPLICATION CONSULTANT	ACTIVATE INTERACTIVE PTE LTD	https://sg.indeed.com/rc/clk?jk=34666000efe143f0&fccid=c9f176bd62cd0a84&vjs=3	2020-08-30 14:15:30.766372+08	2020-08-30 14:15:30.766396+08
1916	#SGUNITEDJOBS SENIOR APPLICATION CONSULTANT (NODE JS)	ACTIVATE INTERACTIVE PTE LTD	https://sg.indeed.com/rc/clk?jk=619e918ecb3bacf2&fccid=c9f176bd62cd0a84&vjs=3	2020-08-30 14:15:33.612011+08	2020-08-30 14:15:33.612036+08
1917	#SGUNITEDJOBS TECHNICAL LEAD/DEVELOPER	ENCORA TECHNOLOGIES PTE. LTD.	https://sg.indeed.com/rc/clk?jk=2560c295f9e7f2bd&fccid=12655ef495bea0a8&vjs=3	2020-08-30 14:15:36.756191+08	2020-08-30 14:15:36.756212+08
1918	Software Engineer (Full-stack)	Seedly	https://sg.indeed.com/company/Seedly/jobs/Software-Engineer-35170b02dbc37a44?fccid=a43afe3d80588812&vjs=3	2020-08-30 14:15:39.260058+08	2020-08-30 14:15:39.260081+08
1919	Software Engineer (Full Stack)	Circles.Life	https://sg.indeed.com/rc/clk?jk=59bd903534d8c725&fccid=20c116c00b6cc7c4&vjs=3	2020-08-30 14:15:40.985536+08	2020-08-30 14:15:40.985557+08
1920	Backend Software Engineer, Chat Microservices #SGUnitedTraineeships	Zendesk	https://sg.indeed.com/rc/clk?jk=2bf875aef9980524&fccid=41e8f9abd9840a7a&vjs=3	2020-08-30 14:15:43.651486+08	2020-08-30 14:15:43.651506+08
1921	Software Engineer (React Native)	Seedly	https://sg.indeed.com/company/Seedly/jobs/Software-Engineer-bc7b2240eff2eb65?fccid=a43afe3d80588812&vjs=3	2020-08-30 14:15:45.876206+08	2020-08-30 14:15:45.87623+08
1922	Software Engineer	Ideals Recruitment Pte Ltd	https://sg.indeed.com/rc/clk?jk=77f2e8598ae8182b&fccid=1820f44f2f271fa5&vjs=3	2020-08-30 14:15:47.806911+08	2020-08-30 14:15:47.806936+08
1923	Backend Software Engineer, Chat Platform #SGUnitedTraineeships	Zendesk	https://sg.indeed.com/rc/clk?jk=e7df6b9d79fbab1f&fccid=41e8f9abd9840a7a&vjs=3	2020-08-30 14:15:51.130281+08	2020-08-30 14:15:51.130301+08
1924	Engineer	MAKINO ASIA PTE LTD	https://sg.indeed.com/rc/clk?jk=7eecdf49f0637fc2&fccid=80b76e0715fd2c2b&vjs=3	2020-08-30 14:15:53.627812+08	2020-08-30 14:15:53.62784+08
1925	Senior Software Engineer	EFUNITY PTE. LTD.	https://sg.indeed.com/rc/clk?jk=5177b216ec5e4a1b&fccid=728444bed9646f9b&vjs=3	2020-08-30 14:15:56.453747+08	2020-08-30 14:15:56.453767+08
1926	Deskside Support Engineer	Manpower	https://sg.indeed.com/rc/clk?jk=d1fbc2e15d2b9360&fccid=1a17983a910f73d8&vjs=3	2020-08-30 14:16:02.098263+08	2020-08-30 14:16:02.098283+08
1927	Principal Software Engineer	VIRTU FINANCIAL SINGAPORE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=984395ec4f372465&fccid=a1e88834ef5bf8b4&vjs=3	2020-08-30 14:16:06.135223+08	2020-08-30 14:16:06.135243+08
1928	Automation Design Engineer (SL)	HKM HR MANAGEMENT PTE LTD	https://sg.indeed.com/company/HKM-HR-MANAGEMENT-PTE-LTD/jobs/Automation-Design-Engineer-7ecd2a8a036b224b?fccid=d6e98684cd9674a6&vjs=3	2020-08-30 14:16:08.224902+08	2020-08-30 14:16:08.224933+08
1929	Software Engineer JAVA/J2EE - Direct Hire Contract = 24 months	ZENITH INFOTECH (S) PTE LTD.	https://sg.indeed.com/rc/clk?jk=a4d404329cc985b4&fccid=3376355cceaae707&vjs=3	2020-08-30 14:16:10.746653+08	2020-08-30 14:16:10.746673+08
1930	Head of People Team (HR)	The Chope Group Pte Ltd	https://sg.indeed.com/rc/clk?jk=c592f48adf34c1ff&fccid=1000ff03bb8fdbe3&vjs=3	2020-08-30 14:16:14.42313+08	2020-08-30 14:16:14.423158+08
1931	Application Support Engineer	EF SOFTWARE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=a5dec49c76860b88&fccid=d5772c0778ace374&vjs=3	2020-08-30 14:16:17.175697+08	2020-08-30 14:16:17.175838+08
1932	DevOps Engineer, Chat Operations #SGUnitedTraineeships	Zendesk	https://sg.indeed.com/rc/clk?jk=c42a983ef5335e81&fccid=41e8f9abd9840a7a&vjs=3	2020-08-30 14:16:20.594008+08	2020-08-30 14:16:20.594032+08
1933	Sales Engineer	MYWARE PTE LTD	https://sg.indeed.com/rc/clk?jk=00f7c14016a04f2b&fccid=457521ce0c6a09a7&vjs=3	2020-08-30 14:16:22.356626+08	2020-08-30 14:16:22.356646+08
1934	Primary Support Engineer, Oracle Technology - DBA	Rimini Street, Inc.	https://sg.indeed.com/rc/clk?jk=a41c9263f8bbdf09&fccid=4d6cb47819161bc6&vjs=3	2020-08-30 14:16:24.676237+08	2020-08-30 14:16:24.676258+08
1935	Computer Vision Engineer	Invigilo Technologies invigilo.sg	https://sg.indeed.com/rc/clk?jk=0ffcb2cf3f174b46&fccid=6e831d40f695742b&vjs=3	2020-08-30 14:16:26.831131+08	2020-08-30 14:16:26.831151+08
1936	IT Project Manager	Hubble Pte Ltd	https://sg.indeed.com/company/Hubble/jobs/IT-Project-Manager-87e0c6a0f8a85de0?fccid=ebb75b32defdc483&vjs=3	2020-08-30 14:16:28.683412+08	2020-08-30 14:16:28.683432+08
1937	Software Support Engineer, ATM / VTM/ Cash Processing Industry (MNC)	JobPlus Pte Ltd	https://sg.indeed.com/company/JobPlus-Pte-Ltd/jobs/Software-Support-Engineer-da8ac2153b7bc04d?fccid=6b16890e671015cf&vjs=3	2020-08-30 14:16:31.03082+08	2020-08-30 14:16:31.030841+08
1938	Senior DeltaV Engineer	P'nnacle Pte Ltd	https://sg.indeed.com/rc/clk?jk=f755701658b418ed&fccid=70869998b76e82b5&vjs=3	2020-08-30 14:16:34.924526+08	2020-08-30 14:16:34.924557+08
1939	Associate Infrastructure Engineer #SGUnitedTraineeships	TRYBE LIMITED	https://sg.indeed.com/rc/clk?jk=eebcd066bb4dee9f&fccid=913252ee97c17f78&vjs=3	2020-08-30 14:16:37.03981+08	2020-08-30 14:16:37.039829+08
1940	Linux Engineer	HORIZON SOFTWARE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=e4033d881b75cab4&fccid=9a33e6a3b125d8b7&vjs=3	2020-08-30 14:16:40.448938+08	2020-08-30 14:16:40.448959+08
1941	Senior Software Engineer	Morgan McKinley	https://sg.indeed.com/rc/clk?jk=a2245a67c9e0bd70&fccid=893f9f3cd9fe4472&vjs=3	2020-08-30 14:16:42.701821+08	2020-08-30 14:16:42.701842+08
1942	#SGUNITEDJOBS APPLICATION SUPPORT ENGINEER	EF SOFTWARE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=3f414687494f5e44&fccid=d5772c0778ace374&vjs=3	2020-08-30 14:16:45.086195+08	2020-08-30 14:16:45.086218+08
1943	Automation Designer Engineer [Mechanical / Process Automation]	One Vogue Pte Ltd	https://sg.indeed.com/company/One-Vogue-Pte-Ltd/jobs/Automation-Designer-Engineer-a948fc100b775135?fccid=bbd03cc0c3f053f7&vjs=3	2020-08-30 14:16:48.790033+08	2020-08-30 14:16:48.790054+08
1944	#SGUNITEDJOBS ASSOCIATE INFRASTRUCTURE ENGINEER #SGUNITEDTRAINEESHIPS	TRYBE LIMITED	https://sg.indeed.com/rc/clk?jk=70464acb32c9c4cd&fccid=913252ee97c17f78&vjs=3	2020-08-30 14:16:50.703273+08	2020-08-30 14:16:50.703297+08
1945	Incident Management Engineer	Capita Singapore	https://sg.indeed.com/rc/clk?jk=dc394e30d3ae4280&fccid=dd89723c71b3ec43&vjs=3	2020-08-30 14:16:53.49824+08	2020-08-30 14:16:53.498265+08
1946	#SGUNITEDJOBS SOFTWARE ENGINEER JAVA/J2EE - DIRECT HIRE CONTRACT = 24 MONTHS	ZENITH INFOTECH (S) PTE LTD.	https://sg.indeed.com/rc/clk?jk=5777b72fed55de0a&fccid=3376355cceaae707&vjs=3	2020-08-30 14:16:55.559061+08	2020-08-30 14:16:55.559099+08
1947	Design Engineer	Staffhub Group Pte Ltd	https://sg.indeed.com/company/Staffhub-Group-Pte-Ltd/jobs/Design-Engineer-a82a2b049cb56215?fccid=a1727a943353744d&vjs=3	2020-08-30 14:16:57.808319+08	2020-08-30 14:16:57.808338+08
1948	#SGUNITEDJOBS LINUX ENGINEER	HORIZON SOFTWARE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=63cce9ae6d249b72&fccid=9a33e6a3b125d8b7&vjs=3	2020-08-30 14:17:00.938677+08	2020-08-30 14:17:00.938697+08
1949	Analyst Programmer C,C++,C# (Frontend / Web Development – MS Windows Platform) - Permanent Hire	ZENITH INFOTECH (S) PTE LTD.	https://sg.indeed.com/rc/clk?jk=c71391fd63783475&fccid=3376355cceaae707&vjs=3	2020-08-30 14:17:06.804965+08	2020-08-30 14:17:06.804987+08
1950	#SGUNITEDJOBS ANALYST PROGRAMMER C,C++,C# (FRONTEND / WEB DEVELOPMENT – MS WINDOWS PLATFORM) - PERMANENT HIRE	ZENITH INFOTECH (S) PTE LTD.	https://sg.indeed.com/rc/clk?jk=317cc3adecac0493&fccid=3376355cceaae707&vjs=3	2020-08-30 14:17:12.141292+08	2020-08-30 14:17:12.141332+08
1951	Software Engineering Intern, 2021	Google	https://sg.indeed.com/rc/clk?jk=f1b6d81fc30848a7&fccid=a5b4499d9e91a5c6&vjs=3	2020-08-30 14:17:14.574507+08	2020-08-30 14:17:14.574528+08
1952	Software Engineer	Narus	https://sg.indeed.com/company/Narus/jobs/Software-Engineer-c5571a3a37a7b80a?fccid=16612eabc5f7afa7&vjs=3	2020-08-30 14:17:17.404793+08	2020-08-30 14:17:17.404813+08
1953	Software Engineer	Zyllem	https://sg.indeed.com/rc/clk?jk=e4e6a519737fbda3&fccid=121e2741fdb5a455&vjs=3	2020-08-30 14:17:20.270109+08	2020-08-30 14:17:20.270138+08
1954	Software Solutions Engineer (ROS) (1-year)	ST Engineering Land Systems Ltd.	https://sg.indeed.com/rc/clk?jk=478cd806374e2281&fccid=16f2eddd48b4b6c3&vjs=3	2020-08-30 14:17:22.435721+08	2020-08-30 14:17:22.435741+08
1955	Software Development Engineer	Axis-Tec Pte Ltd	https://sg.indeed.com/company/Axis--Tec/jobs/Software-Development-Engineer-50cc5e89a0f3172f?fccid=9ed647f78e8e4a1d&vjs=3	2020-08-30 14:17:25.27579+08	2020-08-30 14:17:25.275815+08
1956	Lead Software Engineer, Backend (Digibank)	Grab Taxi	https://sg.indeed.com/rc/clk?jk=1bfbcf8ebf767095&fccid=b79fa3ee18655a5a&vjs=3	2020-08-30 14:17:28.339164+08	2020-08-30 14:17:28.339185+08
1957	Software Functional Test Engineer / Software Tester	Ideals Recruitment Pte Ltd	https://sg.indeed.com/rc/clk?jk=fc942449479826ae&fccid=1820f44f2f271fa5&vjs=3	2020-08-30 14:17:31.846513+08	2020-08-30 14:17:31.846534+08
1958	DevOps/Build & Release Engineer	Netvirta Singapore Pte Ltd	https://sg.indeed.com/pagead/clk?mo=r&ad=-6NYlbfkN0DM-PK6HASTtLqQ3MbdxCJX9OBVZwc5fijo3hfvtq2wIq66kUh0Vsdm9EOY9w_kzAlkiYS6YshsGazy5arE4Ud83d7lbx6j5v3cKFKdvI_DFXJJdsr6L6m1ctzU3d67x2FcMOZbLzd23E7WmUNv42oPveiNlIKhOa0iOx9lyTwIbrjlOYUYdp4wYz0iqjbIqIQPIW4GCSLwvQ_XnL2pCWflfSsF9JIFh00YtBYvcQTIG-B-mqJZMwqYBkRj0pcqG-n4XJXbxnTkKDmRvAJFCMaYS6SN3V6Fk2_oDE4kpIUmlNhZNhpYqf7-RS9Y43fQL8kQ6vA0xqnhj81J0Fn2DJKQNy5mUQxgPkjmnQkqZjGd9YHW8VjUpTdWMXj0rbqy3SpqhBmNalN6iZpsWM7RYi_Phr2G_YK2ntOt2JmUZXixxvQ7X56NDx9aH9pNmYIFX_2bcxYzQJpblkvTh5L7-1_rZ5hOjyqLCo8=&p=1&fvj=1&vjs=3	2020-08-30 14:17:34.194603+08	2020-08-30 14:17:34.194625+08
1959	Software Engineer Intern	AdNovum	https://sg.indeed.com/rc/clk?jk=07a4986873c51454&fccid=f41405d7054e617a&vjs=3	2020-08-30 14:17:36.319643+08	2020-08-30 14:17:36.319664+08
1960	Software Engineer	SPACE (Medtech) Pte. Ltd.	https://sg.indeed.com/company/SPACE-(Medtech)-Pte.-Ltd./jobs/Software-Engineer-4528bb41dca1993f?fccid=dc5e3e9186243f3f&vjs=3	2020-08-30 14:17:38.402926+08	2020-08-30 14:17:38.402948+08
1961	Software Testing Engineer	KG INFORMATION SYSTEMS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=fdf4a1605c49d918&fccid=2cf464752618484a&vjs=3	2020-08-30 14:17:40.728252+08	2020-08-30 14:17:40.728277+08
1962	Software Engineer - C++ - Hedge Fund	FAIRTIDE PTE. LIMITED	https://sg.indeed.com/rc/clk?jk=6e1486fd61945928&fccid=843b5f7d6084f200&vjs=3	2020-08-30 14:17:44.582531+08	2020-08-30 14:17:44.58256+08
1963	Software Engineer, Visual Database (T&S/TSD) #SGUnitedTraineeships #SGUP	SGunited	https://sg.indeed.com/rc/clk?jk=7ef1bceba5cde352&fccid=789644d61dab830f&vjs=3	2020-08-30 14:17:46.311156+08	2020-08-30 14:17:46.31118+08
1964	Software Engineer	Capital Human Resource Management Pte Ltd	https://sg.indeed.com/rc/clk?jk=1442f37901babaf1&fccid=110c176cdac6e53f&vjs=3	2020-08-30 14:17:48.268572+08	2020-08-30 14:17:48.268594+08
1965	Software Engineer/ Developer (Contract)	JTC Corporation	https://sg.indeed.com/rc/clk?jk=70058ca12c7dc24d&fccid=041b73fb0168398f&vjs=3	2020-08-30 14:17:51.18378+08	2020-08-30 14:17:51.1838+08
1966	Engineering CAD Designer (Solidworks Software)	BroadTech Engineering Pte Ltd	https://sg.indeed.com/company/BroadTech-Engineering-Pte-Ltd/jobs/Engineering-CAD-Designer-3f7f502b8f7d4e40?fccid=17dc9fed7dae4dd7&vjs=3	2020-08-30 14:17:54.262308+08	2020-08-30 14:17:54.262333+08
1967	RAN Engineer	CO E&A Customer Operations EMEA & APAC	https://sg.indeed.com/rc/clk?jk=b938dedf34032a1d&fccid=6db061631e88f7ea&vjs=3	2020-08-30 14:17:57.182057+08	2020-08-30 14:17:57.182078+08
1968	Business Intelligence Engineer	Amazon Asia-Pacific Holdings	https://sg.indeed.com/rc/clk?jk=1c6ebfe421edbb93&fccid=fe2d21eef233e94a&vjs=3	2020-08-30 14:18:00.500156+08	2020-08-30 14:18:00.500188+08
1969	Software Engineer	ASSURANCE TECHNOLOGY PTE LTD	https://sg.indeed.com/rc/clk?jk=a4e652db58481291&fccid=19bdcd0076baa209&vjs=3	2020-08-30 14:18:04.342452+08	2020-08-30 14:18:04.342482+08
1970	Software Engineer (T&S/ASD) #SGUnitedTraineeships #SGUP	SGunited	https://sg.indeed.com/rc/clk?jk=b59092f51c8599c3&fccid=789644d61dab830f&vjs=3	2020-08-30 14:18:06.115413+08	2020-08-30 14:18:06.115445+08
1971	Software QA Engineer	GLITTERING BOOST DIGITAL PTE. LTD.	https://sg.indeed.com/rc/clk?jk=17f258941feb3486&fccid=1a50e0129cbcacad&vjs=3	2020-08-30 14:18:08.731604+08	2020-08-30 14:18:08.731627+08
1972	Software Engineer	JTP HOLDINGS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=5d004bf8ac9d9b25&fccid=be34b7297079583a&vjs=3	2020-08-30 14:18:11.324381+08	2020-08-30 14:18:11.324404+08
1973	Software Engineer	HAIER SINGAPORE INVESTMENT HOLDING PTE. LTD.	https://sg.indeed.com/rc/clk?jk=7659343acc6045c0&fccid=d9b4f3d65f093b07&vjs=3	2020-08-30 14:18:14.767734+08	2020-08-30 14:18:14.767772+08
1974	Trainee Engineer	AIBEL PTE. LTD.	https://sg.indeed.com/rc/clk?jk=c7fae8c8d96842d9&fccid=ec4d8f196beed6d9&vjs=3	2020-08-30 14:18:18.264234+08	2020-08-30 14:18:18.264257+08
1975	Software Engineer	APBA TG HUMAN RESOURCE PTE. LTD.	https://sg.indeed.com/rc/clk?jk=53fd3eed3430008d&fccid=07831f3b359fd22c&vjs=3	2020-08-30 14:18:21.189143+08	2020-08-30 14:18:21.189163+08
1976	Systems Engineer	IDC Asia Pacific	https://sg.indeed.com/company/IDC-Asia-Pacific/jobs/System-Engineer-59bf14d3b85e78d2?fccid=5175799ec768d5e0&vjs=3	2020-08-30 14:18:24.166223+08	2020-08-30 14:18:24.16626+08
1977	Software Test Engineer	BEYONDSOFT INTERNATIONAL (SINGAPORE) PTE. LTD.	https://sg.indeed.com/rc/clk?jk=10ab8e923d5db2fc&fccid=782e7a0f2391dd5c&vjs=3	2020-08-30 14:18:27.903423+08	2020-08-30 14:18:27.903452+08
1978	Software Engineer (J2EE)	IT Consultancy & Services Pte Ltd	https://sg.indeed.com/company/IT-Consultancy-&-Services-Pte-Ltd/jobs/Software-Engineer-6aa243ea73373a8a?fccid=5f9134320c3c84df&vjs=3	2020-08-30 14:18:30.021178+08	2020-08-30 14:18:30.021197+08
1979	Site Engineer	K.U.S Metal Works Pte Ltd	https://sg.indeed.com/company/KUS-Group/jobs/Site-Engineer-feffd13a3acb2559?fccid=b19ff76409e12677&vjs=3	2020-08-30 14:18:32.69288+08	2020-08-30 14:18:32.69292+08
1980	Senior Software Engineer	AIDA TECHNOLOGIES PTE. LTD.	https://sg.indeed.com/rc/clk?jk=dcdbe554fcf323e9&fccid=02d6d6b4f7fecab0&vjs=3	2020-08-30 14:18:35.536242+08	2020-08-30 14:18:35.536264+08
1981	Software Engineer	Theme International Trading themeinternationaltrading.com	https://sg.indeed.com/rc/clk?jk=b1cb3650b176042a&fccid=fb2e610190c9815d&vjs=3	2020-08-30 14:18:39.12922+08	2020-08-30 14:18:39.129242+08
1982	Software Engineer	MoneyOwl	https://sg.indeed.com/rc/clk?jk=3e0a21cf8ea1088e&fccid=148b69afd82be69e&vjs=3	2020-08-30 14:18:42.822025+08	2020-08-30 14:18:42.822047+08
1983	(Staff / Sr.) Software Engineer	OmniVision Technologies Singapore Pte Ltd	https://sg.indeed.com/rc/clk?jk=830d63ebe71a36ba&fccid=71218051d50fd796&vjs=3	2020-08-30 14:18:45.1833+08	2020-08-30 14:18:45.18333+08
1984	Software Engineer (Algorithms)	HANALYTICS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=3269b3b1425cc9e6&fccid=f8b4b4cbb99b5498&vjs=3	2020-08-30 14:18:48.258938+08	2020-08-30 14:18:48.258974+08
1985	Senior Software Engineer	PayPal	https://sg.indeed.com/rc/clk?jk=50522e9f6347b7cb&fccid=978d9fd9799d55a8&vjs=3	2020-08-30 14:18:51.382645+08	2020-08-30 14:18:51.382667+08
1986	Jr. Software Engineer (Java)	SNAPHUNT PTE. LTD.	https://sg.indeed.com/rc/clk?jk=969e8d344dcbbd50&fccid=dd616958bd9ddc12&vjs=3	2020-08-30 14:18:54.529088+08	2020-08-30 14:18:54.52911+08
1987	NPO Engineer	CO E&A Customer Operations EMEA & APAC	https://sg.indeed.com/rc/clk?jk=ef4c61b31cf1077a&fccid=6db061631e88f7ea&vjs=3	2020-08-30 14:18:57.765124+08	2020-08-30 14:18:57.765145+08
1988	IT Software Engineer	UNIQUE EVENT & EXHIBITION PTE. LTD.	https://sg.indeed.com/rc/clk?jk=c930814809014ba2&fccid=9fccef07e37c4946&vjs=3	2020-08-30 14:19:01.353091+08	2020-08-30 14:19:01.353114+08
1989	Software Engineer (AS/400 RPG ILE)	SALMON ENTERPRISES PTE. LTD.	https://sg.indeed.com/rc/clk?jk=ed1b997bb6142b30&fccid=b3cb1852d2473eff&vjs=3	2020-08-30 14:19:04.661602+08	2020-08-30 14:19:04.661623+08
1990	QA Automation Engineer	TAIGER	https://sg.indeed.com/rc/clk?jk=fe49c28ab3bac3f9&fccid=e1551976d48108d2&vjs=3	2020-08-30 14:19:07.079778+08	2020-08-30 14:19:07.079808+08
1991	Systems Engineer (West)	Bollore Logistics Singapore Pte Ltd	https://sg.indeed.com/company/Bollore-Logistics-Singapore-Pte-Ltd/jobs/System-Engineer-2fd90769da607536?fccid=ecdded0b861c13ee&vjs=3	2020-08-30 14:19:09.423196+08	2020-08-30 14:19:09.423222+08
1992	Software Engineer (f/m/x) in Singapore	D4L data4life gGmbH	https://sg.indeed.com/rc/clk?jk=ba91a4092c849fc1&fccid=813f4f0078cb961c&vjs=3	2020-08-30 14:19:11.936829+08	2020-08-30 14:19:11.936849+08
1993	Software Engineer (Front End)	TALENT SPOT GROUP PRIVATE LTD.	https://sg.indeed.com/rc/clk?jk=9cce702a017c06de&fccid=cd4207ffb9812a43&vjs=3	2020-08-30 14:19:14.563047+08	2020-08-30 14:19:14.563068+08
1994	Cybersecurity Research Engineer	Defence Science and Technology Agency	https://sg.indeed.com/rc/clk?jk=c256565592d6d5eb&fccid=1d79a4290fb70d8e&vjs=3	2020-08-30 14:19:16.727676+08	2020-08-30 14:19:16.7277+08
1995	Software Engineer (.Net)	ITCAN Pte Ltd	https://sg.indeed.com/company/ITCAN-Pte-Ltd/jobs/Software-Engineer-867a5937282cb698?fccid=dac85444d99b91d5&vjs=3	2020-08-30 14:19:19.74587+08	2020-08-30 14:19:19.74589+08
1996	Desktop Engineer	ITCAN PTE LTD	https://sg.indeed.com/company/ITCAN-PTE-LTD/jobs/Desktop-Engineer-ab4d468684d500f3?fccid=dac85444d99b91d5&vjs=3	2020-08-30 14:19:21.959982+08	2020-08-30 14:19:21.960014+08
1997	IT Support Engineer	YIHU FISH FARM TRADING	https://sg.indeed.com/company/YIHU-FISH-FARM-TRADING/jobs/IT-Support-Engineer-09d8d969cac3febf?fccid=5f53f6539167d7a2&vjs=3	2020-08-30 14:19:23.651733+08	2020-08-30 14:19:23.651771+08
1998	Ref: 121892 - Development Operations Engineer	Singtel	https://sg.indeed.com/rc/clk?jk=1c67cc413f9efc65&fccid=a94c6bb50f118c9f&vjs=3	2020-08-30 14:19:25.941469+08	2020-08-30 14:19:25.941493+08
1999	Software Engineer Intern	WorkClass workclass.co	https://sg.indeed.com/rc/clk?jk=be665fb2d3172dc3&fccid=7f8a7fe917937923&vjs=3	2020-08-30 14:19:28.921929+08	2020-08-30 14:19:28.921949+08
2000	Software Engineer/Senior Software Engineer	Singapore-MIT Alliance for Research and Technology	https://sg.indeed.com/rc/clk?jk=3b6ac0ceca55c0d8&fccid=8e2807115de45a9c&vjs=3	2020-08-30 14:19:30.450341+08	2020-08-30 14:19:30.450379+08
2001	CCM Software Engineer	IT Consultancy & Services Pte Ltd	https://sg.indeed.com/company/IT-Consultancy-&-Services-Pte-Ltd/jobs/Ccm-Software-Engineer-25ef0dc0767118c0?fccid=5f9134320c3c84df&vjs=3	2020-08-30 14:19:32.226975+08	2020-08-30 14:19:32.226998+08
2002	System Engineer L2	Green Light Worldwide	https://sg.indeed.com/company/Green-Light-Worldwide/jobs/System-Engineer-96adaaa4f258e2ed?fccid=c3cbb98d1d8ab0bc&vjs=3	2020-08-30 14:19:35.215638+08	2020-08-30 14:19:35.215659+08
2003	Mixed Reality Technical Support Engineer (1-year)	ST Engineering Land Systems Ltd.	https://sg.indeed.com/rc/clk?jk=fd0c63d5b7643161&fccid=16f2eddd48b4b6c3&vjs=3	2020-08-30 14:19:36.996353+08	2020-08-30 14:19:36.996373+08
2004	Software Test Engineer	XML International	https://sg.indeed.com/company/XML-International/jobs/Software-Test-Engineer-9ae5271340f914b7?fccid=9eb01b8077b40dfa&vjs=3	2020-08-30 14:19:39.202086+08	2020-08-30 14:19:39.202109+08
2005	Engineer II, Field Service	Thermo Fisher Scientific	https://sg.indeed.com/rc/clk?jk=98a5b31fe83d87b9&fccid=126e3afd205caa95&vjs=3	2020-08-30 14:19:41.669018+08	2020-08-30 14:19:41.669038+08
2006	Quality Engineer	Jobster Pte Ltd EA License No: 06C5060	https://sg.indeed.com/rc/clk?jk=859c483808cfbda0&fccid=29ec3fa981e0dc7a&vjs=3	2020-08-30 14:19:43.87873+08	2020-08-30 14:19:43.878751+08
2007	software development engineer	NDR MEDICAL TECHNOLOGY PRIVATE LIMITED	https://sg.indeed.com/rc/clk?jk=19c1bc5a63abfdfb&fccid=9b2706d2035e0770&vjs=3	2020-08-30 14:19:47.115784+08	2020-08-30 14:19:47.115804+08
2008	Software Engineer (Java/ ASP.Net)	IT Consultancy & Services Pte Ltd	https://sg.indeed.com/company/IT-Consultancy-&-Services-Pte-Ltd/jobs/Software-Engineer-78324a1ada585d10?fccid=5f9134320c3c84df&vjs=3	2020-08-30 14:19:49.339431+08	2020-08-30 14:19:49.339454+08
2009	Snr / Backend Software Engineer	OSIM INTERNATIONAL PTE. LTD.	https://sg.indeed.com/rc/clk?jk=fc987deb29447e64&fccid=f7884949fc46f117&vjs=3	2020-08-30 14:19:52.153311+08	2020-08-30 14:19:52.153332+08
2010	Software Engineering Intern - Fall 2020	Narus	https://sg.indeed.com/company/Narus/jobs/Software-Engineering-Intern-77adaba004dbaf45?fccid=16612eabc5f7afa7&vjs=3	2020-08-30 14:19:54.676594+08	2020-08-30 14:19:54.676639+08
2011	IT Systems Software Engineer	Techbridge Market Holdings Pte Ltd	https://sg.indeed.com/rc/clk?jk=06bebbe2d4b224c0&fccid=e9008c88d458b156&vjs=3	2020-08-30 14:19:56.828027+08	2020-08-30 14:19:56.828048+08
2012	Software Engineer / Senior Software Engineer (.NET)	EPAM Systems	https://sg.indeed.com/rc/clk?jk=cd3f1a2e10bbf7c9&fccid=532afac41b2663f7&vjs=3	2020-08-30 14:19:58.880459+08	2020-08-30 14:19:58.88048+08
2013	Desktop Support Engineer L1	Total IT Global	https://sg.indeed.com/company/Total-IT-Global/jobs/Desktop-Support-Engineer-da497cf7c2dc419e?fccid=5db93cddda3928a8&vjs=3	2020-08-30 14:20:01.13825+08	2020-08-30 14:20:01.138273+08
2014	Sr. Software Engineer (Java Full stack)	Visa	https://sg.indeed.com/rc/clk?jk=5b1984bcc6041677&fccid=a3f737e511d9fc8c&vjs=3	2020-08-30 14:20:04.637015+08	2020-08-30 14:20:04.637109+08
2015	Software QA Lead	NTT Communications ICT Solutions	https://sg.indeed.com/rc/clk?jk=6959487915810f4b&fccid=8ca95f00af8705db&vjs=3	2020-08-30 14:20:07.012594+08	2020-08-30 14:20:07.012629+08
2016	Software Reliability Engineer	Government Technology Agency	https://sg.indeed.com/rc/clk?jk=8355ab6a222b71a1&fccid=3b9a5811a8b6410b&vjs=3	2020-08-30 14:20:09.465528+08	2020-08-30 14:20:09.465558+08
2017	Full Stack Software Engineer (Senior or Junior)	OSIM INTERNATIONAL PTE. LTD.	https://sg.indeed.com/rc/clk?jk=de312012c7e8b3d7&fccid=f7884949fc46f117&vjs=3	2020-08-30 14:20:13.163558+08	2020-08-30 14:20:13.163582+08
2018	Software Engineer - #TeSA	SINGAPORE TELECOMMUNICATIONS LIMITED	https://sg.indeed.com/rc/clk?jk=49e34df640cd03a1&fccid=fa835ed545bbf2b9&vjs=3	2020-08-30 14:20:15.701808+08	2020-08-30 14:20:15.701832+08
2019	Robotic R&D Software Engineer	ELID TECHNOLOGY INTERNATIONAL PTE LTD	https://sg.indeed.com/rc/clk?jk=7d03e345e6161b97&fccid=b04d7f15f5f66d93&vjs=3	2020-08-30 14:20:17.93632+08	2020-08-30 14:20:17.93634+08
2020	Embedded Software Developer	Cartrack	https://sg.indeed.com/rc/clk?jk=99bbe051ce16f5b8&fccid=214c752603950228&vjs=3	2020-08-30 14:20:20.061036+08	2020-08-30 14:20:20.061057+08
2021	Regional Data Analytics Engineer	Ninja Van	https://sg.indeed.com/rc/clk?jk=af28b7315f233fd6&fccid=723bf672358626e9&vjs=3	2020-08-30 14:20:22.095171+08	2020-08-30 14:20:22.095192+08
2022	Desktop Support Engineer	U3 Infotech Pte Ltd	https://sg.indeed.com/company/U3-InfoTech-Pte-Ltd/jobs/Desktop-Support-Engineer-66a0b80950df58f2?fccid=e2cf7c632c3c38d2&vjs=3	2020-08-30 14:20:24.427774+08	2020-08-30 14:20:24.427796+08
2023	Software Engineer	Concorde Security Pte Ltd	https://sg.indeed.com/rc/clk?jk=fde64ded2fcac0fb&fccid=bf491ec533c2d9cc&vjs=3	2020-08-30 14:20:27.053346+08	2020-08-30 14:20:27.053367+08
2024	Software Engineer (Full Stack)	M-DAQ PTE. LTD.	https://sg.indeed.com/rc/clk?jk=fb733b309e28d420&fccid=1dc02d2a120596f1&vjs=3	2020-08-30 14:20:29.760258+08	2020-08-30 14:20:29.760289+08
2025	Test Engineer (T&S/LBD) #SGUnitedTraineeships #SGUP	SGunited	https://sg.indeed.com/rc/clk?jk=6781c7631183dc9f&fccid=789644d61dab830f&vjs=3	2020-08-30 14:20:33.405005+08	2020-08-30 14:20:33.405025+08
2026	ASSISTANT ENGINEER / MACHINIST / OPERATOR -	ST Recruitment Centre	https://sg.indeed.com/rc/clk?jk=5cc87e6313550ae6&fccid=c27497311f7e5003&vjs=3	2020-08-30 14:20:35.299998+08	2020-08-30 14:20:35.300028+08
2027	Software Engineer & Analyst (Java/J2EE)	FLINTEX CONSULTING PTE. LTD.	https://sg.indeed.com/rc/clk?jk=795915a5538c474d&fccid=f89f84387a059028&vjs=3	2020-08-30 14:20:37.932469+08	2020-08-30 14:20:37.932494+08
2028	Senior Software Engineer	AEDGE SERVICES PTE. LTD.	https://sg.indeed.com/rc/clk?jk=1d4539ebcca628e1&fccid=683fa66fd3a9957d&vjs=3	2020-08-30 14:20:41.596413+08	2020-08-30 14:20:41.596436+08
2029	DATA ENGINEER	AEDGE SERVICES PTE. LTD.	https://sg.indeed.com/rc/clk?jk=85dccf347d2b6190&fccid=683fa66fd3a9957d&vjs=3	2020-08-30 14:20:43.402738+08	2020-08-30 14:20:43.402758+08
2030	Senior Software Engineer	Zyllem	https://sg.indeed.com/rc/clk?jk=c1fe41740836b9b8&fccid=121e2741fdb5a455&vjs=3	2020-08-30 14:20:45.637056+08	2020-08-30 14:20:45.637075+08
2031	Data Engineering Manager	Facebook	https://sg.indeed.com/rc/clk?jk=6ffbcf46b79d8ae9&fccid=1639254ea84748b5&vjs=3	2020-08-30 14:20:49.099808+08	2020-08-30 14:20:49.099844+08
2032	Desktop Support Engineer	Lantern Recruitment Solutions	https://sg.indeed.com/company/LANTERN-RECRUITMENT-SOLUTIONS/jobs/Desktop-Support-Engineer-da8d3b27d72c18ed?fccid=df6cf563eb9946d8&vjs=3	2020-08-30 14:20:51.970287+08	2020-08-30 14:20:51.970308+08
2033	Software Engineer	LIANBEE-JECO PTE LTD	https://sg.indeed.com/rc/clk?jk=08494eee8b5dc5e7&fccid=ea0993c7ca8cac6b&vjs=3	2020-08-30 14:20:54.696279+08	2020-08-30 14:20:54.696299+08
2034	SOFTWARE ENGINEER	ARROWCREST TECHNOLOGIES PTE LTD	https://sg.indeed.com/rc/clk?jk=80b5d7fd624feccd&fccid=0aebc3e75446c180&vjs=3	2020-08-30 14:20:57.020979+08	2020-08-30 14:20:57.021008+08
2035	APAC Solution Support Engineer, MES (Singapore)	AVEVA	https://sg.indeed.com/rc/clk?jk=441560b67946a0dd&fccid=9fbd8c2a46aec52a&vjs=3	2020-08-30 14:20:59.093976+08	2020-08-30 14:20:59.094015+08
2036	Test Engineer	EBC CONNECT PTE LTD	https://sg.indeed.com/rc/clk?jk=90a043dc2a96df4a&fccid=2d575ade8ad1fa65&vjs=3	2020-08-30 14:21:01.91321+08	2020-08-30 14:21:01.913233+08
2037	Backend Software Engineer (Senior or Junior)	OSIM INTERNATIONAL PTE. LTD.	https://sg.indeed.com/rc/clk?jk=47614443f2b40601&fccid=f7884949fc46f117&vjs=3	2020-08-30 14:21:05.087517+08	2020-08-30 14:21:05.087576+08
2038	Cybersecurity Engineer/ Senior Engineer	Defence Science and Technology Agency	https://sg.indeed.com/rc/clk?jk=f054dc1589f72b7a&fccid=1d79a4290fb70d8e&vjs=3	2020-08-30 14:21:07.339012+08	2020-08-30 14:21:07.339035+08
2039	ENGINEER	WHOLETECH SYSTEM HITECH (S) PTE. LTD.	https://sg.indeed.com/rc/clk?jk=364e834b90ba5fd5&fccid=472bc66077244164&vjs=3	2020-08-30 14:21:10.511415+08	2020-08-30 14:21:10.511436+08
2040	Software Engineer (C++) #SGUnitedTraineeships #SGUP	SGunited	https://sg.indeed.com/rc/clk?jk=837da7da8cdab19b&fccid=789644d61dab830f&vjs=3	2020-08-30 14:21:12.763555+08	2020-08-30 14:21:12.763576+08
2041	Ref: 121915 - Software Engineer - Fullstack Developer (1-Year Agency Contract)	Singtel	https://sg.indeed.com/rc/clk?jk=223d4cabb058dfda&fccid=a94c6bb50f118c9f&vjs=3	2020-08-30 14:21:15.266228+08	2020-08-30 14:21:15.26625+08
2042	Field Engineer	DENRON COMPUTERS & NETWORKS	https://sg.indeed.com/rc/clk?jk=1921338a0926c376&fccid=b0ccd6c85c432be1&vjs=3	2020-08-30 14:21:18.302812+08	2020-08-30 14:21:18.302841+08
2043	Engineer (Cybersecurity)	Civil Aviation Authority of Singapore (CAAS)	https://sg.indeed.com/rc/clk?jk=7b37b7b32a1b09a4&fccid=198ffdd3e68b4e5d&vjs=3	2020-08-30 14:21:20.412566+08	2020-08-30 14:21:20.412586+08
2044	Product Test Engineer	Silicon Labs	https://sg.indeed.com/rc/clk?jk=c8226a2adde24e96&fccid=46437b5e9e684d4a&vjs=3	2020-08-30 14:21:22.950529+08	2020-08-30 14:21:22.950556+08
2045	Senior Back End Software Engineer - Map Creator	Motional	https://sg.indeed.com/rc/clk?jk=3de054238abe31b3&fccid=86e1d3bf79028267&vjs=3	2020-08-30 14:21:25.891305+08	2020-08-30 14:21:25.89133+08
2046	Application Engineer	OptimalPlus	https://sg.indeed.com/rc/clk?jk=6c0f0609cb97f63b&fccid=70cb5fa10252f1a7&vjs=3	2020-08-30 14:21:29.694802+08	2020-08-30 14:21:29.694824+08
2047	Software Engineer - Android	DATAREALITIES PTE. LTD.	https://sg.indeed.com/rc/clk?jk=724b75985982fcea&fccid=0732ab3c7f8922be&vjs=3	2020-08-30 14:21:32.818345+08	2020-08-30 14:21:32.818365+08
2048	Senior Software Engineer - Simulation	Motional	https://sg.indeed.com/rc/clk?jk=4b59149fa2c082e7&fccid=86e1d3bf79028267&vjs=3	2020-08-30 14:21:35.651536+08	2020-08-30 14:21:35.651568+08
2049	IT Helpdesk Engineer / Support	EnviroDynamics Solutions Pte Ltd	https://sg.indeed.com/company/EnviroDynamics-Solutions-Pte-Ltd/jobs/IT-Helpdesk-Engineer-1c5b2acb44741dc4?fccid=37f324b9970c831a&vjs=3	2020-08-30 14:21:38.068653+08	2020-08-30 14:21:38.068682+08
2050	Software Engineer	STAFFONDEMAND PTE. LTD.	https://sg.indeed.com/rc/clk?jk=9a040433386321de&fccid=576bb8f56c826ae6&vjs=3	2020-08-30 14:21:40.219906+08	2020-08-30 14:21:40.219934+08
2051	Design Engineer	KINERGY CORPORATION LTD.	https://sg.indeed.com/rc/clk?jk=d60f5451a19c14f8&fccid=e7851c5bde8cad67&vjs=3	2020-08-30 14:21:42.060449+08	2020-08-30 14:21:42.060471+08
2052	PROGRAMMING AND SOFTWARE ENGINEER	BENG HOCK MECHANICAL ENGINEERING PTE. LTD.	https://sg.indeed.com/rc/clk?jk=744e159cf6ec1865&fccid=bbd4754af727acd8&vjs=3	2020-08-30 14:21:44.609274+08	2020-08-30 14:21:44.609302+08
2053	Staff Engineer, Platform	Viki	https://sg.indeed.com/rc/clk?jk=489c596cd250679a&fccid=d18e1f7aa178c6d2&vjs=3	2020-08-30 14:21:46.920239+08	2020-08-30 14:21:46.920259+08
2054	Test Engineer - Contract = 24 months	ZENITH INFOTECH (S) PTE LTD.	https://sg.indeed.com/rc/clk?jk=78ecef539d510e66&fccid=3376355cceaae707&vjs=3	2020-08-30 14:21:49.312473+08	2020-08-30 14:21:49.312493+08
2055	Mechanical Engineer (Power Sector)	WSP CONSULTANCY PTE. LTD.	https://sg.indeed.com/rc/clk?jk=e98defaa3b431d34&fccid=7568b118b67ee1ba&vjs=3	2020-08-30 14:21:52.348793+08	2020-08-30 14:21:52.348814+08
2056	MS Engineer (L3)	NTT Communications ICT Solutions	https://sg.indeed.com/rc/clk?jk=cd281b9befbe99ea&fccid=8ca95f00af8705db&vjs=3	2020-08-30 14:21:54.174252+08	2020-08-30 14:21:54.174278+08
2057	IT Support Engineer	EVVO LABS PTE. LTD.	https://sg.indeed.com/rc/clk?jk=a7c54476508d4b5e&fccid=995dfb86afc7433f&vjs=3	2020-08-30 14:21:56.45478+08	2020-08-30 14:21:56.454813+08
2058	Program Manager (Agile) - Group	Affinity Group	https://sg.indeed.com/rc/clk?jk=c8a5652badda8f85&fccid=194bab46c09829b5&vjs=3	2020-08-30 14:21:58.395386+08	2020-08-30 14:21:58.395416+08
2059	Technical Helpdesk Engineer	A-IT Software Services Pte Ltd	https://sg.indeed.com/company/A--IT-Software-Services-Pte-Ltd/jobs/Technical-Helpdesk-Engineer-a60f58fefe6d985c?fccid=ee18d03d230d10c9&vjs=3	2020-08-30 14:22:00.139707+08	2020-08-30 14:22:00.139732+08
2060	Java Software Engineer	SANDBOX CONSULTING PTE. LTD.	https://sg.indeed.com/rc/clk?jk=7727f9beb514d219&fccid=d423803f8a8af887&vjs=3	2020-08-30 14:22:02.258299+08	2020-08-30 14:22:02.258329+08
2061	Controls Engineer	Equinix	https://sg.indeed.com/rc/clk?jk=21b4f870e96b55d2&fccid=e15d9e27876d9dc3&vjs=3	2020-08-30 14:22:05.550164+08	2020-08-30 14:22:05.550186+08
\.


--
-- Data for Name: scraping_job_stack; Type: TABLE DATA; Schema: public; Owner: django_user
--

COPY public.scraping_job_stack (id, job_id, tech_id) FROM stdin;
2439	1089	27
2440	1089	24
2441	1089	51
2442	1089	40
2443	1091	24
2444	1091	29
2445	1091	58
2446	1091	21
2447	1091	27
2448	1091	60
2449	1091	50
2450	1091	22
2451	1092	27
2452	1093	58
2453	1093	27
2454	1093	21
2455	1093	16
2456	1093	50
2457	1094	19
2458	1094	24
2459	1094	53
2460	1094	39
2461	1094	51
2462	1094	27
2463	1094	22
2464	1095	73
2465	1095	2
2466	1095	23
2467	1096	20
2468	1096	53
2469	1096	21
2470	1096	27
2471	1096	16
2472	1096	50
2473	1096	22
2474	1097	73
2475	1097	6
2476	1097	35
2477	1097	59
2478	1097	21
2479	1097	16
2480	1097	50
2481	1099	67
2482	1100	57
2483	1100	73
2484	1100	27
2485	1100	21
2486	1100	60
2487	1101	37
2488	1101	24
2489	1101	67
2490	1101	51
2491	1101	21
2492	1101	27
2493	1101	16
2494	1102	37
2495	1102	24
2496	1102	53
2497	1102	29
2498	1102	35
2499	1102	10
2500	1102	22
2501	1102	54
2502	1103	73
2503	1103	2
2504	1103	23
2505	1104	27
2506	1104	24
2507	1104	2
2508	1104	51
2509	1105	20
2510	1105	19
2511	1105	53
2512	1105	9
2513	1105	22
2514	1105	10
2515	1105	56
2516	1105	74
2517	1105	54
2518	1106	37
2519	1107	19
2520	1107	70
2521	1108	67
2522	1109	21
2523	1109	67
2524	1111	67
2525	1112	16
2526	1112	19
2527	1113	19
2528	1113	70
2529	1114	67
2530	1115	24
2531	1115	2
2532	1115	70
2533	1115	23
2534	1115	51
2535	1115	16
2536	1115	22
2537	1116	67
2538	1118	57
2539	1118	73
2540	1118	27
2541	1118	21
2542	1118	60
2543	1119	16
2544	1119	21
2545	1120	27
2546	1120	24
2547	1120	2
2548	1120	51
2549	1122	52
2550	1122	67
2551	1123	52
2552	1123	72
2553	1123	73
2554	1123	67
2555	1123	21
2556	1123	16
2557	1124	37
2558	1126	67
2559	1127	21
2560	1127	67
2561	1128	52
2562	1129	37
2563	1129	44
2564	1129	19
2565	1129	73
2566	1129	53
2567	1129	61
2568	1129	27
2569	1129	10
2570	1129	54
2571	1130	37
2572	1130	20
2573	1130	67
2574	1130	21
2575	1130	16
2576	1135	67
2577	1136	16
2578	1136	19
2579	1136	27
2580	1137	30
2581	1137	2
2582	1137	58
2583	1137	67
2584	1137	6
2585	1137	21
2586	1137	27
2587	1137	31
2588	1138	37
2589	1138	64
2590	1138	76
2591	1138	20
2592	1138	50
2593	1138	61
2594	1138	35
2595	1138	21
2596	1138	16
2597	1138	10
2598	1139	37
2599	1139	57
2600	1139	19
2601	1139	24
2602	1139	2
2603	1139	53
2604	1139	73
2605	1139	61
2606	1139	23
2607	1139	21
2608	1139	27
2609	1139	16
2610	1139	50
2611	1140	37
2612	1140	52
2613	1140	67
2614	1140	35
2615	1141	67
2616	1142	16
2617	1142	27
2618	1142	21
2619	1143	2
2620	1143	21
2621	1145	20
2622	1145	19
2623	1145	53
2624	1145	35
2625	1145	9
2626	1145	21
2627	1145	22
2628	1147	57
2629	1147	20
2630	1147	19
2631	1147	24
2632	1147	53
2633	1147	35
2634	1147	51
2635	1147	27
2636	1147	54
2637	1148	27
2638	1148	73
2639	1149	37
2640	1149	66
2641	1149	52
2642	1149	24
2643	1149	2
2644	1149	16
2645	1149	50
2646	1150	73
2647	1150	23
2648	1151	27
2649	1151	37
2650	1151	21
2651	1151	47
2652	1153	24
2653	1153	2
2654	1153	73
2655	1153	21
2656	1153	16
2657	1154	20
2658	1154	19
2659	1154	70
2660	1154	9
2661	1154	21
2662	1154	69
2663	1154	22
2664	1155	37
2665	1155	21
2666	1155	67
2667	1155	6
2668	1156	37
2669	1156	19
2670	1156	61
2671	1156	63
2672	1156	21
2673	1156	31
2674	1156	27
2675	1156	68
2676	1156	30
2677	1156	65
2678	1156	53
2679	1156	67
2680	1156	35
2681	1156	16
2682	1156	24
2683	1156	2
2684	1156	23
2685	1156	57
2686	1156	6
2687	1156	39
2688	1157	24
2689	1157	2
2690	1157	23
2691	1158	24
2692	1158	2
2693	1158	23
2694	1158	73
2695	1159	16
2696	1159	37
2697	1159	20
2698	1159	35
2699	1161	27
2700	1161	21
2701	1162	2
2702	1162	23
2703	1163	23
2704	1164	16
2705	1164	27
2706	1164	21
2707	1164	67
2708	1165	37
2709	1165	57
2710	1165	20
2711	1165	35
2712	1165	28
2713	1165	27
2714	1165	62
2715	1165	70
2716	1168	68
2717	1168	69
2718	1169	19
2719	1169	53
2720	1169	51
2721	1169	27
2722	1169	10
2723	1169	54
2724	1170	16
2725	1170	23
2726	1171	16
2727	1171	23
2728	1171	21
2729	1172	16
2730	1172	73
2731	1172	2
2732	1172	23
2733	1173	67
2734	1174	16
2735	1174	24
2736	1174	2
2737	1175	30
2738	1175	37
2739	1175	57
2740	1175	20
2741	1175	19
2742	1175	24
2743	1175	2
2744	1175	65
2745	1175	61
2746	1175	67
2747	1175	6
2748	1175	35
2749	1175	63
2750	1175	23
2751	1175	21
2752	1175	27
2753	1175	16
2754	1176	23
2755	1177	58
2756	1177	67
2757	1177	6
2758	1177	47
2759	1177	27
2760	1177	50
2761	1181	16
2762	1181	73
2763	1181	67
2764	1182	73
2765	1182	2
2766	1182	23
2767	1183	57
2768	1183	73
2769	1183	67
2770	1183	27
2771	1183	60
2772	1183	62
2773	1185	57
2774	1185	20
2775	1185	29
2776	1185	35
2777	1185	39
2778	1185	27
2779	1185	50
2780	1186	60
2781	1186	27
2782	1186	21
2783	1188	57
2784	1188	53
2785	1188	63
2786	1188	27
2787	1188	16
2788	1188	54
2789	1189	21
2790	1191	16
2791	1191	37
2792	1191	67
2793	1191	48
2794	1193	37
2795	1193	57
2796	1193	20
2797	1193	33
2798	1193	24
2799	1193	53
2800	1193	67
2801	1193	51
2802	1193	27
2803	1193	16
2804	1194	16
2805	1194	27
2806	1194	21
2807	1195	21
2808	1196	16
2809	1196	19
2810	1196	2
2811	1196	21
2812	1197	16
2813	1197	2
2814	1198	2
2815	1198	23
2816	1199	16
2817	1199	2
2818	1200	37
2819	1200	52
2820	1200	67
2821	1200	35
2822	1201	27
2823	1201	24
2824	1201	51
2825	1202	64
2826	1202	20
2827	1202	19
2828	1202	67
2829	1202	16
2830	1202	50
2831	1204	67
2832	1205	37
2833	1205	67
2834	1205	71
2835	1205	16
2836	1205	50
2837	1206	73
2838	1206	2
2839	1206	23
2840	1207	37
2841	1207	73
2842	1207	52
2843	1207	67
2844	1209	64
2845	1209	20
2846	1209	58
2847	1209	23
2848	1209	39
2849	1209	21
2850	1209	27
2851	1209	68
2852	1209	41
2853	1209	74
2854	1212	16
2855	1212	23
2856	1213	37
2857	1213	62
2858	1213	19
2859	1213	24
2860	1213	53
2861	1213	27
2862	1213	16
2863	1213	50
2864	1214	20
2865	1214	19
2866	1214	53
2867	1214	35
2868	1214	9
2869	1214	21
2870	1214	22
2871	1215	16
2872	1215	73
2873	1215	23
2874	1216	20
2875	1216	19
2876	1216	35
2877	1216	9
2878	1216	23
2879	1216	39
2880	1216	21
2881	1216	68
2882	1216	70
2883	1217	16
2884	1217	37
2885	1217	20
2886	1217	35
2887	1218	37
2888	1218	2
2889	1220	37
2890	1220	19
2891	1220	67
2892	1220	16
2893	1220	50
2894	1222	16
2895	1222	27
2896	1222	21
2897	1222	67
2898	1223	23
2899	1224	21
2900	1226	67
2901	1227	24
2902	1227	2
2903	1227	23
2904	1228	16
2905	1228	37
2906	1228	73
2907	1230	21
2908	1231	16
2909	1231	73
2910	1231	2
2911	1231	23
2912	1234	20
2913	1234	19
2914	1234	70
2915	1234	9
2916	1234	21
2917	1234	69
2918	1234	22
2919	1235	73
2920	1236	24
2921	1236	2
2922	1236	73
2923	1236	21
2924	1236	16
2925	1237	16
2926	1237	37
2927	1237	21
2928	1237	6
2929	1238	16
2930	1238	24
2931	1238	67
2932	1240	73
2933	1240	23
2934	1242	57
2935	1242	73
2936	1242	67
2937	1242	27
2938	1242	60
2939	1242	62
2940	1243	2
2941	1243	23
2942	1245	64
2943	1245	20
2944	1245	58
2945	1245	23
2946	1245	39
2947	1245	21
2948	1245	27
2949	1245	68
2950	1245	41
2951	1245	74
2952	1248	16
2953	1248	2
2954	1249	27
2955	1250	67
2956	1251	16
2957	1252	60
2958	1252	21
2959	1253	37
2960	1253	22
2961	1253	21
2962	1253	35
2963	1254	37
2964	1255	2
2965	1255	23
2966	1256	16
2967	1257	27
2968	1257	21
2969	1258	60
2970	1258	21
2971	1261	27
2972	1261	21
2973	1263	16
2974	1263	2
2975	1264	16
2976	1264	23
2977	1264	21
2978	1265	27
2979	1265	67
2980	1266	67
2981	1268	27
2982	1268	73
2983	1270	67
2984	1272	67
2985	1273	37
2986	1273	57
2987	1273	20
2988	1273	33
2989	1273	24
2990	1273	53
2991	1273	67
2992	1273	51
2993	1273	27
2994	1273	16
2995	1276	37
2996	1276	67
2997	1276	71
2998	1276	16
2999	1276	50
3000	1277	16
3001	1277	73
3002	1277	23
3003	1278	27
3004	1278	50
3005	1278	58
3006	1279	73
3007	1280	67
3008	1281	39
3009	1281	21
3010	1283	73
3011	1283	2
3012	1283	23
3013	1284	39
3014	1284	21
3015	1285	27
3016	1285	67
3017	1286	37
3018	1288	16
3019	1288	2
3020	1288	21
3021	1288	6
3022	1290	2
3023	1290	23
3024	1290	39
3025	1290	21
3026	1290	16
3027	1291	57
3028	1291	20
3029	1291	19
3030	1291	53
3031	1291	29
3032	1291	67
3033	1291	21
3034	1291	27
3035	1291	50
3036	1291	22
3037	1291	54
3038	1292	20
3039	1292	19
3040	1292	53
3041	1292	67
3042	1292	9
3043	1292	22
3044	1292	41
3045	1292	74
3046	1293	27
3047	1293	24
3048	1293	2
3049	1293	57
3050	1295	20
3051	1295	73
3052	1295	53
3053	1295	61
3054	1295	35
3055	1295	10
3056	1295	22
3057	1296	16
3058	1296	19
3059	1296	21
3060	1296	67
3061	1297	16
3062	1297	19
3063	1297	21
3064	1297	67
3065	1298	24
3066	1298	2
3067	1298	23
3068	1298	51
3069	1298	27
3070	1298	16
3071	1299	19
3072	1299	21
3073	1300	57
3074	1300	20
3075	1300	73
3076	1300	29
3077	1300	40
3078	1300	63
3079	1300	21
3080	1300	27
3081	1300	50
3082	1300	22
3083	1301	52
3084	1302	37
3085	1302	24
3086	1302	39
3087	1302	19
3088	1304	19
3089	1304	21
3090	1305	24
3091	1305	2
3092	1306	27
3093	1307	64
3094	1307	57
3095	1307	33
3096	1307	55
3097	1307	61
3098	1307	28
3099	1307	27
3100	1307	16
3101	1307	41
3102	1307	74
3103	1308	57
3104	1308	20
3105	1308	19
3106	1308	73
3107	1308	53
3108	1308	29
3109	1308	58
3110	1308	70
3111	1308	9
3112	1308	27
3113	1308	22
3114	1309	24
3115	1309	2
3116	1310	24
3117	1310	53
3118	1310	2
3119	1310	21
3120	1310	27
3121	1310	22
3122	1311	60
3123	1311	27
3124	1311	67
3125	1312	16
3126	1312	21
3127	1313	73
3128	1313	2
3129	1313	29
3130	1313	6
3131	1313	16
3132	1313	50
3133	1314	37
3134	1314	57
3135	1314	55
3136	1314	61
3137	1314	67
3138	1314	27
3139	1314	50
3140	1315	16
3141	1315	73
3142	1315	2
3143	1315	21
3144	1316	27
3145	1316	57
3146	1316	67
3147	1316	6
3148	1317	27
3149	1317	58
3150	1317	67
3151	1317	6
3152	1319	52
3153	1320	30
3154	1320	37
3155	1320	57
3156	1320	20
3157	1320	73
3158	1320	61
3159	1320	40
3160	1320	21
3161	1320	27
3162	1320	16
3163	1320	50
3164	1321	73
3165	1322	73
3166	1322	53
3167	1322	2
3168	1322	23
3169	1322	21
3170	1322	27
3171	1322	60
3172	1323	20
3173	1323	19
3174	1323	73
3175	1323	53
3176	1323	2
3177	1323	72
3178	1323	35
3179	1323	21
3180	1323	27
3181	1323	16
3182	1323	54
3183	1324	16
3184	1324	37
3185	1324	73
3186	1325	16
3187	1325	33
3188	1325	19
3189	1326	24
3190	1326	2
3191	1326	73
3192	1326	21
3193	1326	16
3194	1328	9
3195	1328	35
3196	1329	27
3197	1331	16
3198	1331	24
3199	1331	2
3200	1334	67
3201	1335	73
3202	1335	2
3203	1335	23
3204	1336	39
3205	1336	21
3206	1340	16
3207	1340	37
3208	1340	73
3209	1340	61
3210	1341	2
3211	1341	23
3212	1343	73
3213	1343	21
3214	1343	67
3215	1344	20
3216	1344	19
3217	1344	35
3218	1344	21
3219	1344	41
3220	1345	60
3221	1345	27
3222	1346	37
3223	1346	23
3224	1346	52
3225	1346	67
3226	1347	73
3227	1347	53
3228	1347	2
3229	1347	23
3230	1347	21
3231	1347	27
3232	1347	60
3233	1348	57
3234	1348	58
3235	1348	61
3236	1348	67
3237	1348	27
3238	1348	16
3239	1349	33
3240	1349	67
3241	1349	6
3242	1349	63
3243	1349	27
3244	1349	16
3245	1349	68
3246	1349	62
3247	1350	67
3248	1353	23
3249	1354	73
3250	1354	2
3251	1354	50
3252	1355	60
3253	1355	27
3254	1358	37
3255	1358	73
3256	1358	29
3257	1358	58
3258	1358	67
3259	1358	40
3260	1358	63
3261	1358	21
3262	1358	27
3263	1358	16
3264	1358	50
3265	1359	37
3266	1359	19
3267	1359	24
3268	1359	53
3269	1359	23
3270	1359	27
3271	1359	10
3272	1359	54
3273	1362	37
3274	1363	24
3275	1363	53
3276	1363	29
3277	1363	35
3278	1363	10
3279	1363	22
3280	1363	54
3281	1364	73
3282	1365	16
3283	1365	73
3284	1365	27
3285	1366	69
3286	1366	39
3287	1367	37
3288	1368	37
3289	1368	20
3290	1368	19
3291	1368	53
3292	1368	35
3293	1368	9
3294	1368	39
3295	1368	51
3296	1368	22
3297	1370	57
3298	1370	2
3299	1370	67
3300	1370	6
3301	1370	63
3302	1370	21
3303	1370	27
3304	1370	16
3305	1371	37
3306	1371	57
3307	1371	52
3308	1371	72
3309	1371	67
3310	1371	6
3311	1371	27
3312	1371	16
3313	1372	27
3314	1372	19
3315	1372	70
3316	1375	24
3317	1375	2
3318	1375	73
3319	1375	21
3320	1375	16
3321	1376	39
3322	1376	21
3323	1377	37
3324	1377	52
3325	1377	19
3326	1377	61
3327	1377	63
3328	1377	21
3329	1377	27
3330	1377	68
3331	1377	30
3332	1377	65
3333	1377	53
3334	1377	67
3335	1377	35
3336	1377	16
3337	1377	24
3338	1377	2
3339	1377	23
3340	1377	57
3341	1377	6
3342	1377	39
3343	1379	53
3344	1379	21
3345	1379	67
3346	1381	73
3347	1381	50
3348	1381	67
3349	1381	6
3350	1382	20
3351	1382	19
3352	1382	53
3353	1382	67
3354	1382	9
3355	1382	22
3356	1382	41
3357	1382	74
3358	1383	37
3359	1384	24
3360	1384	2
3361	1384	73
3362	1384	21
3363	1384	16
3364	1386	67
3365	1387	16
3366	1387	24
3367	1388	16
3368	1388	62
3369	1388	27
3370	1389	73
3371	1391	69
3372	1391	39
3373	1391	21
3374	1394	73
3375	1395	19
3376	1395	21
3377	1395	70
3378	1397	37
3379	1397	19
3380	1397	73
3381	1397	29
3382	1397	21
3383	1397	16
3384	1397	50
3385	1398	16
3386	1398	73
3387	1398	23
3388	1400	16
3389	1400	73
3390	1400	2
3391	1401	57
3392	1401	73
3393	1401	2
3394	1401	23
3395	1401	21
3396	1401	27
3397	1401	16
3398	1402	2
3399	1403	73
3400	1403	2
3401	1403	23
3402	1405	2
3403	1405	23
3404	1407	73
3405	1407	21
3406	1407	67
3407	1410	37
3408	1410	57
3409	1410	55
3410	1410	61
3411	1410	67
3412	1410	27
3413	1410	50
3414	1412	37
3415	1412	57
3416	1412	62
3417	1412	19
3418	1412	55
3419	1412	73
3420	1412	61
3421	1412	35
3422	1412	63
3423	1412	71
3424	1412	27
3425	1412	50
3426	1414	73
3427	1414	21
3428	1414	67
3429	1416	6
3430	1418	52
3431	1418	73
3432	1418	2
3433	1418	67
3434	1418	6
3435	1418	23
3436	1418	21
3437	1418	16
3438	1419	24
3439	1419	53
3440	1419	29
3441	1419	35
3442	1419	10
3443	1419	22
3444	1419	54
3445	1421	69
3446	1421	39
3447	1421	21
3448	1422	60
3449	1422	27
3450	1422	67
3451	1423	52
3452	1424	16
3453	1424	37
3454	1424	20
3455	1424	35
3456	1425	2
3457	1425	23
3458	1425	21
3459	1426	16
3460	1426	24
3461	1428	37
3462	1428	67
3463	1428	63
3464	1428	21
3465	1428	50
3466	1429	60
3467	1429	27
3468	1430	37
3469	1432	27
3470	1432	39
3471	1432	67
3472	1434	37
3473	1437	60
3474	1437	27
3475	1439	73
3476	1439	21
3477	1439	67
3478	1444	16
3479	1444	21
3480	1446	16
3481	1446	21
3482	1448	37
3483	1448	73
3484	1448	52
3485	1448	40
3486	1449	69
3487	1449	39
3488	1451	27
3489	1451	39
3490	1451	67
3491	1452	73
3492	1452	50
3493	1452	67
3494	1452	6
3495	1453	73
3496	1455	53
3497	1455	52
3498	1457	39
3499	1458	23
3500	1459	73
3501	1460	27
3502	1461	37
3503	1461	57
3504	1461	62
3505	1461	19
3506	1461	55
3507	1461	73
3508	1461	61
3509	1461	35
3510	1461	63
3511	1461	71
3512	1461	27
3513	1461	50
3514	1463	53
3515	1463	52
3516	1464	16
3517	1464	19
3518	1465	73
3519	1465	67
3520	1465	52
3521	1465	21
3522	1466	16
3523	1466	6
3524	1466	67
3525	1466	40
3526	1467	60
3527	1467	53
3528	1467	27
3529	1467	21
3530	1468	27
3531	1470	27
3532	1470	24
3533	1471	27
3534	1471	67
3535	1472	37
3536	1473	19
3537	1473	29
3538	1473	21
3539	1474	27
3540	1476	27
3541	1477	27
3542	1477	2
3543	1478	20
3544	1478	19
3545	1478	53
3546	1478	63
3547	1478	51
3548	1478	21
3549	1478	27
3550	1478	22
3551	1478	54
3552	1480	30
3553	1480	20
3554	1480	19
3555	1480	24
3556	1480	53
3557	1480	2
3558	1480	73
3559	1480	61
3560	1480	67
3561	1480	23
3562	1480	21
3563	1480	16
3564	1481	20
3565	1481	19
3566	1481	53
3567	1481	63
3568	1481	51
3569	1481	21
3570	1481	27
3571	1481	22
3572	1481	54
3573	1482	27
3574	1482	37
3575	1482	53
3576	1482	21
3577	1483	52
3578	1483	35
3579	1484	37
3580	1484	52
3581	1485	22
3582	1485	21
3583	1485	35
3584	1486	37
3585	1486	19
3586	1486	6
3587	1486	63
3588	1486	21
3589	1486	27
3590	1486	16
3591	1489	21
3592	1490	27
3593	1493	57
3594	1493	73
3595	1493	58
3596	1493	61
3597	1493	6
3598	1493	27
3599	1493	60
3600	1494	19
3601	1494	73
3602	1494	67
3603	1494	23
3604	1494	39
3605	1494	16
3606	1496	37
3607	1496	73
3608	1496	29
3609	1496	40
3610	1496	63
3611	1496	16
3612	1496	50
3613	1497	20
3614	1497	70
3615	1499	67
3616	1500	22
3617	1500	21
3618	1500	20
3619	1501	67
3620	1502	37
3621	1502	73
3622	1502	40
3623	1502	60
3624	1502	16
3625	1502	50
3626	1504	27
3627	1504	50
3628	1504	21
3629	1504	67
3630	1505	20
3631	1505	19
3632	1505	2
3633	1505	67
3634	1505	70
3635	1505	9
3636	1505	23
3637	1505	16
3638	1505	22
3639	1506	27
3640	1506	19
3641	1506	73
3642	1506	21
3643	1507	73
3644	1507	2
3645	1507	23
3646	1507	39
3647	1508	19
3648	1508	2
3649	1508	21
3650	1508	6
3651	1510	61
3652	1510	51
3653	1511	60
3654	1511	27
3655	1514	61
3656	1514	51
3657	1515	6
3658	1518	37
3659	1518	67
3660	1518	27
3661	1518	21
3662	1518	16
3663	1519	20
3664	1519	19
3665	1519	53
3666	1519	63
3667	1519	51
3668	1519	21
3669	1519	27
3670	1519	22
3671	1519	54
3672	1520	19
3673	1520	29
3674	1520	21
3675	1523	73
3676	1523	21
3677	1523	67
3678	1524	24
3679	1525	27
3680	1525	37
3681	1525	53
3682	1525	21
3683	1526	19
3684	1526	53
3685	1526	27
3686	1526	51
3687	1526	60
3688	1527	57
3689	1527	52
3690	1527	73
3691	1527	40
3692	1527	59
3693	1527	27
3694	1527	62
3695	1528	19
3696	1528	53
3697	1528	35
3698	1528	6
3699	1528	21
3700	1528	27
3701	1528	62
3702	1529	60
3703	1529	73
3704	1530	27
3705	1531	37
3706	1531	57
3707	1531	19
3708	1531	73
3709	1531	53
3710	1531	40
3711	1531	21
3712	1531	27
3713	1531	10
3714	1531	22
3715	1532	57
3716	1532	19
3717	1532	73
3718	1532	67
3719	1532	6
3720	1532	39
3721	1532	21
3722	1532	27
3723	1532	50
3724	1534	67
3725	1535	57
3726	1535	62
3727	1535	73
3728	1535	67
3729	1535	27
3730	1535	50
3731	1537	37
3732	1537	52
3733	1539	24
3734	1539	2
3735	1539	21
3736	1540	20
3737	1540	48
3738	1540	19
3739	1540	53
3740	1540	16
3741	1540	50
3742	1540	22
3743	1540	54
3744	1541	27
3745	1541	53
3746	1541	21
3747	1542	9
3748	1542	35
3749	1543	37
3750	1543	57
3751	1543	73
3752	1543	27
3753	1543	60
3754	1543	16
3755	1543	50
3756	1545	27
3757	1545	24
3758	1546	57
3759	1546	52
3760	1546	73
3761	1546	2
3762	1546	61
3763	1546	40
3764	1546	6
3765	1546	63
3766	1546	23
3767	1546	59
3768	1546	27
3769	1546	16
3770	1546	50
3771	1548	73
3772	1548	2
3773	1548	23
3774	1548	39
3775	1550	20
3776	1550	19
3777	1550	2
3778	1550	67
3779	1550	70
3780	1550	9
3781	1550	23
3782	1550	16
3783	1550	22
3784	1551	57
3785	1551	24
3786	1551	2
3787	1551	73
3788	1551	23
3789	1551	21
3790	1551	27
3791	1551	16
3792	1552	73
3793	1553	21
3794	1554	27
3795	1554	61
3796	1555	67
3797	1557	67
3798	1558	30
3799	1558	57
3800	1558	66
3801	1558	52
3802	1558	24
3803	1558	2
3804	1558	73
3805	1558	29
3806	1558	67
3807	1558	6
3808	1558	23
3809	1558	21
3810	1558	27
3811	1558	16
3812	1559	24
3813	1560	57
3814	1560	73
3815	1560	51
3816	1560	21
3817	1560	27
3818	1560	60
3819	1560	16
3820	1560	50
3821	1561	19
3822	1563	37
3823	1563	67
3824	1563	27
3825	1563	21
3826	1563	16
3827	1564	37
3828	1564	57
3829	1564	20
3830	1564	24
3831	1564	61
3832	1564	39
3833	1564	27
3834	1565	27
3835	1565	50
3836	1565	21
3837	1565	67
3838	1566	19
3839	1566	73
3840	1566	67
3841	1566	23
3842	1566	39
3843	1566	16
3844	1567	24
3845	1568	20
3846	1568	19
3847	1568	58
3848	1568	67
3849	1568	9
3850	1568	28
3851	1568	27
3852	1568	22
3853	1569	64
3854	1569	20
3855	1569	19
3856	1569	53
3857	1569	67
3858	1570	57
3859	1570	73
3860	1570	58
3861	1570	61
3862	1570	6
3863	1570	27
3864	1570	60
3865	1571	19
3866	1571	53
3867	1571	35
3868	1571	6
3869	1571	21
3870	1571	27
3871	1571	62
3872	1572	37
3873	1572	67
3874	1572	51
3875	1572	21
3876	1572	27
3877	1572	62
3878	1574	20
3879	1574	48
3880	1574	19
3881	1574	53
3882	1574	16
3883	1574	50
3884	1574	22
3885	1574	54
3886	1575	24
3887	1575	2
3888	1575	67
3889	1575	27
3890	1575	16
3891	1576	6
3892	1577	19
3893	1577	53
3894	1577	27
3895	1577	51
3896	1577	60
3897	1580	2
3898	1580	6
3899	1580	23
3900	1580	21
3901	1580	16
3902	1582	73
3903	1582	21
3904	1582	67
3905	1584	57
3906	1584	52
3907	1584	73
3908	1584	40
3909	1584	59
3910	1584	27
3911	1584	62
3912	1585	22
3913	1585	21
3914	1585	35
3915	1586	27
3916	1587	27
3917	1587	61
3918	1588	60
3919	1588	27
3920	1588	21
3921	1589	57
3922	1589	19
3923	1589	73
3924	1589	67
3925	1589	6
3926	1589	39
3927	1589	21
3928	1589	27
3929	1589	50
3930	1590	27
3931	1591	67
3932	1592	37
3933	1592	57
3934	1592	73
3935	1592	27
3936	1592	60
3937	1592	16
3938	1592	50
3939	1593	73
3940	1594	6
3941	1596	19
3942	1597	21
3943	1598	27
3944	1598	67
3945	1599	22
3946	1599	21
3947	1599	20
3948	1602	39
3949	1602	20
3950	1603	23
3951	1604	57
3952	1604	62
3953	1604	73
3954	1604	67
3955	1604	27
3956	1604	50
3957	1605	57
3958	1605	52
3959	1605	73
3960	1605	2
3961	1605	61
3962	1605	40
3963	1605	6
3964	1605	63
3965	1605	23
3966	1605	59
3967	1605	27
3968	1605	16
3969	1605	50
3970	1606	51
3971	1606	21
3972	1607	64
3973	1607	20
3974	1607	19
3975	1607	73
3976	1607	67
3977	1607	70
3978	1607	41
3979	1608	21
3980	1609	64
3981	1609	20
3982	1609	19
3983	1609	53
3984	1609	67
3985	1610	39
3986	1610	20
3987	1611	24
3988	1611	2
3989	1611	65
3990	1611	23
3991	1611	21
3992	1612	53
3993	1613	27
3994	1613	24
3995	1613	2
3996	1613	51
3997	1614	52
3998	1614	24
3999	1614	53
4000	1614	2
4001	1614	21
4002	1614	27
4003	1615	16
4004	1615	24
4005	1615	2
4006	1615	73
4007	1616	37
4008	1616	2
4009	1616	51
4010	1617	37
4011	1617	19
4012	1617	6
4013	1617	21
4014	1617	16
4015	1618	16
4016	1618	37
4017	1618	20
4018	1618	35
4019	1619	19
4020	1619	24
4021	1619	6
4022	1619	23
4023	1619	21
4024	1619	16
4025	1620	37
4026	1620	67
4027	1620	35
4028	1621	19
4029	1621	2
4030	1621	21
4031	1621	6
4032	1624	16
4033	1624	24
4034	1625	73
4035	1625	67
4036	1626	44
4037	1626	19
4038	1626	73
4039	1626	53
4040	1626	61
4041	1626	10
4042	1626	54
4043	1628	37
4044	1628	19
4045	1628	73
4046	1628	40
4047	1628	21
4048	1628	27
4049	1628	50
4050	1629	20
4051	1629	19
4052	1629	53
4053	1629	28
4054	1629	70
4055	1631	37
4056	1631	62
4057	1631	19
4058	1631	73
4059	1631	40
4060	1631	21
4061	1631	27
4062	1631	50
4063	1632	37
4064	1632	20
4065	1632	33
4066	1632	73
4067	1632	67
4068	1632	16
4069	1633	16
4070	1635	73
4071	1635	2
4072	1635	23
4073	1635	39
4074	1636	37
4075	1636	73
4076	1636	67
4077	1636	39
4078	1636	16
4079	1638	19
4080	1638	24
4081	1638	6
4082	1638	23
4083	1638	21
4084	1638	16
4085	1639	67
4086	1640	21
4087	1641	23
4088	1642	37
4089	1642	73
4090	1642	40
4091	1642	60
4092	1642	16
4093	1642	50
4094	1645	67
4095	1646	2
4096	1646	6
4097	1646	23
4098	1646	21
4099	1646	16
4100	1647	37
4101	1647	20
4102	1647	62
4103	1647	19
4104	1647	53
4105	1647	35
4106	1647	27
4107	1647	16
4108	1647	50
4109	1648	16
4110	1648	73
4111	1649	16
4112	1649	2
4113	1649	23
4114	1649	52
4115	1651	37
4116	1651	57
4117	1651	20
4118	1651	62
4119	1651	19
4120	1651	50
4121	1651	40
4122	1651	59
4123	1651	27
4124	1651	16
4125	1651	10
4126	1651	22
4127	1652	52
4128	1653	30
4129	1653	37
4130	1653	52
4131	1653	19
4132	1653	21
4133	1653	16
4134	1655	24
4135	1655	2
4136	1655	23
4137	1655	21
4138	1655	16
4139	1656	16
4140	1656	37
4141	1656	20
4142	1656	35
4143	1658	67
4144	1659	19
4145	1659	70
4146	1660	67
4147	1663	27
4148	1663	67
4149	1664	27
4150	1665	37
4151	1665	52
4152	1665	67
4153	1666	27
4154	1666	24
4155	1666	2
4156	1666	57
4157	1667	20
4158	1667	19
4159	1667	24
4160	1667	58
4161	1667	67
4162	1667	6
4163	1667	9
4164	1667	21
4165	1667	27
4166	1667	16
4167	1667	22
4168	1668	37
4169	1668	52
4170	1668	67
4171	1669	37
4172	1669	20
4173	1669	67
4174	1669	35
4175	1669	9
4176	1669	16
4177	1670	73
4178	1670	53
4179	1670	2
4180	1670	23
4181	1670	21
4182	1670	27
4183	1670	60
4184	1672	23
4185	1673	73
4186	1673	2
4187	1673	23
4188	1674	37
4189	1674	73
4190	1674	67
4191	1675	16
4192	1675	37
4193	1675	20
4194	1675	35
4195	1676	73
4196	1676	53
4197	1676	2
4198	1676	23
4199	1676	21
4200	1676	27
4201	1676	60
4202	1678	27
4203	1678	24
4204	1678	51
4205	1678	40
4206	1679	67
4207	1680	73
4208	1681	27
4209	1681	53
4210	1681	21
4211	1683	57
4212	1683	73
4213	1683	35
4214	1683	27
4215	1683	60
4216	1683	16
4217	1684	16
4218	1684	2
4219	1684	23
4220	1685	16
4221	1685	73
4222	1685	23
4223	1686	23
4224	1688	21
4225	1690	16
4226	1690	37
4227	1690	20
4228	1690	35
4229	1692	24
4230	1692	2
4231	1692	51
4232	1693	67
4233	1693	40
4234	1693	71
4235	1693	47
4236	1693	50
4237	1694	60
4238	1694	37
4239	1694	27
4240	1696	30
4241	1696	37
4242	1696	66
4243	1696	52
4244	1696	24
4245	1696	2
4246	1696	73
4247	1696	61
4248	1696	67
4249	1696	35
4250	1696	39
4251	1696	21
4252	1696	31
4253	1696	60
4254	1696	16
4255	1696	50
4256	1697	19
4257	1698	39
4258	1698	20
4259	1699	60
4260	1699	37
4261	1699	27
4262	1703	57
4263	1703	73
4264	1703	61
4265	1703	35
4266	1703	27
4267	1703	16
4268	1704	58
4269	1704	67
4270	1704	35
4271	1704	6
4272	1704	27
4273	1704	31
4274	1704	70
4275	1705	37
4276	1705	19
4277	1705	67
4278	1705	6
4279	1705	16
4280	1705	50
4281	1706	20
4282	1706	19
4283	1706	35
4284	1706	21
4285	1706	41
4286	1707	16
4287	1707	37
4288	1707	20
4289	1707	35
4290	1708	20
4291	1708	19
4292	1708	73
4293	1708	67
4294	1708	35
4295	1708	50
4296	1709	67
4297	1710	57
4298	1710	73
4299	1710	35
4300	1710	27
4301	1710	60
4302	1710	16
4303	1715	67
4304	1716	2
4305	1716	23
4306	1718	73
4307	1718	2
4308	1718	67
4309	1718	23
4310	1718	21
4311	1718	27
4312	1718	16
4313	1720	27
4314	1720	67
4315	1721	23
4316	1724	37
4317	1724	67
4318	1725	60
4319	1725	37
4320	1725	16
4321	1725	67
4322	1728	37
4323	1728	19
4324	1728	67
4325	1728	6
4326	1728	16
4327	1728	50
4328	1729	16
4329	1729	27
4330	1729	67
4331	1731	30
4332	1731	73
4333	1731	40
4334	1731	59
4335	1731	16
4336	1732	61
4337	1733	67
4338	1734	2
4339	1734	23
4340	1734	21
4341	1736	73
4342	1736	2
4343	1736	23
4344	1737	27
4345	1738	73
4346	1738	67
4347	1738	40
4348	1738	21
4349	1738	27
4350	1739	67
4351	1740	73
4352	1741	24
4353	1744	73
4354	1745	37
4355	1746	37
4356	1747	24
4357	1750	60
4358	1750	37
4359	1750	16
4360	1750	67
4361	1751	67
4362	1752	37
4363	1752	73
4364	1752	6
4365	1753	24
4366	1753	2
4367	1755	2
4368	1755	23
4369	1757	39
4370	1757	20
4371	1758	37
4372	1758	73
4373	1758	67
4374	1760	30
4375	1760	73
4376	1760	40
4377	1760	59
4378	1760	16
4379	1761	60
4380	1761	24
4381	1761	27
4382	1762	2
4383	1762	23
4384	1764	58
4385	1764	29
4386	1764	40
4387	1764	63
4388	1764	21
4389	1764	27
4390	1765	24
4391	1765	2
4392	1767	19
4393	1767	24
4394	1767	53
4395	1767	21
4396	1768	16
4397	1768	73
4398	1768	2
4399	1768	23
4400	1769	68
4401	1770	16
4402	1770	23
4403	1771	37
4404	1771	20
4405	1771	35
4406	1773	2
4407	1773	67
4408	1773	23
4409	1773	39
4410	1773	21
4411	1773	16
4412	1774	19
4413	1774	53
4414	1774	2
4415	1774	67
4416	1774	21
4417	1774	16
4418	1775	20
4419	1775	19
4420	1775	21
4421	1775	27
4422	1775	60
4423	1775	50
4424	1775	22
4425	1779	73
4426	1780	27
4427	1780	24
4428	1780	51
4429	1780	54
4430	1781	19
4431	1781	73
4432	1781	2
4433	1781	35
4434	1781	23
4435	1781	39
4436	1781	16
4437	1784	58
4438	1784	67
4439	1784	35
4440	1784	6
4441	1784	27
4442	1784	31
4443	1784	70
4444	1785	27
4445	1785	57
4446	1785	53
4447	1785	61
4448	1786	16
4449	1786	2
4450	1786	23
4451	1787	52
4452	1788	20
4453	1788	24
4454	1788	53
4455	1788	51
4456	1788	27
4457	1788	60
4458	1788	70
4459	1789	67
4460	1790	16
4461	1790	2
4462	1790	23
4463	1791	24
4464	1791	2
4465	1792	36
4466	1792	19
4467	1792	53
4468	1792	35
4469	1792	22
4470	1793	37
4471	1793	33
4472	1793	19
4473	1793	2
4474	1793	23
4475	1793	21
4476	1793	16
4477	1798	57
4478	1798	19
4479	1798	58
4480	1798	9
4481	1798	63
4482	1798	59
4483	1798	21
4484	1798	27
4485	1798	62
4486	1801	37
4487	1801	66
4488	1801	52
4489	1801	24
4490	1801	2
4491	1801	16
4492	1801	50
4493	1804	66
4494	1805	19
4495	1805	73
4496	1805	2
4497	1805	23
4498	1805	16
4499	1807	16
4500	1808	73
4501	1808	2
4502	1808	23
4503	1809	64
4504	1809	57
4505	1809	20
4506	1809	29
4507	1809	35
4508	1809	28
4509	1809	27
4510	1811	27
4511	1811	57
4512	1811	61
4513	1813	61
4514	1813	35
4515	1813	23
4516	1813	39
4517	1813	21
4518	1813	68
4519	1814	37
4520	1814	20
4521	1814	19
4522	1814	67
4523	1814	21
4524	1815	73
4525	1815	67
4526	1816	67
4527	1817	16
4528	1818	27
4529	1818	24
4530	1818	2
4531	1818	23
4532	1819	37
4533	1819	52
4534	1819	24
4535	1819	73
4536	1819	61
4537	1819	35
4538	1820	57
4539	1820	19
4540	1820	24
4541	1820	53
4542	1820	2
4543	1820	73
4544	1820	63
4545	1820	51
4546	1820	27
4547	1820	60
4548	1820	16
4549	1820	54
4550	1821	73
4551	1821	6
4552	1821	35
4553	1821	59
4554	1821	21
4555	1821	16
4556	1821	50
4557	1824	27
4558	1824	24
4559	1824	51
4560	1824	54
4561	1825	16
4562	1826	60
4563	1826	73
4564	1826	40
4565	1827	37
4566	1827	20
4567	1827	19
4568	1827	67
4569	1827	21
4570	1828	37
4571	1828	73
4572	1828	27
4573	1828	21
4574	1828	16
4575	1829	66
4576	1830	37
4577	1830	33
4578	1830	19
4579	1830	2
4580	1830	23
4581	1830	21
4582	1830	16
4583	1831	57
4584	1831	19
4585	1831	58
4586	1831	9
4587	1831	63
4588	1831	59
4589	1831	21
4590	1831	27
4591	1831	62
4592	1834	52
4593	1834	67
4594	1836	24
4595	1836	2
4596	1837	37
4597	1837	20
4598	1837	19
4599	1837	29
4600	1837	67
4601	1837	35
4602	1837	6
4603	1837	16
4604	1838	35
4605	1839	20
4606	1840	57
4607	1840	19
4608	1840	58
4609	1840	9
4610	1840	63
4611	1840	59
4612	1840	21
4613	1840	27
4614	1840	62
4615	1841	37
4616	1841	73
4617	1841	29
4618	1841	40
4619	1841	63
4620	1841	16
4621	1841	50
4622	1842	24
4623	1842	2
4624	1843	37
4625	1843	73
4626	1843	58
4627	1843	67
4628	1843	63
4629	1843	28
4630	1843	27
4631	1843	16
4632	1843	50
4633	1844	20
4634	1844	19
4635	1844	21
4636	1844	27
4637	1844	60
4638	1844	50
4639	1844	22
4640	1845	16
4641	1845	2
4642	1846	24
4643	1846	2
4644	1847	50
4645	1847	20
4646	1847	67
4647	1849	73
4648	1849	2
4649	1849	67
4650	1849	23
4651	1849	16
4652	1850	57
4653	1850	19
4654	1850	24
4655	1850	53
4656	1850	2
4657	1850	73
4658	1850	63
4659	1850	51
4660	1850	27
4661	1850	60
4662	1850	16
4663	1850	54
4664	1851	37
4665	1851	20
4666	1851	24
4667	1851	61
4668	1851	51
4669	1851	27
4670	1852	67
4671	1853	67
4672	1854	37
4673	1854	72
4674	1854	73
4675	1854	67
4676	1854	16
4677	1856	37
4678	1856	73
4679	1856	58
4680	1856	67
4681	1856	63
4682	1856	28
4683	1856	27
4684	1856	16
4685	1856	50
4686	1858	24
4687	1858	2
4688	1859	37
4689	1859	20
4690	1859	35
4691	1860	37
4692	1860	20
4693	1860	19
4694	1860	67
4695	1860	21
4696	1861	37
4697	1861	73
4698	1861	21
4699	1861	27
4700	1861	16
4701	1861	50
4702	1862	27
4703	1862	67
4704	1863	37
4705	1863	73
4706	1863	27
4707	1863	21
4708	1863	16
4709	1864	37
4710	1864	72
4711	1864	6
4712	1864	21
4713	1864	16
4714	1864	50
4715	1865	67
4716	1866	20
4717	1866	24
4718	1866	53
4719	1866	51
4720	1866	27
4721	1866	60
4722	1866	70
4723	1867	73
4724	1867	27
4725	1867	39
4726	1867	21
4727	1867	60
4728	1869	67
4729	1870	37
4730	1870	20
4731	1870	19
4732	1870	29
4733	1870	67
4734	1870	35
4735	1870	6
4736	1870	16
4737	1871	30
4738	1871	57
4739	1871	24
4740	1871	2
4741	1871	73
4742	1871	29
4743	1871	67
4744	1871	6
4745	1871	23
4746	1871	21
4747	1871	27
4748	1871	16
4749	1872	39
4750	1872	20
4751	1873	16
4752	1873	37
4753	1874	37
4754	1875	30
4755	1875	37
4756	1875	2
4757	1875	23
4758	1875	21
4759	1875	71
4760	1875	16
4761	1875	68
4762	1875	50
4763	1876	57
4764	1876	19
4765	1876	58
4766	1876	9
4767	1876	63
4768	1876	59
4769	1876	21
4770	1876	27
4771	1876	62
4772	1877	16
4773	1877	50
4774	1877	70
4775	1877	35
4776	1878	16
4777	1878	37
4778	1878	24
4779	1878	73
4780	1879	37
4781	1879	20
4782	1879	24
4783	1879	61
4784	1879	51
4785	1879	27
4786	1881	37
4787	1881	73
4788	1881	21
4789	1881	16
4790	1881	50
4791	1882	37
4792	1882	73
4793	1882	58
4794	1882	67
4795	1882	63
4796	1882	28
4797	1882	27
4798	1882	16
4799	1882	50
4800	1883	37
4801	1883	58
4802	1883	21
4803	1883	27
4804	1883	50
4805	1885	37
4806	1885	73
4807	1885	58
4808	1885	67
4809	1885	63
4810	1885	28
4811	1885	27
4812	1885	16
4813	1885	50
4814	1887	73
4815	1888	61
4816	1888	35
4817	1888	23
4818	1888	39
4819	1888	21
4820	1888	68
4821	1889	67
4822	1890	27
4823	1890	73
4824	1890	39
4825	1890	20
4826	1892	37
4827	1893	73
4828	1893	27
4829	1893	39
4830	1893	21
4831	1893	60
4832	1894	60
4833	1894	73
4834	1894	40
4835	1895	66
4836	1896	19
4837	1896	67
4838	1897	73
4839	1900	30
4840	1900	37
4841	1900	2
4842	1900	23
4843	1900	21
4844	1900	71
4845	1900	16
4846	1900	68
4847	1900	50
4848	1903	67
4849	1904	73
4850	1904	6
4851	1904	35
4852	1904	59
4853	1904	21
4854	1904	16
4855	1904	50
4856	1905	50
4857	1905	20
4858	1905	67
4859	1906	37
4860	1906	72
4861	1906	6
4862	1906	21
4863	1906	16
4864	1906	50
4865	1907	30
4866	1907	57
4867	1907	24
4868	1907	2
4869	1907	73
4870	1907	29
4871	1907	67
4872	1907	6
4873	1907	23
4874	1907	21
4875	1907	27
4876	1907	16
4877	1909	37
4878	1909	72
4879	1909	73
4880	1909	67
4881	1909	16
4882	1910	16
4883	1910	37
4884	1910	24
4885	1910	73
4886	1911	16
4887	1911	27
4888	1911	30
4889	1912	20
4890	1912	73
4891	1912	35
4892	1912	27
4893	1912	22
4894	1914	73
4895	1915	27
4896	1915	73
4897	1915	39
4898	1915	20
4899	1916	20
4900	1916	73
4901	1916	35
4902	1916	27
4903	1916	22
4904	1917	16
4905	1917	27
4906	1917	30
4907	1918	30
4908	1918	64
4909	1918	20
4910	1918	19
4911	1918	53
4912	1918	31
4913	1919	20
4914	1919	58
4915	1919	67
4916	1919	35
4917	1919	27
4918	1920	37
4919	1920	52
4920	1920	67
4921	1920	40
4922	1920	63
4923	1920	21
4924	1920	16
4925	1921	39
4926	1921	20
4927	1922	37
4928	1922	24
4929	1922	53
4930	1922	51
4931	1922	27
4932	1922	54
4933	1923	52
4934	1923	73
4935	1923	67
4936	1923	6
4937	1923	35
4938	1923	59
4939	1923	21
4940	1923	16
4941	1923	50
4942	1924	2
4943	1924	23
4944	1925	57
4945	1925	19
4946	1925	24
4947	1925	2
4948	1925	73
4949	1925	23
4950	1925	21
4951	1925	27
4952	1926	67
4953	1927	19
4954	1927	20
4955	1927	70
4956	1927	35
4957	1929	19
4958	1929	29
4959	1929	21
4960	1930	39
4961	1932	30
4962	1932	52
4963	1932	72
4964	1932	73
4965	1932	6
4966	1932	63
4967	1932	16
4968	1934	60
4969	1934	27
4970	1935	16
4971	1935	37
4972	1937	24
4973	1937	2
4974	1937	51
4975	1940	57
4976	1940	49
4977	1940	73
4978	1940	67
4979	1940	27
4980	1941	19
4981	1941	20
4982	1941	21
4983	1941	35
4984	1946	19
4985	1946	29
4986	1946	21
4987	1948	57
4988	1948	49
4989	1948	73
4990	1948	67
4991	1948	27
4992	1949	24
4993	1949	2
4994	1949	70
4995	1949	23
4996	1949	51
4997	1949	27
4998	1949	22
4999	1950	24
5000	1950	2
5001	1950	70
5002	1950	23
5003	1950	51
5004	1950	27
5005	1950	22
5006	1951	19
5007	1951	73
5008	1951	2
5009	1951	67
5010	1951	23
5011	1951	39
5012	1951	21
5013	1951	16
5014	1952	16
5015	1952	37
5016	1952	21
5017	1952	19
5018	1953	19
5019	1953	24
5020	1953	29
5021	1953	70
5022	1954	19
5023	1954	73
5024	1954	2
5025	1954	61
5026	1954	23
5027	1954	39
5028	1954	16
5029	1955	20
5030	1955	24
5031	1955	61
5032	1955	27
5033	1955	16
5034	1956	37
5035	1956	19
5036	1956	61
5037	1956	63
5038	1956	21
5039	1956	31
5040	1956	27
5041	1956	68
5042	1956	30
5043	1956	65
5044	1956	53
5045	1956	67
5046	1956	35
5047	1956	16
5048	1956	24
5049	1956	2
5050	1956	23
5051	1956	57
5052	1956	6
5053	1956	39
5054	1958	30
5055	1958	37
5056	1958	2
5057	1958	23
5058	1958	39
5059	1958	21
5060	1958	71
5061	1958	16
5062	1958	68
5063	1958	50
5064	1960	2
5065	1960	23
5066	1960	39
5067	1960	21
5068	1960	16
5069	1962	16
5070	1962	73
5071	1962	2
5072	1964	44
5073	1964	19
5074	1964	73
5075	1964	53
5076	1964	61
5077	1964	27
5078	1964	10
5079	1964	54
5080	1965	57
5081	1965	19
5082	1965	53
5083	1965	58
5084	1965	27
5085	1965	54
5086	1967	52
5087	1968	16
5088	1968	37
5089	1968	27
5090	1968	67
5091	1969	27
5092	1970	24
5093	1970	2
5094	1970	23
5095	1971	67
5096	1972	73
5097	1972	2
5098	1972	67
5099	1973	24
5100	1973	2
5101	1973	58
5102	1973	23
5103	1973	51
5104	1973	21
5105	1973	27
5106	1973	16
5107	1975	24
5108	1976	27
5109	1976	24
5110	1976	67
5111	1978	57
5112	1978	20
5113	1978	19
5114	1978	53
5115	1978	21
5116	1978	27
5117	1980	37
5118	1980	57
5119	1980	62
5120	1980	72
5121	1980	73
5122	1980	21
5123	1980	27
5124	1980	16
5125	1980	50
5126	1981	16
5127	1981	24
5128	1981	2
5129	1982	37
5130	1982	57
5131	1982	19
5132	1982	73
5133	1982	53
5134	1982	40
5135	1982	21
5136	1982	27
5137	1982	10
5138	1982	22
5139	1983	57
5140	1983	19
5141	1983	53
5142	1983	61
5143	1983	27
5144	1983	16
5145	1983	10
5146	1983	54
5147	1984	16
5148	1984	73
5149	1984	2
5150	1984	23
5151	1985	52
5152	1985	20
5153	1985	2
5154	1985	28
5155	1985	39
5156	1985	21
5157	1986	27
5158	1986	21
5159	1986	67
5160	1987	52
5161	1990	21
5162	1990	67
5163	1990	47
5164	1991	27
5165	1992	2
5166	1992	21
5167	1992	70
5168	1993	19
5169	1993	53
5170	1993	20
5171	1993	67
5172	1994	24
5173	1994	2
5174	1994	73
5175	1994	39
5176	1994	21
5177	1994	16
5178	1995	27
5179	1995	24
5180	1995	57
5181	1998	30
5182	1998	37
5183	1998	72
5184	1998	73
5185	1998	2
5186	1998	61
5187	1998	23
5188	1998	21
5189	1998	16
5190	1998	50
5191	1999	36
5192	1999	20
5193	2000	16
5194	2000	2
5195	2001	27
5196	2001	51
5197	2003	67
5198	2006	27
5199	2007	16
5200	2007	24
5201	2007	2
5202	2007	73
5203	2008	19
5204	2008	53
5205	2008	21
5206	2008	27
5207	2008	10
5208	2008	54
5209	2009	16
5210	2009	24
5211	2010	16
5212	2010	37
5213	2010	20
5214	2010	35
5215	2011	20
5216	2011	19
5217	2011	73
5218	2011	53
5219	2011	2
5220	2011	72
5221	2011	35
5222	2011	27
5223	2011	16
5224	2011	54
5225	2012	27
5226	2012	24
5227	2012	51
5228	2013	66
5229	2014	19
5230	2014	67
5231	2014	40
5232	2014	70
5233	2014	59
5234	2014	21
5235	2014	50
5236	2014	22
5237	2014	54
5238	2015	67
5239	2016	16
5240	2016	37
5241	2016	73
5242	2016	35
5243	2017	37
5244	2017	57
5245	2017	19
5246	2017	24
5247	2017	53
5248	2017	67
5249	2017	23
5250	2017	27
5251	2017	16
5252	2017	50
5253	2018	37
5254	2018	20
5255	2018	67
5256	2019	16
5257	2019	73
5258	2019	2
5259	2019	23
5260	2020	73
5261	2020	2
5262	2020	23
5263	2020	67
5264	2021	16
5265	2021	27
5266	2022	67
5267	2023	57
5268	2023	19
5269	2023	24
5270	2023	2
5271	2023	73
5272	2023	61
5273	2023	72
5274	2023	23
5275	2023	21
5276	2023	27
5277	2023	16
5278	2024	37
5279	2024	20
5280	2024	19
5281	2024	67
5282	2024	70
5283	2024	21
5284	2024	27
5285	2024	22
5286	2027	19
5287	2027	29
5288	2027	21
5289	2028	60
5290	2028	27
5291	2028	67
5292	2029	37
5293	2029	57
5294	2029	19
5295	2029	2
5296	2029	29
5297	2029	58
5298	2029	40
5299	2029	21
5300	2029	27
5301	2029	60
5302	2029	16
5303	2029	62
5304	2030	19
5305	2030	24
5306	2030	29
5307	2030	70
5308	2031	16
5309	2031	27
5310	2032	67
5311	2034	67
5312	2035	27
5313	2035	24
5314	2035	53
5315	2036	21
5316	2037	37
5317	2037	57
5318	2037	24
5319	2037	67
5320	2037	23
5321	2037	27
5322	2037	16
5323	2037	50
5324	2040	2
5325	2041	52
5326	2041	20
5327	2041	24
5328	2041	53
5329	2041	51
5330	2041	27
5331	2041	60
5332	2041	70
5333	2042	67
5334	2044	2
5335	2044	23
5336	2045	24
5337	2045	67
5338	2045	21
5339	2045	16
5340	2045	50
5341	2046	19
5342	2046	24
5343	2046	2
5344	2046	23
5345	2046	51
5346	2046	21
5347	2046	16
5348	2047	39
5349	2047	21
5350	2048	16
5351	2048	24
5352	2048	2
5353	2048	73
5354	2049	73
5355	2050	37
5356	2050	57
5357	2050	19
5358	2050	73
5359	2050	53
5360	2050	40
5361	2050	21
5362	2050	27
5363	2050	10
5364	2050	22
5365	2052	23
5366	2053	30
5367	2053	37
5368	2053	57
5369	2053	52
5370	2053	19
5371	2053	73
5372	2053	6
5373	2053	35
5374	2053	63
5375	2053	27
5376	2053	16
5377	2053	62
5378	2056	16
5379	2056	61
5380	2056	67
5381	2058	67
5382	2060	29
5383	2060	21
5384	2060	47
5385	2060	27
5386	2060	62
\.


--
-- Data for Name: scraping_tech; Type: TABLE DATA; Schema: public; Owner: django_user
--

COPY public.scraping_tech (id, name, created_at) FROM stdin;
2	C++	2020-08-30 13:43:42.912824+08
6	Golang	2020-08-30 13:43:42.912824+08
9	Vue	2020-08-30 13:43:42.912824+08
10	Bootstrap	2020-08-30 13:43:42.912824+08
16	Python	2020-08-30 13:43:42.912824+08
19	JavaScript	2020-08-30 13:43:42.912824+08
20	React	2020-08-30 13:43:42.912824+08
21	Java	2020-08-30 13:43:42.912824+08
22	Angular	2020-08-30 13:43:42.912824+08
23	C	2020-08-30 13:43:42.912824+08
24	C#	2020-08-30 13:43:42.912824+08
27	SQL	2020-08-30 13:43:42.912824+08
28	GraphQL	2020-08-30 13:43:42.912824+08
29	Mongo	2020-08-30 13:43:42.912824+08
30	Ruby	2020-08-30 13:43:42.912824+08
31	Rails	2020-08-30 13:43:42.912824+08
33	Django	2020-08-30 13:43:42.912824+08
35	Node	2020-08-30 13:43:42.912824+08
36	Firebase	2020-08-30 13:43:42.912824+08
37	AWS	2020-08-30 13:43:42.912824+08
39	Android	2020-08-30 13:43:42.912824+08
40	Apache	2020-08-30 13:43:42.912824+08
41	Babel	2020-08-30 13:43:42.912824+08
42	Behance	2020-08-30 13:43:42.912824+08
43	Bower	2020-08-30 13:43:42.912824+08
44	CakePHP	2020-08-30 13:43:42.912824+08
45	Ceylon	2020-08-30 13:43:42.912824+08
46	CoffeeScript	2020-08-30 13:43:42.912824+08
47	Cucumber	2020-08-30 13:43:42.912824+08
48	D3.js	2020-08-30 13:43:42.912824+08
49	Debian	2020-08-30 13:43:42.912824+08
50	Docker	2020-08-30 13:43:42.912824+08
51	.NET	2020-08-30 13:43:42.912824+08
52	Express	2020-08-30 13:43:42.912824+08
54	jQuery	2020-08-30 13:43:42.912824+08
55	Laravel	2020-08-30 13:43:42.912824+08
56	Mocha	2020-08-30 13:43:42.912824+08
57	MySQL	2020-08-30 13:43:42.912824+08
58	NoSQL	2020-08-30 13:43:42.912824+08
59	Nginx	2020-08-30 13:43:42.912824+08
60	Oracle	2020-08-30 13:43:42.912824+08
61	PHP	2020-08-30 13:43:42.912824+08
62	PostgreSQL	2020-08-30 13:43:42.912824+08
63	Redis	2020-08-30 13:43:42.912824+08
64	Redux	2020-08-30 13:43:42.912824+08
65	Rust	2020-08-30 13:43:42.912824+08
66	Sass	2020-08-30 13:43:42.912824+08
67	Scala	2020-08-30 13:43:42.912824+08
68	Swift	2020-08-30 13:43:42.912824+08
69	Flutter	2020-08-30 13:43:42.912824+08
70	TypeScript	2020-08-30 13:43:42.912824+08
71	Vagrant	2020-08-30 13:43:42.912824+08
72	Ubuntu	2020-08-30 13:43:42.912824+08
73	Linux	2020-08-30 13:43:42.912824+08
74	Webpack	2020-08-30 13:43:42.912824+08
75	Wordpress	2020-08-30 13:43:42.912824+08
76	Yarn	2020-08-30 13:43:42.912824+08
53	HTML	2020-08-30 13:43:42.912824+08
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_user
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_user
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_user
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 32, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_user
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_user
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_user
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_user
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 222, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_user
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 8, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_user
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 25, true);


--
-- Name: scraping_job_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_user
--

SELECT pg_catalog.setval('public.scraping_job_id_seq', 2061, true);


--
-- Name: scraping_job_stack_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_user
--

SELECT pg_catalog.setval('public.scraping_job_stack_id_seq', 5386, true);


--
-- Name: scraping_tech_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_user
--

SELECT pg_catalog.setval('public.scraping_tech_id_seq', 76, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: scraping_job scraping_job_link_key; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.scraping_job
    ADD CONSTRAINT scraping_job_link_key UNIQUE (link);


--
-- Name: scraping_job scraping_job_pkey; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.scraping_job
    ADD CONSTRAINT scraping_job_pkey PRIMARY KEY (id);


--
-- Name: scraping_job_stack scraping_job_stack_job_id_tech_id_2640b052_uniq; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.scraping_job_stack
    ADD CONSTRAINT scraping_job_stack_job_id_tech_id_2640b052_uniq UNIQUE (job_id, tech_id);


--
-- Name: scraping_job_stack scraping_job_stack_pkey; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.scraping_job_stack
    ADD CONSTRAINT scraping_job_stack_pkey PRIMARY KEY (id);


--
-- Name: scraping_tech scraping_tech_pkey; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.scraping_tech
    ADD CONSTRAINT scraping_tech_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: scraping_job_link_0043e8b3_like; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX scraping_job_link_0043e8b3_like ON public.scraping_job USING btree (link varchar_pattern_ops);


--
-- Name: scraping_job_stack_job_id_f12fc42c; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX scraping_job_stack_job_id_f12fc42c ON public.scraping_job_stack USING btree (job_id);


--
-- Name: scraping_job_stack_tech_id_85cc7b30; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX scraping_job_stack_tech_id_85cc7b30 ON public.scraping_job_stack USING btree (tech_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: scraping_job_stack scraping_job_stack_job_id_f12fc42c_fk_scraping_job_id; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.scraping_job_stack
    ADD CONSTRAINT scraping_job_stack_job_id_f12fc42c_fk_scraping_job_id FOREIGN KEY (job_id) REFERENCES public.scraping_job(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: scraping_job_stack scraping_job_stack_tech_id_85cc7b30_fk_scraping_tech_id; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.scraping_job_stack
    ADD CONSTRAINT scraping_job_stack_tech_id_85cc7b30_fk_scraping_tech_id FOREIGN KEY (tech_id) REFERENCES public.scraping_tech(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--


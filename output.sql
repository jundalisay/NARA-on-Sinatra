--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: jnevuqysrsjoyx; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO jnevuqysrsjoyx;

--
-- Name: services; Type: TABLE; Schema: public; Owner: jnevuqysrsjoyx; Tablespace: 
--

CREATE TABLE services (
    id integer NOT NULL,
    user_id integer,
    name character varying,
    classification character varying,
    description text,
    quantity integer,
    barcode character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.services OWNER TO jnevuqysrsjoyx;

--
-- Name: services_id_seq; Type: SEQUENCE; Schema: public; Owner: jnevuqysrsjoyx
--

CREATE SEQUENCE services_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.services_id_seq OWNER TO jnevuqysrsjoyx;

--
-- Name: services_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jnevuqysrsjoyx
--

ALTER SEQUENCE services_id_seq OWNED BY services.id;


--
-- Name: skus; Type: TABLE; Schema: public; Owner: jnevuqysrsjoyx; Tablespace: 
--

CREATE TABLE skus (
    id integer NOT NULL,
    name character varying,
    classification character varying,
    description text,
    need character varying,
    quantity integer,
    barcode character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    user_id integer
);


ALTER TABLE public.skus OWNER TO jnevuqysrsjoyx;

--
-- Name: skus_id_seq; Type: SEQUENCE; Schema: public; Owner: jnevuqysrsjoyx
--

CREATE SEQUENCE skus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.skus_id_seq OWNER TO jnevuqysrsjoyx;

--
-- Name: skus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jnevuqysrsjoyx
--

ALTER SEQUENCE skus_id_seq OWNED BY skus.id;


--
-- Name: trades; Type: TABLE; Schema: public; Owner: jnevuqysrsjoyx; Tablespace: 
--

CREATE TABLE trades (
    id integer NOT NULL,
    recipient character varying,
    "in" character varying,
    "out" character varying,
    amountin integer,
    amountout integer,
    trademethod character varying,
    tradecode character varying,
    tradestatus character varying,
    description text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    user_id integer
);


ALTER TABLE public.trades OWNER TO jnevuqysrsjoyx;

--
-- Name: trades_id_seq; Type: SEQUENCE; Schema: public; Owner: jnevuqysrsjoyx
--

CREATE SEQUENCE trades_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.trades_id_seq OWNER TO jnevuqysrsjoyx;

--
-- Name: trades_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jnevuqysrsjoyx
--

ALTER SEQUENCE trades_id_seq OWNED BY trades.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: jnevuqysrsjoyx; Tablespace: 
--

CREATE TABLE users (
    id integer NOT NULL,
    name character varying,
    password_digest character varying,
    address character varying,
    phone character varying,
    email character varying,
    description text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    sku_id integer
);


ALTER TABLE public.users OWNER TO jnevuqysrsjoyx;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: jnevuqysrsjoyx
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO jnevuqysrsjoyx;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jnevuqysrsjoyx
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: jnevuqysrsjoyx
--

ALTER TABLE ONLY services ALTER COLUMN id SET DEFAULT nextval('services_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: jnevuqysrsjoyx
--

ALTER TABLE ONLY skus ALTER COLUMN id SET DEFAULT nextval('skus_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: jnevuqysrsjoyx
--

ALTER TABLE ONLY trades ALTER COLUMN id SET DEFAULT nextval('trades_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: jnevuqysrsjoyx
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: jnevuqysrsjoyx
--

COPY schema_migrations (version) FROM stdin;
20150219055054
20150221164358
20150227063715
20150310035948
\.


--
-- Data for Name: services; Type: TABLE DATA; Schema: public; Owner: jnevuqysrsjoyx
--

COPY services (id, user_id, name, classification, description, quantity, barcode, created_at, updated_at) FROM stdin;
1	\N	Computer Repair	pro	We can fix your computers	5		2015-03-30 06:53:43.492671	2015-03-30 06:53:43.492671
\.


--
-- Name: services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jnevuqysrsjoyx
--

SELECT pg_catalog.setval('services_id_seq', 1, true);


--
-- Data for Name: skus; Type: TABLE DATA; Schema: public; Owner: jnevuqysrsjoyx
--

COPY skus (id, name, classification, description, need, quantity, barcode, created_at, updated_at, user_id) FROM stdin;
3	Computer repair	services		supplier	\N	\N	2015-03-31 13:17:07.608915	2015-03-31 13:17:07.608915	1
4	Websites	services		supplier	\N	\N	2015-03-31 13:17:33.233537	2015-03-31 13:17:33.233537	1
5	raw chicken	\N	\N	needer	\N	\N	2015-04-01 09:20:58.684632	2015-04-01 09:20:58.684632	2
\.


--
-- Name: skus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jnevuqysrsjoyx
--

SELECT pg_catalog.setval('skus_id_seq', 5, true);


--
-- Data for Name: trades; Type: TABLE DATA; Schema: public; Owner: jnevuqysrsjoyx
--

COPY trades (id, recipient, "in", "out", amountin, amountout, trademethod, tradecode, tradestatus, description, created_at, updated_at, user_id) FROM stdin;
\.


--
-- Name: trades_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jnevuqysrsjoyx
--

SELECT pg_catalog.setval('trades_id_seq', 1, false);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: jnevuqysrsjoyx
--

COPY users (id, name, password_digest, address, phone, email, description, created_at, updated_at, sku_id) FROM stdin;
1	JD's company	$2a$10$LHcNKJweGnMsCfw4S67RTO9Ow/c18RWKVz/d7qBqp6iPNoojJRj8i	Manila		jundalisay@gmail.com	Web Design	2015-03-30 06:10:33.332405	2015-03-30 06:10:33.332405	\N
2	Jollibee	$2a$10$s9xvva5jHpAdR0.x.fdi8.qc5wLcOYDqwhVEVgNCmPVUD/WrN0Lvy			foundation@jollibee.com.ph	Fastfood	2015-04-01 09:20:48.426903	2015-04-01 09:20:48.426903	\N
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jnevuqysrsjoyx
--

SELECT pg_catalog.setval('users_id_seq', 2, true);


--
-- Name: services_pkey; Type: CONSTRAINT; Schema: public; Owner: jnevuqysrsjoyx; Tablespace: 
--

ALTER TABLE ONLY services
    ADD CONSTRAINT services_pkey PRIMARY KEY (id);


--
-- Name: skus_pkey; Type: CONSTRAINT; Schema: public; Owner: jnevuqysrsjoyx; Tablespace: 
--

ALTER TABLE ONLY skus
    ADD CONSTRAINT skus_pkey PRIMARY KEY (id);


--
-- Name: trades_pkey; Type: CONSTRAINT; Schema: public; Owner: jnevuqysrsjoyx; Tablespace: 
--

ALTER TABLE ONLY trades
    ADD CONSTRAINT trades_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: jnevuqysrsjoyx; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: jnevuqysrsjoyx; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- PostgreSQL database dump complete
--


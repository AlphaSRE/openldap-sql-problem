--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.1
-- Dumped by pg_dump version 9.6.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

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
-- Name: authors_docs; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE authors_docs (
    pers_id integer NOT NULL,
    doc_id integer NOT NULL
);


ALTER TABLE authors_docs OWNER TO admin;

--
-- Name: certs; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE certs (
    id integer NOT NULL,
    cert text NOT NULL,
    pers_id integer NOT NULL
);


ALTER TABLE certs OWNER TO admin;

--
-- Name: certs_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE certs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE certs_id_seq OWNER TO admin;

--
-- Name: certs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE certs_id_seq OWNED BY certs.id;


--
-- Name: documents; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE documents (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    abstract character varying(255)
);


ALTER TABLE documents OWNER TO admin;

--
-- Name: documents_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE documents_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE documents_id_seq OWNER TO admin;

--
-- Name: documents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE documents_id_seq OWNED BY documents.id;


--
-- Name: institutes; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE institutes (
    id integer NOT NULL,
    name character varying(255)
);


ALTER TABLE institutes OWNER TO admin;

--
-- Name: institutes_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE institutes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE institutes_id_seq OWNER TO admin;

--
-- Name: institutes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE institutes_id_seq OWNED BY institutes.id;


--
-- Name: ldap_attr_mappings; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE ldap_attr_mappings (
    id integer NOT NULL,
    oc_map_id integer NOT NULL,
    name character varying(255) NOT NULL,
    sel_expr character varying(255) NOT NULL,
    sel_expr_u character varying(255),
    from_tbls character varying(255) NOT NULL,
    join_where character varying(255),
    add_proc character varying(255),
    delete_proc character varying(255),
    param_order integer NOT NULL,
    expect_return integer NOT NULL
);


ALTER TABLE ldap_attr_mappings OWNER TO admin;

--
-- Name: ldap_attr_mappings_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE ldap_attr_mappings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ldap_attr_mappings_id_seq OWNER TO admin;

--
-- Name: ldap_attr_mappings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE ldap_attr_mappings_id_seq OWNED BY ldap_attr_mappings.id;


--
-- Name: ldap_attr_mappings_oc_map_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE ldap_attr_mappings_oc_map_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ldap_attr_mappings_oc_map_id_seq OWNER TO admin;

--
-- Name: ldap_attr_mappings_oc_map_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE ldap_attr_mappings_oc_map_id_seq OWNED BY ldap_attr_mappings.oc_map_id;


--
-- Name: ldap_entries; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE ldap_entries (
    id integer NOT NULL,
    dn character varying(255) NOT NULL,
    oc_map_id integer NOT NULL,
    parent integer NOT NULL,
    keyval integer NOT NULL
);


ALTER TABLE ldap_entries OWNER TO admin;

--
-- Name: ldap_entries_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE ldap_entries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ldap_entries_id_seq OWNER TO admin;

--
-- Name: ldap_entries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE ldap_entries_id_seq OWNED BY ldap_entries.id;


--
-- Name: ldap_entries_oc_map_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE ldap_entries_oc_map_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ldap_entries_oc_map_id_seq OWNER TO admin;

--
-- Name: ldap_entries_oc_map_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE ldap_entries_oc_map_id_seq OWNED BY ldap_entries.oc_map_id;


--
-- Name: ldap_entry_objclasses; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE ldap_entry_objclasses (
    entry_id integer NOT NULL,
    oc_name character varying(64)
);


ALTER TABLE ldap_entry_objclasses OWNER TO admin;

--
-- Name: ldap_oc_mappings; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE ldap_oc_mappings (
    id integer NOT NULL,
    name character varying(64) NOT NULL,
    keytbl character varying(64) NOT NULL,
    keycol character varying(64) NOT NULL,
    create_proc character varying(255),
    delete_proc character varying(255),
    expect_return integer NOT NULL
);


ALTER TABLE ldap_oc_mappings OWNER TO admin;

--
-- Name: ldap_oc_mappings_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE ldap_oc_mappings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ldap_oc_mappings_id_seq OWNER TO admin;

--
-- Name: ldap_oc_mappings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE ldap_oc_mappings_id_seq OWNED BY ldap_oc_mappings.id;


--
-- Name: persons; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE persons (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    surname character varying(255) NOT NULL,
    password character varying(64)
);


ALTER TABLE persons OWNER TO admin;

--
-- Name: persons_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE persons_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE persons_id_seq OWNER TO admin;

--
-- Name: persons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE persons_id_seq OWNED BY persons.id;


--
-- Name: phones; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE phones (
    id integer NOT NULL,
    phone character varying(255) NOT NULL,
    pers_id integer NOT NULL
);


ALTER TABLE phones OWNER TO admin;

--
-- Name: phones_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE phones_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE phones_id_seq OWNER TO admin;

--
-- Name: phones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE phones_id_seq OWNED BY phones.id;


--
-- Name: referrals; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE referrals (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    url character varying(255) NOT NULL
);


ALTER TABLE referrals OWNER TO admin;

--
-- Name: referrals_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE referrals_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE referrals_id_seq OWNER TO admin;

--
-- Name: referrals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE referrals_id_seq OWNED BY referrals.id;


--
-- Name: certs id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY certs ALTER COLUMN id SET DEFAULT nextval('certs_id_seq'::regclass);


--
-- Name: documents id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY documents ALTER COLUMN id SET DEFAULT nextval('documents_id_seq'::regclass);


--
-- Name: institutes id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY institutes ALTER COLUMN id SET DEFAULT nextval('institutes_id_seq'::regclass);


--
-- Name: ldap_attr_mappings id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY ldap_attr_mappings ALTER COLUMN id SET DEFAULT nextval('ldap_attr_mappings_id_seq'::regclass);


--
-- Name: ldap_attr_mappings oc_map_id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY ldap_attr_mappings ALTER COLUMN oc_map_id SET DEFAULT nextval('ldap_attr_mappings_oc_map_id_seq'::regclass);


--
-- Name: ldap_entries id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY ldap_entries ALTER COLUMN id SET DEFAULT nextval('ldap_entries_id_seq'::regclass);


--
-- Name: ldap_entries oc_map_id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY ldap_entries ALTER COLUMN oc_map_id SET DEFAULT nextval('ldap_entries_oc_map_id_seq'::regclass);


--
-- Name: ldap_oc_mappings id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY ldap_oc_mappings ALTER COLUMN id SET DEFAULT nextval('ldap_oc_mappings_id_seq'::regclass);


--
-- Name: persons id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY persons ALTER COLUMN id SET DEFAULT nextval('persons_id_seq'::regclass);


--
-- Name: phones id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY phones ALTER COLUMN id SET DEFAULT nextval('phones_id_seq'::regclass);


--
-- Name: referrals id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY referrals ALTER COLUMN id SET DEFAULT nextval('referrals_id_seq'::regclass);


--
-- Data for Name: authors_docs; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY authors_docs (pers_id, doc_id) FROM stdin;
1	1
1	2
2	1
\.


--
-- Data for Name: certs; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY certs (id, cert, pers_id) FROM stdin;
1	3082036b308202d4a003020102020102300d06092a864886f70d01010405003077310b3009060355040613025553311330110603550408130a43616c69666f726e6961311f301d060355040a13164f70656e4c444150204578616d706c652c204c74642e311330110603550403130a4578616d706c65204341311d301b06092a864886f70d010901160e6361406578616d706c652e636f6d301e170d3033313031373136333331395a170d3034313031363136333331395a307e310b3009060355040613025553311330110603550408130a43616c69666f726e6961311f301d060355040a13164f70656e4c444150204578616d706c652c204c74642e311830160603550403130f557273756c612048616d7073746572311f301d06092a864886f70d01090116107568616d406578616d706c652e636f6d30819f300d06092a864886f70d010101050003818d0030818902818100eec60a7910b57d2e687158ca55eea738d36f10413dfecf31435e1aeeb9713b8e2da7dd2dde6bc6cec03b4987eaa7b037b9eb50e11c71e58088cc282883122cd8329c6f24f6045e6be9d21b9190c8292998267a5f7905292de936262747ab4b76a88a63872c41629a69d32e894d44c896a8d06fab0a1bc7de343c6c1458478f290203010001a381ff3081fc30090603551d1304023000302c06096086480186f842010d041f161d4f70656e53534c2047656e657261746564204365727469666963617465301d0603551d0e04160414a323de136c19ae0c479450e882dfb10ad147f45e3081a10603551d2304819930819680144b6f211a3624d290f943b053472d7de1c0e69823a17ba4793077310b3009060355040613025553311330110603550408130a43616c69666f726e6961311f301d060355040a13164f70656e4c444150204578616d706c652c204c74642e311330110603550403130a4578616d706c65204341311d301b06092a864886f70d010901160e6361406578616d706c652e636f6d820100300d06092a864886f70d010104050003818100881470045bdce95660d6e6af59e6a844aec4b9f5eaea88d4eb7a5a47080afa64750f81a3e47d00fd39c69a17a1c66d29d36f06edc537107f8c592239c2d4da55fb3f1d488e7b2387ad2a551cbd1ceb070ae9e020a9467275cb28798abb4cbfff98ddb3f1e7689b067072392511bb08125b5bec2bc207b7b6b275c47248f29acd	3
\.


--
-- Name: certs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('certs_id_seq', 1, false);


--
-- Data for Name: documents; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY documents (id, title, abstract) FROM stdin;
1	book1	abstract1
2	book2	abstract2
\.


--
-- Name: documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('documents_id_seq', 1, false);


--
-- Data for Name: institutes; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY institutes (id, name) FROM stdin;
1	Example
\.


--
-- Name: institutes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('institutes_id_seq', 1, false);


--
-- Data for Name: ldap_attr_mappings; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY ldap_attr_mappings (id, oc_map_id, name, sel_expr, sel_expr_u, from_tbls, join_where, add_proc, delete_proc, param_order, expect_return) FROM stdin;
1	1	cn	concat(persons.name,' ',persons.surname)	\N	persons	\N	\N	\N	3	0
2	1	telephoneNumber	phones.phone	\N	persons,phones	phones.pers_id=persons.id	\N	\N	3	0
3	1	givenName	persons.name	\N	persons	\N	\N	\N	3	0
4	1	sn	persons.surname	\N	persons	\N	\N	\N	3	0
5	1	userPassword	persons.password	\N	persons	persons.password IS NOT NULL	\N	\N	3	0
6	1	seeAlso	seeAlso.dn	\N	ldap_entries AS seeAlso,documents,authors_docs,persons	seeAlso.keyval=documents.id AND seeAlso.oc_map_id=2 AND authors_docs.doc_id=documents.id AND authors_docs.pers_id=persons.id	\N	\N	3	0
7	2	description	documents.abstract	\N	documents	\N	\N	\N	3	0
8	2	documentTitle	documents.title	\N	documents	\N	\N	\N	3	0
9	2	documentAuthor	documentAuthor.dn	\N	ldap_entries AS documentAuthor,documents,authors_docs,persons	documentAuthor.keyval=persons.id AND documentAuthor.oc_map_id=1 AND authors_docs.doc_id=documents.id AND authors_docs.pers_id=persons.id	\N	\N	3	0
10	2	documentIdentifier	concat('document ',documents.id)	\N	documents	\N	\N	\N	3	0
11	3	o	institutes.name	\N	institutes	\N	\N	\N	3	0
12	3	dc	lower(institutes.name)	\N	institutes,ldap_entries AS dcObject,ldap_entry_objclasses as auxObjectClass	institutes.id=dcObject.keyval AND dcObject.oc_map_id=3 AND dcObject.id=auxObjectClass.entry_id AND auxObjectClass.oc_name='dcObject'	\N	\N	3	0
13	4	ou	referrals.name	\N	referrals	\N	\N	\N	3	0
14	4	ref	referrals.url	\N	referrals	\N	\N	\N	3	0
15	1	userCertificate	certs.cert	\N	persons,certs	certs.pers_id=persons.id	\N	\N	3	0
\.


--
-- Name: ldap_attr_mappings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('ldap_attr_mappings_id_seq', 1, false);


--
-- Name: ldap_attr_mappings_oc_map_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('ldap_attr_mappings_oc_map_id_seq', 1, false);


--
-- Data for Name: ldap_entries; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY ldap_entries (id, dn, oc_map_id, parent, keyval) FROM stdin;
1	dc=example,dc=com	3	0	1
2	cn=Mitya Kovalev,dc=example,dc=com	1	1	1
3	cn=Torvlobnor Puzdoy,dc=example,dc=com	1	1	2
4	cn=Akakiy Zinberstein,dc=example,dc=com	1	1	3
5	documentTitle=book1,dc=example,dc=com	2	1	1
6	documentTitle=book2,dc=example,dc=com	2	1	2
7	ou=Referral,dc=example,dc=com	4	1	1
\.


--
-- Name: ldap_entries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('ldap_entries_id_seq', 1, false);


--
-- Name: ldap_entries_oc_map_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('ldap_entries_oc_map_id_seq', 1, false);


--
-- Data for Name: ldap_entry_objclasses; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY ldap_entry_objclasses (entry_id, oc_name) FROM stdin;
1	dcObject
4	pkiUser
7	extensibleObject
\.


--
-- Data for Name: ldap_oc_mappings; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY ldap_oc_mappings (id, name, keytbl, keycol, create_proc, delete_proc, expect_return) FROM stdin;
1	inetOrgPerson	persons	id	\N	\N	0
2	document	documents	id	\N	\N	0
3	organization	institutes	id	\N	\N	0
4	referral	referrals	id	\N	\N	0
\.


--
-- Name: ldap_oc_mappings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('ldap_oc_mappings_id_seq', 1, false);


--
-- Data for Name: persons; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY persons (id, name, surname, password) FROM stdin;
1	Mitya	Kovalev	mit
2	Torvlobnor	Puzdoy	\N
3	Akakiy	Zinberstein	\N
\.


--
-- Name: persons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('persons_id_seq', 1, false);


--
-- Data for Name: phones; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY phones (id, phone, pers_id) FROM stdin;
1	332-2334	1
2	222-3234	1
3	545-4563	2
\.


--
-- Name: phones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('phones_id_seq', 1, false);


--
-- Data for Name: referrals; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY referrals (id, name, url) FROM stdin;
1	Referral	ldap://localhost:9012/
\.


--
-- Name: referrals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('referrals_id_seq', 1, false);


--
-- Name: certs certs_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY certs
    ADD CONSTRAINT certs_pkey PRIMARY KEY (id);


--
-- Name: documents documents_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY documents
    ADD CONSTRAINT documents_pkey PRIMARY KEY (id);


--
-- Name: institutes institutes_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY institutes
    ADD CONSTRAINT institutes_pkey PRIMARY KEY (id);


--
-- Name: ldap_attr_mappings ldap_attr_mappings_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY ldap_attr_mappings
    ADD CONSTRAINT ldap_attr_mappings_pkey PRIMARY KEY (id);


--
-- Name: ldap_entries ldap_entries_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY ldap_entries
    ADD CONSTRAINT ldap_entries_pkey PRIMARY KEY (id);


--
-- Name: ldap_oc_mappings ldap_oc_mappings_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY ldap_oc_mappings
    ADD CONSTRAINT ldap_oc_mappings_pkey PRIMARY KEY (id);


--
-- Name: persons persons_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY persons
    ADD CONSTRAINT persons_pkey PRIMARY KEY (id);


--
-- Name: phones phones_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY phones
    ADD CONSTRAINT phones_pkey PRIMARY KEY (id);


--
-- Name: authors_docs pk_authors_docs; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY authors_docs
    ADD CONSTRAINT pk_authors_docs PRIMARY KEY (pers_id, doc_id);


--
-- Name: referrals referrals_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY referrals
    ADD CONSTRAINT referrals_pkey PRIMARY KEY (id);


--
-- Name: ldap_entries unq1_ldap_entries; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY ldap_entries
    ADD CONSTRAINT unq1_ldap_entries UNIQUE (oc_map_id, keyval);


--
-- Name: ldap_entries unq2_ldap_entries; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY ldap_entries
    ADD CONSTRAINT unq2_ldap_entries UNIQUE (dn);


--
-- Name: ldap_attr_mappings ldap_attr_mappings_oc_map_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY ldap_attr_mappings
    ADD CONSTRAINT ldap_attr_mappings_oc_map_id_fkey FOREIGN KEY (oc_map_id) REFERENCES ldap_oc_mappings(id);


--
-- Name: ldap_entries ldap_entries_oc_map_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY ldap_entries
    ADD CONSTRAINT ldap_entries_oc_map_id_fkey FOREIGN KEY (oc_map_id) REFERENCES ldap_oc_mappings(id);


--
-- Name: ldap_entry_objclasses ldap_entry_objclasses_entry_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY ldap_entry_objclasses
    ADD CONSTRAINT ldap_entry_objclasses_entry_id_fkey FOREIGN KEY (entry_id) REFERENCES ldap_entries(id);


--
-- PostgreSQL database dump complete
--


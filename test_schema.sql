--
-- PostgreSQL database dump
--

-- Dumped from database version 10.1
-- Dumped by pg_dump version 10.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: salesforce; Type: SCHEMA; Schema: -; Owner: johannes
--

CREATE SCHEMA salesforce;


ALTER SCHEMA salesforce OWNER TO johannes;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = salesforce, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: test__c; Type: TABLE; Schema: salesforce; Owner: johannes
--

CREATE TABLE test__c (
    id integer NOT NULL,
    sfid character varying(18) NOT NULL,
    systemmodstamp timestamp with time zone,
    isdeleted boolean,
    _hc_lastop character varying(32) NOT NULL,
    _hc_err text NOT NULL,
    name double precision,
    checkbox__c boolean,
    currency__c double precision,
    date__c date,
    date_time__c timestamp with time zone,
    email__c character varying(80),
    number__c double precision,
    percent__c double precision,
    phone__c character varying(40),
    picklist__c character varying(1),
    test__c character varying(255),
    test_area__c text,
    time__c time without time zone,
    url__c character varying(200)
);


ALTER TABLE test__c OWNER TO johannes;

--
-- Name: test__c_id_seq; Type: SEQUENCE; Schema: salesforce; Owner: johannes
--

CREATE SEQUENCE test__c_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE test__c_id_seq OWNER TO johannes;

--
-- Name: test__c_id_seq; Type: SEQUENCE OWNED BY; Schema: salesforce; Owner: johannes
--

ALTER SEQUENCE test__c_id_seq OWNED BY test__c.id;


--
-- Name: user; Type: TABLE; Schema: salesforce; Owner: johannes
--

CREATE TABLE "user" (
    id integer NOT NULL,
    sfid character varying(18) NOT NULL,
    systemmodstamp timestamp with time zone,
    _hc_lastop character varying(32) NOT NULL,
    _hc_err text NOT NULL,
    username character varying(80),
    email character varying(80),
    department character varying(80),
    title character varying(80)
);


ALTER TABLE "user" OWNER TO johannes;

--
-- Name: user_id_seq; Type: SEQUENCE; Schema: salesforce; Owner: johannes
--

CREATE SEQUENCE user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE user_id_seq OWNER TO johannes;

--
-- Name: user_id_seq; Type: SEQUENCE OWNED BY; Schema: salesforce; Owner: johannes
--

ALTER SEQUENCE user_id_seq OWNED BY "user".id;


--
-- Name: test__c id; Type: DEFAULT; Schema: salesforce; Owner: johannes
--

ALTER TABLE ONLY test__c ALTER COLUMN id SET DEFAULT nextval('test__c_id_seq'::regclass);


--
-- Name: user id; Type: DEFAULT; Schema: salesforce; Owner: johannes
--

ALTER TABLE ONLY "user" ALTER COLUMN id SET DEFAULT nextval('user_id_seq'::regclass);


--
-- Name: test__c test__c_pkey; Type: CONSTRAINT; Schema: salesforce; Owner: johannes
--

ALTER TABLE ONLY test__c
    ADD CONSTRAINT test__c_pkey PRIMARY KEY (id);


--
-- Name: test__c test__c_sfid_key; Type: CONSTRAINT; Schema: salesforce; Owner: johannes
--

ALTER TABLE ONLY test__c
    ADD CONSTRAINT test__c_sfid_key UNIQUE (sfid);


--
-- Name: user user_pkey; Type: CONSTRAINT; Schema: salesforce; Owner: johannes
--

ALTER TABLE ONLY "user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);


--
-- Name: user user_sfid_key; Type: CONSTRAINT; Schema: salesforce; Owner: johannes
--

ALTER TABLE ONLY "user"
    ADD CONSTRAINT user_sfid_key UNIQUE (sfid);


--
-- PostgreSQL database dump complete
--


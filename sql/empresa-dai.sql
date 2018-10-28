--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.14
-- Dumped by pg_dump version 9.5.14

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
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


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: contacto; Type: TABLE; Schema: public; Owner: makako
--

CREATE TABLE public.contacto (
    contacto_id integer NOT NULL,
    contacto_nombre character varying(100),
    contacto_email character varying(40),
    contacto_telefono character varying(10),
    contacto_mensaje text
);


ALTER TABLE public.contacto OWNER TO makako;

--
-- Name: contacto_contacto_id_seq; Type: SEQUENCE; Schema: public; Owner: makako
--

CREATE SEQUENCE public.contacto_contacto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contacto_contacto_id_seq OWNER TO makako;

--
-- Name: contacto_contacto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: makako
--

ALTER SEQUENCE public.contacto_contacto_id_seq OWNED BY public.contacto.contacto_id;


--
-- Name: contacto_id; Type: DEFAULT; Schema: public; Owner: makako
--

ALTER TABLE ONLY public.contacto ALTER COLUMN contacto_id SET DEFAULT nextval('public.contacto_contacto_id_seq'::regclass);


--
-- Data for Name: contacto; Type: TABLE DATA; Schema: public; Owner: makako
--

COPY public.contacto (contacto_id, contacto_nombre, contacto_email, contacto_telefono, contacto_mensaje) FROM stdin;
1	Christian Peralta Guzmán	makako.nessus@gmail.com	5529705425	Este es el primer mensaje insertado desde el sitio de la Empresa ficticia llamada DAI- Desarrollo de Aplicaciones Informáticas
2	Yolanda Guzmán Mejía	yolanda@gmail.com	5529705422	Este es el segundo mensaje insertado desde el sitio de la Empresa ficticia llamada DAI- Desarrollo de Aplicaciones Informáticas
3	Pepe Jaramillo Espinoza	pepejara@gmail.com	34444443	Este es el tercer mensaje, para entonces la base de datos POSTGRESQL tendrá sus tres registros. \n\nSe tiene que recargar la web después del mensaje.
\.


--
-- Name: contacto_contacto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: makako
--

SELECT pg_catalog.setval('public.contacto_contacto_id_seq', 3, true);


--
-- Name: contacto_pkey; Type: CONSTRAINT; Schema: public; Owner: makako
--

ALTER TABLE ONLY public.contacto
    ADD CONSTRAINT contacto_pkey PRIMARY KEY (contacto_id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--


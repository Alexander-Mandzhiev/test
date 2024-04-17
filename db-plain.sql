--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

-- Started on 2024-04-17 02:04:15

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
-- TOC entry 216 (class 1259 OID 16537)
-- Name: child; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.child (
    id text NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    name text NOT NULL,
    user_id text NOT NULL
);


ALTER TABLE public.child OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16529)
-- Name: user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."user" (
    id text NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    username text NOT NULL,
    years_old integer NOT NULL
);


ALTER TABLE public."user" OWNER TO postgres;

--
-- TOC entry 4789 (class 0 OID 16537)
-- Dependencies: 216
-- Data for Name: child; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.child (id, created_at, updated_at, name, user_id) VALUES ('clv2simzb0001zjip2gupfhex', '2024-04-16 19:42:09.623', '2024-04-16 19:42:09.623', 'Ребенок 2', 'clv2np98v0000znjqmzkxp6au');
INSERT INTO public.child (id, created_at, updated_at, name, user_id) VALUES ('clv2sivy80003zjip6pnp11lt', '2024-04-16 19:42:21.249', '2024-04-16 19:42:21.249', 'Ребенок 3', 'clv2np98v0000znjqmzkxp6au');
INSERT INTO public.child (id, created_at, updated_at, name, user_id) VALUES ('clv2siyat0005zjip8u8etjaa', '2024-04-16 19:42:24.293', '2024-04-16 19:42:24.293', 'Ребенок 4', 'clv2np98v0000znjqmzkxp6au');
INSERT INTO public.child (id, created_at, updated_at, name, user_id) VALUES ('clv2sj1230007zjip25atbvse', '2024-04-16 19:42:27.867', '2024-04-16 19:42:27.867', 'Ребенок 5', 'clv2np98v0000znjqmzkxp6au');
INSERT INTO public.child (id, created_at, updated_at, name, user_id) VALUES ('clv2skxxy000211lat03erdnb', '2024-04-16 19:43:57.143', '2024-04-16 19:43:57.143', 'Маша', 'clv2skpfb000011lawzcsk89t');
INSERT INTO public.child (id, created_at, updated_at, name, user_id) VALUES ('clv2sl150000411la05grsx4x', '2024-04-16 19:44:01.284', '2024-04-16 19:44:01.284', 'Даша', 'clv2skpfb000011lawzcsk89t');
INSERT INTO public.child (id, created_at, updated_at, name, user_id) VALUES ('clv2sl47h000611lan95yi0xh', '2024-04-16 19:44:05.262', '2024-04-16 19:44:05.262', 'Вика', 'clv2skpfb000011lawzcsk89t');
INSERT INTO public.child (id, created_at, updated_at, name, user_id) VALUES ('clv2sl7nx000811law3n2a24t', '2024-04-16 19:44:09.742', '2024-04-16 19:44:09.742', 'Паша', 'clv2skpfb000011lawzcsk89t');
INSERT INTO public.child (id, created_at, updated_at, name, user_id) VALUES ('clv2sgzau0001se3kxs0p02lo', '2024-04-16 19:40:52.278', '2024-04-16 20:19:41.676', 'Ребенок 1 - обновленная запись', 'clv2skpfb000011lawzcsk89t');


--
-- TOC entry 4788 (class 0 OID 16529)
-- Dependencies: 215
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."user" (id, created_at, updated_at, username, years_old) VALUES ('clv2np98v0000znjqmzkxp6au', '2024-04-16 17:27:20.335', '2024-04-16 17:57:50.602', 'Иванов Иван Иванович', 29);
INSERT INTO public."user" (id, created_at, updated_at, username, years_old) VALUES ('clv2skpfb000011lawzcsk89t', '2024-04-16 19:43:46.103', '2024-04-16 19:43:46.103', 'Петров Петр Петрович', 49);


--
-- TOC entry 4643 (class 2606 OID 16544)
-- Name: child child_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.child
    ADD CONSTRAINT child_pkey PRIMARY KEY (id);


--
-- TOC entry 4641 (class 2606 OID 16536)
-- Name: user user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);


--
-- TOC entry 4639 (class 1259 OID 16545)
-- Name: user_id_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX user_id_key ON public."user" USING btree (id);


--
-- TOC entry 4644 (class 2606 OID 16547)
-- Name: child child_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.child
    ADD CONSTRAINT child_user_id_fkey FOREIGN KEY (user_id) REFERENCES public."user"(id) ON UPDATE CASCADE ON DELETE CASCADE;


-- Completed on 2024-04-17 02:04:15

--
-- PostgreSQL database dump complete
--


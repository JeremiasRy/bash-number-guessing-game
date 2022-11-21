--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    games_played integer DEFAULT 0,
    best_game integer DEFAULT 0
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Jeremias', 0, 0);
INSERT INTO public.users VALUES (2, 'JEremias', 0, 0);
INSERT INTO public.users VALUES (3, 'Jokumies', 0, 0);
INSERT INTO public.users VALUES (4, 'user_1669026421675', 0, 0);
INSERT INTO public.users VALUES (5, 'user_1669026421674', 0, 0);
INSERT INTO public.users VALUES (6, 'user_1669026432588', 0, 0);
INSERT INTO public.users VALUES (7, 'user_1669026432587', 0, 0);
INSERT INTO public.users VALUES (8, 'user_1669026473659', 0, 0);
INSERT INTO public.users VALUES (9, 'user_1669026473658', 0, 0);
INSERT INTO public.users VALUES (10, 'user_1669026537621', 0, 0);
INSERT INTO public.users VALUES (11, 'user_1669026537620', 0, 0);
INSERT INTO public.users VALUES (12, 'user_1669026563001', 0, 0);
INSERT INTO public.users VALUES (13, 'user_1669026563000', 0, 0);
INSERT INTO public.users VALUES (14, 'user_1669026570505', 0, 0);
INSERT INTO public.users VALUES (15, 'user_1669026570504', 0, 0);
INSERT INTO public.users VALUES (16, 'asiaa23', 0, 0);
INSERT INTO public.users VALUES (17, 'user_1669026725979', 0, 0);
INSERT INTO public.users VALUES (18, 'user_1669026725978', 0, 0);
INSERT INTO public.users VALUES (19, 'user_1669026819479', 0, 0);
INSERT INTO public.users VALUES (20, 'user_1669026819478', 0, 0);
INSERT INTO public.users VALUES (21, 'user_1669026841575', 0, 0);
INSERT INTO public.users VALUES (22, 'user_1669026841574', 0, 0);
INSERT INTO public.users VALUES (23, 'user_1669026863640', 0, 0);
INSERT INTO public.users VALUES (24, 'user_1669026863639', 0, 0);
INSERT INTO public.users VALUES (25, 'user_1669027013690', 0, 0);
INSERT INTO public.users VALUES (26, 'user_1669027013689', 0, 0);
INSERT INTO public.users VALUES (27, 'user_1669027072644', 0, 0);
INSERT INTO public.users VALUES (28, 'user_1669027072643', 0, 0);
INSERT INTO public.users VALUES (29, 'Jermu', 0, 0);
INSERT INTO public.users VALUES (30, 'Jereremi', 0, 0);
INSERT INTO public.users VALUES (31, 'Jou', 0, 0);
INSERT INTO public.users VALUES (32, 'k', 0, 0);
INSERT INTO public.users VALUES (33, 's', 0, 0);
INSERT INTO public.users VALUES (34, 'j', 0, 0);
INSERT INTO public.users VALUES (35, 'a', 0, 0);
INSERT INTO public.users VALUES (36, 'user_1669030084735', 0, 0);
INSERT INTO public.users VALUES (37, 'user_1669030084734', 0, 0);
INSERT INTO public.users VALUES (39, 'Je', 0, 0);
INSERT INTO public.users VALUES (40, 'J', 0, 0);
INSERT INTO public.users VALUES (41, 'je', 0, 0);
INSERT INTO public.users VALUES (42, 'user_1669033938781', 0, 0);
INSERT INTO public.users VALUES (43, 'user_1669033938780', 0, 0);
INSERT INTO public.users VALUES (44, 'user_1669034018072', 0, 0);
INSERT INTO public.users VALUES (45, 'user_1669034018071', 0, 0);
INSERT INTO public.users VALUES (46, 'user_1669034104353', 0, 0);
INSERT INTO public.users VALUES (47, 'user_1669034104352', 0, 0);
INSERT INTO public.users VALUES (48, 'user_1669034176460', 0, 0);
INSERT INTO public.users VALUES (49, 'user_1669034176459', 0, 0);
INSERT INTO public.users VALUES (50, 'user_1669034598893', 0, 0);
INSERT INTO public.users VALUES (55, 'user_1669034598892', 0, 0);
INSERT INTO public.users VALUES (66, 'user_1669034648901', 0, 0);
INSERT INTO public.users VALUES (67, 'user_1669034648900', 0, 0);
INSERT INTO public.users VALUES (79, 'user_1669035210382', 2, 832);
INSERT INTO public.users VALUES (78, 'user_1669035210383', 5, 183);
INSERT INTO public.users VALUES (69, 'user_1669034754707', 2, 243);
INSERT INTO public.users VALUES (68, 'user_1669034754708', 5, 24);
INSERT INTO public.users VALUES (38, 'jeremias', 2, 1);
INSERT INTO public.users VALUES (81, 'user_1669035271298', 2, 117);
INSERT INTO public.users VALUES (80, 'user_1669035271299', 5, 211);
INSERT INTO public.users VALUES (71, 'user_1669034881949', 2, 485);
INSERT INTO public.users VALUES (70, 'user_1669034881950', 5, 111);
INSERT INTO public.users VALUES (73, 'user_1669034948977', 2, 147);
INSERT INTO public.users VALUES (72, 'user_1669034948978', 5, 138);
INSERT INTO public.users VALUES (75, 'user_1669035014298', 2, 723);
INSERT INTO public.users VALUES (74, 'user_1669035014299', 5, 179);
INSERT INTO public.users VALUES (77, 'user_1669035106310', 2, 388);
INSERT INTO public.users VALUES (76, 'user_1669035106311', 5, 394);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 81, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--


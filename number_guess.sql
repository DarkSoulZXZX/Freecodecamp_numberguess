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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    score integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(30) NOT NULL
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
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 2);
INSERT INTO public.games VALUES (2, 14, 2);
INSERT INTO public.games VALUES (3, 15, 47);
INSERT INTO public.games VALUES (4, 15, 192);
INSERT INTO public.games VALUES (5, 16, 76);
INSERT INTO public.games VALUES (6, 16, 175);
INSERT INTO public.games VALUES (7, 15, 148);
INSERT INTO public.games VALUES (8, 15, 428);
INSERT INTO public.games VALUES (9, 15, 238);
INSERT INTO public.games VALUES (10, 1, 1);
INSERT INTO public.games VALUES (11, 1, 3);
INSERT INTO public.games VALUES (12, 17, 208);
INSERT INTO public.games VALUES (13, 17, 768);
INSERT INTO public.games VALUES (14, 18, 531);
INSERT INTO public.games VALUES (15, 18, 419);
INSERT INTO public.games VALUES (16, 17, 634);
INSERT INTO public.games VALUES (17, 17, 710);
INSERT INTO public.games VALUES (18, 17, 383);
INSERT INTO public.games VALUES (19, 19, 438);
INSERT INTO public.games VALUES (20, 19, 171);
INSERT INTO public.games VALUES (21, 20, 236);
INSERT INTO public.games VALUES (22, 20, 282);
INSERT INTO public.games VALUES (23, 19, 757);
INSERT INTO public.games VALUES (24, 19, 232);
INSERT INTO public.games VALUES (25, 19, 23);
INSERT INTO public.games VALUES (26, 21, 473);
INSERT INTO public.games VALUES (27, 21, 490);
INSERT INTO public.games VALUES (28, 22, 860);
INSERT INTO public.games VALUES (29, 22, 700);
INSERT INTO public.games VALUES (30, 21, 279);
INSERT INTO public.games VALUES (31, 21, 864);
INSERT INTO public.games VALUES (32, 21, 180);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Test');
INSERT INTO public.users VALUES (2, '[A');
INSERT INTO public.users VALUES (3, 'user_1655029582139');
INSERT INTO public.users VALUES (4, 'user_1655029582138');
INSERT INTO public.users VALUES (5, 'user_1655029765044');
INSERT INTO public.users VALUES (6, 'user_1655029765043');
INSERT INTO public.users VALUES (7, 'user_1655029948708');
INSERT INTO public.users VALUES (8, 'user_1655029948707');
INSERT INTO public.users VALUES (9, 'test');
INSERT INTO public.users VALUES (10, 'user_1655030153982');
INSERT INTO public.users VALUES (11, 'user_1655030153981');
INSERT INTO public.users VALUES (12, 'user_1655030200907');
INSERT INTO public.users VALUES (13, 'user_1655030200906');
INSERT INTO public.users VALUES (14, 'TestSubject2');
INSERT INTO public.users VALUES (15, 'user_1655030411646');
INSERT INTO public.users VALUES (16, 'user_1655030411645');
INSERT INTO public.users VALUES (17, 'user_1655030599964');
INSERT INTO public.users VALUES (18, 'user_1655030599963');
INSERT INTO public.users VALUES (19, 'user_1655030798127');
INSERT INTO public.users VALUES (20, 'user_1655030798126');
INSERT INTO public.users VALUES (21, 'user_1655030854508');
INSERT INTO public.users VALUES (22, 'user_1655030854507');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 32, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 22, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


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
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--


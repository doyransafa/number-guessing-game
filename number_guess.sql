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
    num_of_guesses integer NOT NULL
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
    username character varying(22)
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

INSERT INTO public.games VALUES (4, 1, 6);
INSERT INTO public.games VALUES (5, 1, 1);
INSERT INTO public.games VALUES (6, 10, 2);
INSERT INTO public.games VALUES (7, 11, 6);
INSERT INTO public.games VALUES (8, 12, 162);
INSERT INTO public.games VALUES (9, 12, 55);
INSERT INTO public.games VALUES (10, 13, 760);
INSERT INTO public.games VALUES (11, 13, 736);
INSERT INTO public.games VALUES (12, 12, 504);
INSERT INTO public.games VALUES (13, 12, 750);
INSERT INTO public.games VALUES (14, 14, 50);
INSERT INTO public.games VALUES (15, 14, 359);
INSERT INTO public.games VALUES (16, 15, 264);
INSERT INTO public.games VALUES (17, 15, 221);
INSERT INTO public.games VALUES (18, 14, 357);
INSERT INTO public.games VALUES (19, 14, 855);
INSERT INTO public.games VALUES (20, 16, 1001);
INSERT INTO public.games VALUES (21, 16, 435);
INSERT INTO public.games VALUES (22, 17, 248);
INSERT INTO public.games VALUES (23, 17, 867);
INSERT INTO public.games VALUES (24, 16, 983);
INSERT INTO public.games VALUES (25, 16, 436);
INSERT INTO public.games VALUES (26, 1, 4);
INSERT INTO public.games VALUES (27, 18, 30);
INSERT INTO public.games VALUES (28, 19, 248);
INSERT INTO public.games VALUES (29, 19, 375);
INSERT INTO public.games VALUES (30, 20, 152);
INSERT INTO public.games VALUES (31, 20, 526);
INSERT INTO public.games VALUES (32, 19, 793);
INSERT INTO public.games VALUES (33, 19, 336);
INSERT INTO public.games VALUES (34, 18, 14);
INSERT INTO public.games VALUES (35, 21, 471);
INSERT INTO public.games VALUES (36, 21, 339);
INSERT INTO public.games VALUES (37, 22, 380);
INSERT INTO public.games VALUES (38, 22, 230);
INSERT INTO public.games VALUES (39, 21, 105);
INSERT INTO public.games VALUES (40, 21, 700);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'safa');
INSERT INTO public.users VALUES (7, 'doyran');
INSERT INTO public.users VALUES (8, 'user_1672771262239');
INSERT INTO public.users VALUES (9, 'user_1672771262238');
INSERT INTO public.users VALUES (10, 'omer');
INSERT INTO public.users VALUES (11, 'ramo');
INSERT INTO public.users VALUES (12, 'user_1672773796234');
INSERT INTO public.users VALUES (13, 'user_1672773796233');
INSERT INTO public.users VALUES (14, 'user_1672773906945');
INSERT INTO public.users VALUES (15, 'user_1672773906944');
INSERT INTO public.users VALUES (16, 'user_1672774140602');
INSERT INTO public.users VALUES (17, 'user_1672774140601');
INSERT INTO public.users VALUES (18, 'RAMO');
INSERT INTO public.users VALUES (19, 'user_1672774806648');
INSERT INTO public.users VALUES (20, 'user_1672774806647');
INSERT INTO public.users VALUES (21, 'user_1672774877531');
INSERT INTO public.users VALUES (22, 'user_1672774877530');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 40, true);


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


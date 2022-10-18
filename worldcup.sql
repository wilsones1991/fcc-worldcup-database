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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 78, 79, 4, 2018, 'Final', 2);
INSERT INTO public.games VALUES (2, 80, 81, 2, 2018, 'Third Place', 0);
INSERT INTO public.games VALUES (3, 79, 81, 2, 2018, 'Semi-Final', 1);
INSERT INTO public.games VALUES (4, 78, 80, 1, 2018, 'Semi-Final', 0);
INSERT INTO public.games VALUES (5, 79, 82, 3, 2018, 'Quarter-Final', 2);
INSERT INTO public.games VALUES (6, 81, 83, 2, 2018, 'Quarter-Final', 0);
INSERT INTO public.games VALUES (7, 80, 84, 2, 2018, 'Quarter-Final', 1);
INSERT INTO public.games VALUES (8, 78, 85, 2, 2018, 'Quarter-Final', 0);
INSERT INTO public.games VALUES (9, 81, 86, 2, 2018, 'Eighth-Final', 1);
INSERT INTO public.games VALUES (10, 83, 87, 1, 2018, 'Eighth-Final', 0);
INSERT INTO public.games VALUES (11, 80, 88, 3, 2018, 'Eighth-Final', 2);
INSERT INTO public.games VALUES (12, 84, 89, 2, 2018, 'Eighth-Final', 0);
INSERT INTO public.games VALUES (13, 79, 90, 2, 2018, 'Eighth-Final', 1);
INSERT INTO public.games VALUES (14, 82, 91, 2, 2018, 'Eighth-Final', 1);
INSERT INTO public.games VALUES (15, 85, 92, 2, 2018, 'Eighth-Final', 1);
INSERT INTO public.games VALUES (16, 78, 93, 4, 2018, 'Eighth-Final', 3);
INSERT INTO public.games VALUES (17, 94, 93, 1, 2014, 'Final', 0);
INSERT INTO public.games VALUES (18, 95, 84, 3, 2014, 'Third Place', 0);
INSERT INTO public.games VALUES (19, 93, 95, 1, 2014, 'Semi-Final', 0);
INSERT INTO public.games VALUES (20, 94, 84, 7, 2014, 'Semi-Final', 1);
INSERT INTO public.games VALUES (21, 95, 96, 1, 2014, 'Quarter-Final', 0);
INSERT INTO public.games VALUES (22, 93, 80, 1, 2014, 'Quarter-Final', 0);
INSERT INTO public.games VALUES (23, 84, 86, 2, 2014, 'Quarter-Final', 1);
INSERT INTO public.games VALUES (24, 94, 78, 1, 2014, 'Quarter-Final', 0);
INSERT INTO public.games VALUES (25, 84, 97, 2, 2014, 'Eighth-Final', 1);
INSERT INTO public.games VALUES (26, 86, 85, 2, 2014, 'Eighth-Final', 0);
INSERT INTO public.games VALUES (27, 78, 98, 2, 2014, 'Eighth-Final', 0);
INSERT INTO public.games VALUES (28, 94, 99, 2, 2014, 'Eighth-Final', 1);
INSERT INTO public.games VALUES (29, 95, 89, 2, 2014, 'Eighth-Final', 1);
INSERT INTO public.games VALUES (30, 96, 100, 2, 2014, 'Eighth-Final', 1);
INSERT INTO public.games VALUES (31, 93, 87, 1, 2014, 'Eighth-Final', 0);
INSERT INTO public.games VALUES (32, 80, 101, 2, 2014, 'Eighth-Final', 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (78, 'France');
INSERT INTO public.teams VALUES (79, 'Croatia');
INSERT INTO public.teams VALUES (80, 'Belgium');
INSERT INTO public.teams VALUES (81, 'England');
INSERT INTO public.teams VALUES (82, 'Russia');
INSERT INTO public.teams VALUES (83, 'Sweden');
INSERT INTO public.teams VALUES (84, 'Brazil');
INSERT INTO public.teams VALUES (85, 'Uruguay');
INSERT INTO public.teams VALUES (86, 'Colombia');
INSERT INTO public.teams VALUES (87, 'Switzerland');
INSERT INTO public.teams VALUES (88, 'Japan');
INSERT INTO public.teams VALUES (89, 'Mexico');
INSERT INTO public.teams VALUES (90, 'Denmark');
INSERT INTO public.teams VALUES (91, 'Spain');
INSERT INTO public.teams VALUES (92, 'Portugal');
INSERT INTO public.teams VALUES (93, 'Argentina');
INSERT INTO public.teams VALUES (94, 'Germany');
INSERT INTO public.teams VALUES (95, 'Netherlands');
INSERT INTO public.teams VALUES (96, 'Costa Rica');
INSERT INTO public.teams VALUES (97, 'Chile');
INSERT INTO public.teams VALUES (98, 'Nigeria');
INSERT INTO public.teams VALUES (99, 'Algeria');
INSERT INTO public.teams VALUES (100, 'Greece');
INSERT INTO public.teams VALUES (101, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 32, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 101, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--
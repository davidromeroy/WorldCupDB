--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
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
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_teams_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_teams_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_teams_id_seq OWNER TO freecodecamp;

--
-- Name: teams_teams_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_teams_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_teams_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (289, 2018, 'Final', 877, 878, 4, 2);
INSERT INTO public.games VALUES (290, 2018, 'Third Place', 879, 880, 2, 0);
INSERT INTO public.games VALUES (291, 2018, 'Semi-Final', 878, 880, 2, 1);
INSERT INTO public.games VALUES (292, 2018, 'Semi-Final', 877, 879, 1, 0);
INSERT INTO public.games VALUES (293, 2018, 'Quarter-Final', 878, 881, 3, 2);
INSERT INTO public.games VALUES (294, 2018, 'Quarter-Final', 880, 882, 2, 0);
INSERT INTO public.games VALUES (295, 2018, 'Quarter-Final', 879, 883, 2, 1);
INSERT INTO public.games VALUES (296, 2018, 'Quarter-Final', 877, 884, 2, 0);
INSERT INTO public.games VALUES (297, 2018, 'Eighth-Final', 880, 885, 2, 1);
INSERT INTO public.games VALUES (298, 2018, 'Eighth-Final', 882, 886, 1, 0);
INSERT INTO public.games VALUES (299, 2018, 'Eighth-Final', 879, 887, 3, 2);
INSERT INTO public.games VALUES (300, 2018, 'Eighth-Final', 883, 888, 2, 0);
INSERT INTO public.games VALUES (301, 2018, 'Eighth-Final', 878, 889, 2, 1);
INSERT INTO public.games VALUES (302, 2018, 'Eighth-Final', 881, 890, 2, 1);
INSERT INTO public.games VALUES (303, 2018, 'Eighth-Final', 884, 891, 2, 1);
INSERT INTO public.games VALUES (304, 2018, 'Eighth-Final', 877, 892, 4, 3);
INSERT INTO public.games VALUES (305, 2014, 'Final', 893, 892, 1, 0);
INSERT INTO public.games VALUES (306, 2014, 'Third Place', 894, 883, 3, 0);
INSERT INTO public.games VALUES (307, 2014, 'Semi-Final', 892, 894, 1, 0);
INSERT INTO public.games VALUES (308, 2014, 'Semi-Final', 893, 883, 7, 1);
INSERT INTO public.games VALUES (309, 2014, 'Quarter-Final', 894, 895, 1, 0);
INSERT INTO public.games VALUES (310, 2014, 'Quarter-Final', 892, 879, 1, 0);
INSERT INTO public.games VALUES (311, 2014, 'Quarter-Final', 883, 885, 2, 1);
INSERT INTO public.games VALUES (312, 2014, 'Quarter-Final', 893, 877, 1, 0);
INSERT INTO public.games VALUES (313, 2014, 'Eighth-Final', 883, 896, 2, 1);
INSERT INTO public.games VALUES (314, 2014, 'Eighth-Final', 885, 884, 2, 0);
INSERT INTO public.games VALUES (315, 2014, 'Eighth-Final', 877, 897, 2, 0);
INSERT INTO public.games VALUES (316, 2014, 'Eighth-Final', 893, 898, 2, 1);
INSERT INTO public.games VALUES (317, 2014, 'Eighth-Final', 894, 888, 2, 1);
INSERT INTO public.games VALUES (318, 2014, 'Eighth-Final', 895, 899, 2, 1);
INSERT INTO public.games VALUES (319, 2014, 'Eighth-Final', 892, 886, 1, 0);
INSERT INTO public.games VALUES (320, 2014, 'Eighth-Final', 879, 900, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (877, 'France');
INSERT INTO public.teams VALUES (878, 'Croatia');
INSERT INTO public.teams VALUES (879, 'Belgium');
INSERT INTO public.teams VALUES (880, 'England');
INSERT INTO public.teams VALUES (881, 'Russia');
INSERT INTO public.teams VALUES (882, 'Sweden');
INSERT INTO public.teams VALUES (883, 'Brazil');
INSERT INTO public.teams VALUES (884, 'Uruguay');
INSERT INTO public.teams VALUES (885, 'Colombia');
INSERT INTO public.teams VALUES (886, 'Switzerland');
INSERT INTO public.teams VALUES (887, 'Japan');
INSERT INTO public.teams VALUES (888, 'Mexico');
INSERT INTO public.teams VALUES (889, 'Denmark');
INSERT INTO public.teams VALUES (890, 'Spain');
INSERT INTO public.teams VALUES (891, 'Portugal');
INSERT INTO public.teams VALUES (892, 'Argentina');
INSERT INTO public.teams VALUES (893, 'Germany');
INSERT INTO public.teams VALUES (894, 'Netherlands');
INSERT INTO public.teams VALUES (895, 'Costa Rica');
INSERT INTO public.teams VALUES (896, 'Chile');
INSERT INTO public.teams VALUES (897, 'Nigeria');
INSERT INTO public.teams VALUES (898, 'Algeria');
INSERT INTO public.teams VALUES (899, 'Greece');
INSERT INTO public.teams VALUES (900, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 320, true);


--
-- Name: teams_teams_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_teams_id_seq', 900, true);


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


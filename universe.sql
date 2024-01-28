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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: finder; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.finder (
    finder_id integer NOT NULL,
    name character varying(50) NOT NULL,
    born date NOT NULL
);


ALTER TABLE public.finder OWNER TO freecodecamp;

--
-- Name: finder_finder_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.finder_finder_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.finder_finder_id_seq OWNER TO freecodecamp;

--
-- Name: finder_finder_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.finder_finder_id_seq OWNED BY public.finder.finder_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    type text NOT NULL,
    has_life boolean,
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    discovered_year integer NOT NULL,
    planet_id integer NOT NULL,
    finder_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    mean_temp_celsius numeric(4,2),
    dist_from_nearest_star integer NOT NULL,
    star_id integer NOT NULL,
    finder_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    is_cold boolean NOT NULL,
    distance_from_earth integer NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: finder finder_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.finder ALTER COLUMN finder_id SET DEFAULT nextval('public.finder_finder_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: finder; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.finder VALUES (1, 'Georg Abdns', '1769-09-04');
INSERT INTO public.finder VALUES (2, 'Mikołaj Mikołaj', '1398-12-09');
INSERT INTO public.finder VALUES (3, 'Romanovic Trugh', '1950-06-06');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Droga Mleczna', 'spiralna', true, NULL);
INSERT INTO public.galaxy VALUES (2, 'Abell 1835 IR1916', 'spiralna', NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'NGC 901', 'spiralna', NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'PGC 61857', 'inna', NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'GN-108036', 'eliptyczna', NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'IOK-1', 'spiralna', NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (29, 'Księżyc', 12, 12, NULL);
INSERT INTO public.moon VALUES (30, 'Nazwa1', 1950, 1, NULL);
INSERT INTO public.moon VALUES (31, 'Nazwa2', 1876, 1, NULL);
INSERT INTO public.moon VALUES (32, 'Nazwa3', 1989, 2, NULL);
INSERT INTO public.moon VALUES (33, 'Nazwa4', 1976, 2, NULL);
INSERT INTO public.moon VALUES (34, 'Nazwa5', 1999, 3, NULL);
INSERT INTO public.moon VALUES (35, 'Nazwa6', 2012, 3, NULL);
INSERT INTO public.moon VALUES (36, 'Nazwa66', 2002, 3, NULL);
INSERT INTO public.moon VALUES (37, 'Nazwa7', 1877, 2, NULL);
INSERT INTO public.moon VALUES (38, 'Nazwa76', 2019, 4, NULL);
INSERT INTO public.moon VALUES (39, 'Nazwa8', 1934, 4, NULL);
INSERT INTO public.moon VALUES (40, 'Nazwa9', 1999, 4, NULL);
INSERT INTO public.moon VALUES (41, 'Nazwa69', 1966, 4, NULL);
INSERT INTO public.moon VALUES (42, 'Nazwa10', 1767, 2, NULL);
INSERT INTO public.moon VALUES (43, 'Nazwa11', 1989, 3, NULL);
INSERT INTO public.moon VALUES (44, 'Nazwa12', 1954, 5, 1);
INSERT INTO public.moon VALUES (45, 'Nazwa13', 1987, 5, 3);
INSERT INTO public.moon VALUES (46, 'Nazwa14', 1999, 6, NULL);
INSERT INTO public.moon VALUES (47, 'Nazwa15', 1921, 7, NULL);
INSERT INTO public.moon VALUES (48, 'Nazwa166', 1922, 7, 1);
INSERT INTO public.moon VALUES (49, 'Nazwa16', 1944, 8, 2);
INSERT INTO public.moon VALUES (50, 'Nazwa17', 1947, 8, NULL);
INSERT INTO public.moon VALUES (51, 'Nazwa18', 1978, 8, 2);
INSERT INTO public.moon VALUES (52, 'Nazwa19', 1990, 9, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'AGK-12', -23.40, 98234, 2, 1);
INSERT INTO public.planet VALUES (2, 'OIK-KG', 57.34, 234, 2, 3);
INSERT INTO public.planet VALUES (3, 'FGN-098', 13.00, 231, 2, 3);
INSERT INTO public.planet VALUES (4, 'FVC-BNM', -98.89, 12, 3, NULL);
INSERT INTO public.planet VALUES (5, 'DSA98', 12.00, 15, 2, NULL);
INSERT INTO public.planet VALUES (6, 'FDS-SD', 76.00, 55, 2, NULL);
INSERT INTO public.planet VALUES (7, 'JK-JK', -76.65, 12356, 3, 1);
INSERT INTO public.planet VALUES (8, 'KUY-999', -89.80, 126, 2, NULL);
INSERT INTO public.planet VALUES (9, 'TYU22', 88.80, 123, 4, 1);
INSERT INTO public.planet VALUES (10, 'GBN-MN', -77.60, 55, 4, NULL);
INSERT INTO public.planet VALUES (11, 'GHJ-09', -9.80, 2, 3, NULL);
INSERT INTO public.planet VALUES (12, 'Ziemia', 11.20, 45, 1, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Słońce', false, 8988, 1);
INSERT INTO public.star VALUES (2, 'IRAS 05346-6949', false, 232323, 2);
INSERT INTO public.star VALUES (3, 'MY Cephei', false, 55667, 2);
INSERT INTO public.star VALUES (4, 'V538 Carinae', true, 98223, 2);
INSERT INTO public.star VALUES (5, 'WOH G64', false, 23456, 2);
INSERT INTO public.star VALUES (6, 'NML Cygni', false, 22345, 4);


--
-- Name: finder_finder_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.finder_finder_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 52, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: finder finder_finder_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.finder
    ADD CONSTRAINT finder_finder_id_key UNIQUE (finder_id);


--
-- Name: finder finder_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.finder
    ADD CONSTRAINT finder_pkey PRIMARY KEY (finder_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_finder_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_finder_id_fkey FOREIGN KEY (finder_id) REFERENCES public.finder(finder_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_finder_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_finder_id_fkey FOREIGN KEY (finder_id) REFERENCES public.finder(finder_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


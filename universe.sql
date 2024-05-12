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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(125) NOT NULL,
    galaxy_types character varying(125),
    age_in_millions_of_years character varying(125),
    distance_from_earth character varying(125),
    description character varying(255)
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
    name character varying(125) NOT NULL,
    planet_id integer,
    number_of_craters integer,
    number_of_astronauts_visited integer,
    is_spherical boolean,
    age_in_millions_of_years character varying(125),
    distance_from_earth character varying(125),
    description character varying(125)
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
    name character varying(125) NOT NULL,
    star_id integer,
    is_spherical boolean,
    has_life boolean,
    age_in_millions_of_years character varying(125),
    planet_types character varying(125),
    distance_from_earth character varying(125),
    description character varying(125)
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
-- Name: satellite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satellite (
    satellite_id integer NOT NULL,
    name character varying(125) NOT NULL,
    distance_from_earth character varying(125),
    how_many_to_be_launched numeric,
    satellite_types text
);


ALTER TABLE public.satellite OWNER TO freecodecamp;

--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.satellite_satellite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.satellite_satellite_id_seq OWNER TO freecodecamp;

--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.satellite_satellite_id_seq OWNED BY public.satellite.satellite_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(125) NOT NULL,
    galaxy_id integer,
    age_in_millions_of_years character varying(125),
    distance_from_earth character varying(125),
    description character varying(255)
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
-- Name: satellite satellite_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite ALTER COLUMN satellite_id SET DEFAULT nextval('public.satellite_satellite_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', '13000', '27,000 light-years', 'The Milky Way is a barred spiral galaxy...');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', '22000', '2.537 million light-years', 'Andromeda is a spiral galaxy...');
INSERT INTO public.galaxy VALUES (3, 'Whirlpool', 'Spiral', '30000', '23 million light-years', 'The Whirlpool Galaxy is a classic spiral galaxy...');
INSERT INTO public.galaxy VALUES (4, 'Centaurus A', 'Elliptical', '12000', '11 million light-years', 'Centaurus A is an elliptical galaxy...');
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'Spiral', '80000', '28 million light-years', 'The Sombrero Galaxy is a spiral galaxy...');
INSERT INTO public.galaxy VALUES (6, 'Triangulum', 'Spiral', '40000', '2.723 million light-years', 'The Triangulum Galaxy is a spiral galaxy...');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 3, 500000, 12, true, '4.5', '238,900 miles', 'Description for Luna');
INSERT INTO public.moon VALUES (2, 'Phobos', 4, 100, 0, true, '4.6', '9,377 miles', 'Description for Phobos');
INSERT INTO public.moon VALUES (3, 'Deimos', 4, 50, 0, true, '4.6', '14,576 miles', 'Description for Deimos');
INSERT INTO public.moon VALUES (4, 'Ganymede', 5, 2000, 0, true, '4.5', '365 million miles', 'Description for Ganymede');
INSERT INTO public.moon VALUES (5, 'Titan', 6, 1000, 0, true, '4.5', '746 million miles', 'Description for Titan');
INSERT INTO public.moon VALUES (6, 'Enceladus', 6, 500, 0, true, '4.5', '793 million miles', 'Description for Enceladus');
INSERT INTO public.moon VALUES (7, 'Europa', 5, 1500, 0, true, '4.5', '390 million miles', 'Description for Europa');
INSERT INTO public.moon VALUES (8, 'Triton', 9, 200, 0, true, '4.5', '2.7 billion miles', 'Description for Triton');
INSERT INTO public.moon VALUES (9, 'Callisto', 5, 3000, 0, true, '4.5', '403 million miles', 'Description for Callisto');
INSERT INTO public.moon VALUES (10, 'Io', 5, 400, 0, true, '4.5', '389 million miles', 'Description for Io');
INSERT INTO public.moon VALUES (12, 'Miranda', 13, 50, 0, true, '4.5', '1.414 billion miles', 'Description for Miranda');
INSERT INTO public.moon VALUES (13, 'Charon', 10, 100, 0, true, '4.5', '3.666 billion miles', 'Description for Charon');
INSERT INTO public.moon VALUES (15, 'Larissa', 1, 200, 0, true, '4.3', '162 million miles', 'Description for Larissa');
INSERT INTO public.moon VALUES (16, 'Hyperion', 2, 300, 0, true, '4.6', '839 million miles', 'Description for Hyperion');
INSERT INTO public.moon VALUES (17, 'Phoebe', 7, 150, 0, true, '4.5', '818 million miles', 'Description for Phoebe');
INSERT INTO public.moon VALUES (18, 'Mimas', 8, 400, 0, true, '4.6', '792 million miles', 'Description for Mimas');
INSERT INTO public.moon VALUES (19, 'Rhea', 9, 800, 0, true, '4.5', '949 million miles', 'Description for Rhea');
INSERT INTO public.moon VALUES (20, 'Ariel', 11, 250, 0, true, '4.5', '1.276 billion miles', 'Description for Ariel');
INSERT INTO public.moon VALUES (21, 'Oberon', 13, 150, 0, true, '4.5', '1.764 billion miles', 'Description for Oberon');
INSERT INTO public.moon VALUES (22, 'Umbriel', 7, 180, 0, true, '4.5', '1.002 billion miles', 'Description for Umbriel');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, true, false, '4.5', 'Terrestrial', '48 million miles', 'Description for Mercury');
INSERT INTO public.planet VALUES (2, 'Venus', 1, true, false, '4.5', 'Terrestrial', '26 million miles', 'Description for Venus');
INSERT INTO public.planet VALUES (3, 'Earth', 1, true, true, '4.5', 'Terrestrial', '93 million miles', 'Description for Earth');
INSERT INTO public.planet VALUES (4, 'Mars', 2, true, false, '4.6', 'Terrestrial', '142 million miles', 'Description for Mars');
INSERT INTO public.planet VALUES (5, 'Jupiter', 2, false, false, '4.5', 'Gas Giant', '484 million miles', 'Description for Jupiter');
INSERT INTO public.planet VALUES (6, 'Saturn', 3, false, false, '4.5', 'Gas Giant', '886 million miles', 'Description for Saturn');
INSERT INTO public.planet VALUES (7, 'Uranus', 4, false, false, '4.5', 'Ice Giant', '1.784 billion miles', 'Description for Uranus');
INSERT INTO public.planet VALUES (8, 'Neptune', 4, false, false, '4.5', 'Ice Giant', '2.795 billion miles', 'Description for Neptune');
INSERT INTO public.planet VALUES (9, 'Pluto', 5, true, false, '4.6', 'Dwarf', '3.67 billion miles', 'Description for Pluto');
INSERT INTO public.planet VALUES (10, 'Proxima Centauri b', 6, true, false, 'Unknown', 'Exoplanet', '25 trillion miles', 'Description for Proxima Centauri b');
INSERT INTO public.planet VALUES (11, 'Kepler-452b', 6, true, false, 'Unknown', 'Exoplanet', '1,400 light-years', 'Description for Kepler-452b');
INSERT INTO public.planet VALUES (13, 'Makemake', 5, true, false, '4.6', 'Dwarf', '4.67 billion miles', 'Description for Makemake');


--
-- Data for Name: satellite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.satellite VALUES (1, 'Satellite A', '500 miles', 3, 'Communication');
INSERT INTO public.satellite VALUES (2, 'Satellite B', '1,200 miles', 1, 'Weather');
INSERT INTO public.satellite VALUES (3, 'Satellite C', '22,000 miles', 2, 'Navigation');
INSERT INTO public.satellite VALUES (4, 'Satellite D', '400 miles', 4, 'Observation');
INSERT INTO public.satellite VALUES (5, 'Satellite E', '8,000 miles', 1, 'Research');
INSERT INTO public.satellite VALUES (6, 'Satellite F', '36,000 miles', 3, 'Communication');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Star A', 1, '10', '100 light-years', 'Description for Star A');
INSERT INTO public.star VALUES (2, 'Star B', 2, '20', '200 light-years', 'Description for Star B');
INSERT INTO public.star VALUES (3, 'Star C', 3, '30', '300 light-years', 'Description for Star C');
INSERT INTO public.star VALUES (4, 'Star D', 4, '40', '400 light-years', 'Description for Star D');
INSERT INTO public.star VALUES (5, 'Star E', 5, '50', '500 light-years', 'Description for Star E');
INSERT INTO public.star VALUES (6, 'Star F', 6, '60', '600 light-years', 'Description for Star F');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.satellite_satellite_id_seq', 6, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: satellite satellite_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_pkey PRIMARY KEY (satellite_id);


--
-- Name: satellite special_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT special_name UNIQUE (name);


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
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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


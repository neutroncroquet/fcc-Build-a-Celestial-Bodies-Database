--
-- PostgreSQL database dump
--

-- Dumped from database version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)

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
-- Name: compound; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.compound (
    moon_id integer,
    planet_id integer,
    star_id integer,
    galaxy_id integer,
    name character varying(30) NOT NULL,
    compound_id integer NOT NULL
);


ALTER TABLE public.compound OWNER TO freecodecamp;

--
-- Name: compound_compound_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.compound_compound_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.compound_compound_id_seq OWNER TO freecodecamp;

--
-- Name: compound_compound_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.compound_compound_id_seq OWNED BY public.compound.compound_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_type character varying(30),
    galaxy_id integer NOT NULL,
    age_in_millions_of_years numeric,
    name character varying(30) NOT NULL,
    diameter_in_kpc integer
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
    name character varying(30) NOT NULL,
    is_spherical boolean,
    has_life boolean,
    moon_id integer NOT NULL,
    planet_id integer
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
    description text,
    is_spherical boolean,
    has_life boolean,
    distance_from_star_in_au numeric NOT NULL,
    star_id integer,
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    known_satellites integer
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
    age_in_millions_of_years numeric,
    distance_from_earth numeric,
    galaxy_id integer,
    name character varying(30) NOT NULL,
    star_id integer NOT NULL
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
-- Name: compound compound_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.compound ALTER COLUMN compound_id SET DEFAULT nextval('public.compound_compound_id_seq'::regclass);


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
-- Data for Name: compound; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.compound VALUES (NULL, NULL, NULL, 1, 'Milky Way', 1);
INSERT INTO public.compound VALUES (NULL, NULL, NULL, 2, 'Andromeda Galaxy', 2);
INSERT INTO public.compound VALUES (NULL, NULL, NULL, 3, 'Pinwheel Galaxy', 3);
INSERT INTO public.compound VALUES (NULL, NULL, NULL, 4, 'Condor Galaxy', 4);
INSERT INTO public.compound VALUES (NULL, NULL, NULL, 5, 'Whirlpool Galaxy', 5);
INSERT INTO public.compound VALUES (NULL, NULL, NULL, 6, 'Antennae Galaxies', 6);
INSERT INTO public.compound VALUES (NULL, NULL, 1, 1, 'Sun', 7);
INSERT INTO public.compound VALUES (NULL, NULL, 2, 1, 'Proxima Centauri', 8);
INSERT INTO public.compound VALUES (NULL, NULL, 3, 1, 'Epsilon Eridani', 9);
INSERT INTO public.compound VALUES (NULL, NULL, 4, 1, 'Tau Ceti', 10);
INSERT INTO public.compound VALUES (NULL, NULL, 5, 1, '82 G. Eridani', 11);
INSERT INTO public.compound VALUES (NULL, NULL, 6, 1, 'Delta Pavonis', 12);
INSERT INTO public.compound VALUES (NULL, 1, 1, 1, 'Mercury', 13);
INSERT INTO public.compound VALUES (NULL, 2, 1, 1, 'Venus', 14);
INSERT INTO public.compound VALUES (NULL, 4, 1, 1, 'Mars', 15);
INSERT INTO public.compound VALUES (NULL, 5, 1, 1, 'Jupiter', 16);
INSERT INTO public.compound VALUES (NULL, 6, 1, 1, 'Saturn', 17);
INSERT INTO public.compound VALUES (NULL, 7, 1, 1, 'Uranus', 18);
INSERT INTO public.compound VALUES (NULL, 8, 1, 1, 'Neptune', 19);
INSERT INTO public.compound VALUES (NULL, 9, 2, 1, 'Proxima Centauri b', 20);
INSERT INTO public.compound VALUES (NULL, 10, 2, 1, 'Proxima Centarui d', 21);
INSERT INTO public.compound VALUES (NULL, 11, 3, 1, 'Epsilon Eridani b', 22);
INSERT INTO public.compound VALUES (NULL, 12, 4, 1, 'Tau Ceti f', 23);
INSERT INTO public.compound VALUES (NULL, 3, 1, 1, 'Earth', 24);
INSERT INTO public.compound VALUES (1, 3, 1, 1, 'Moon', 25);
INSERT INTO public.compound VALUES (2, 4, 1, 1, 'Phobos', 26);
INSERT INTO public.compound VALUES (3, 4, 1, 1, 'Deimos', 27);
INSERT INTO public.compound VALUES (4, 5, 1, 1, 'Io', 28);
INSERT INTO public.compound VALUES (5, 5, 1, 1, 'Europa', 29);
INSERT INTO public.compound VALUES (6, 5, 1, 1, 'Ganymede', 30);
INSERT INTO public.compound VALUES (7, 5, 1, 1, 'Callisto', 31);
INSERT INTO public.compound VALUES (8, 5, 1, 1, 'Metis', 32);
INSERT INTO public.compound VALUES (9, 5, 1, 1, 'Amalthea', 33);
INSERT INTO public.compound VALUES (10, 6, 1, 1, 'Mimas', 34);
INSERT INTO public.compound VALUES (11, 6, 1, 1, 'Enceladus', 35);
INSERT INTO public.compound VALUES (12, 6, 1, 1, 'Tethys', 36);
INSERT INTO public.compound VALUES (13, 6, 1, 1, 'Dione', 37);
INSERT INTO public.compound VALUES (14, 6, 1, 1, 'Rhea', 38);
INSERT INTO public.compound VALUES (15, 6, 1, 1, 'Titan', 39);
INSERT INTO public.compound VALUES (16, 6, 1, 1, 'Iapetus', 40);
INSERT INTO public.compound VALUES (17, 6, 1, 1, 'Hyperion', 41);
INSERT INTO public.compound VALUES (18, 7, 1, 1, 'Miranda', 42);
INSERT INTO public.compound VALUES (19, 7, 1, 1, 'Ariel', 43);
INSERT INTO public.compound VALUES (20, 7, 1, 1, 'Umbriel', 44);
INSERT INTO public.compound VALUES (21, 7, 1, 1, 'Titania', 45);
INSERT INTO public.compound VALUES (22, 7, 1, 1, 'Oberon', 46);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('SBbc', 1, 12600, 'Milky Way', 27);
INSERT INTO public.galaxy VALUES ('SA(s)b', 2, NULL, 'Andromeda Galaxy', 47);
INSERT INTO public.galaxy VALUES ('SAB(rs)cd', 3, NULL, 'Pinwheel Galaxy', 52);
INSERT INTO public.galaxy VALUES ('SB(s)b pec', 4, NULL, 'Condor Galaxy', 220);
INSERT INTO public.galaxy VALUES ('SA(s)bc pec', 5, NULL, 'Whirlpool Galaxy', 26);
INSERT INTO public.galaxy VALUES ('SB(s)m pec / SA(s)m pec', 6, NULL, 'Antennae Galaxies', 150);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Moon', true, false, 1, 3);
INSERT INTO public.moon VALUES ('Phobos', false, false, 2, 4);
INSERT INTO public.moon VALUES ('Deimos', false, false, 3, 4);
INSERT INTO public.moon VALUES ('Io', true, false, 4, 5);
INSERT INTO public.moon VALUES ('Europa', true, false, 5, 5);
INSERT INTO public.moon VALUES ('Ganymede', true, false, 6, 5);
INSERT INTO public.moon VALUES ('Callisto', true, false, 7, 5);
INSERT INTO public.moon VALUES ('Metis', false, false, 8, 5);
INSERT INTO public.moon VALUES ('Amalthea', false, false, 9, 5);
INSERT INTO public.moon VALUES ('Mimas', true, false, 10, 6);
INSERT INTO public.moon VALUES ('Enceladus', true, false, 11, 6);
INSERT INTO public.moon VALUES ('Tethys', true, false, 12, 6);
INSERT INTO public.moon VALUES ('Dione', true, false, 13, 6);
INSERT INTO public.moon VALUES ('Rhea', true, false, 14, 6);
INSERT INTO public.moon VALUES ('Titan', true, false, 15, 6);
INSERT INTO public.moon VALUES ('Iapetus', true, false, 16, 6);
INSERT INTO public.moon VALUES ('Hyperion', false, false, 17, 6);
INSERT INTO public.moon VALUES ('Miranda', true, false, 18, 7);
INSERT INTO public.moon VALUES ('Ariel', true, false, 19, 7);
INSERT INTO public.moon VALUES ('Umbriel', true, false, 20, 7);
INSERT INTO public.moon VALUES ('Titania', true, false, 21, 7);
INSERT INTO public.moon VALUES ('Oberon', true, false, 22, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Small very hot, no significant atmosphere', true, false, 0.000001876702, 1, 1, 'Mercury', 0);
INSERT INTO public.planet VALUES ('Very hot, rains sulfuric acid', true, false, 0.723332, 1, 2, 'Venus', 0);
INSERT INTO public.planet VALUES ('The Red Planet', true, false, 1.52368, 1, 4, 'Mars', 2);
INSERT INTO public.planet VALUES ('Gas giant', true, false, 5.2038, 1, 5, 'Jupiter', 95);
INSERT INTO public.planet VALUES ('Gas giant with ring', false, false, 9.5826, 1, 6, 'Saturn', 146);
INSERT INTO public.planet VALUES ('Ice giant', true, false, 19.19126, 1, 7, 'Uranus', 27);
INSERT INTO public.planet VALUES ('Has a trident', true, false, 30.07, 1, 8, 'Neptune', 14);
INSERT INTO public.planet VALUES ('Potenially Earth-like', true, false, 0.04856, 2, 9, 'Proxima Centauri b', NULL);
INSERT INTO public.planet VALUES (NULL, true, false, 0.02885, 2, 10, 'Proxima Centarui d', NULL);
INSERT INTO public.planet VALUES ('Maybe a gas giant', NULL, false, 3.52, 3, 11, 'Epsilon Eridani b', NULL);
INSERT INTO public.planet VALUES ('Potentially habitable', true, false, 1.334, 4, 12, 'Tau Ceti f', NULL);
INSERT INTO public.planet VALUES ('Our home', true, true, 1, 1, 3, 'Earth', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (4600, 0.0000048481, 1, 'Sun', 1);
INSERT INTO public.star VALUES (4850, 1.3020, 1, 'Proxima Centauri', 2);
INSERT INTO public.star VALUES (500, 3.2, 1, 'Epsilon Eridani', 3);
INSERT INTO public.star VALUES (9000, 3.7, 1, 'Tau Ceti', 4);
INSERT INTO public.star VALUES (9000, 6, 1, '82 G. Eridani', 5);
INSERT INTO public.star VALUES (6800, 6.1, 1, 'Delta Pavonis', 6);


--
-- Name: compound_compound_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.compound_compound_id_seq', 46, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: compound compound_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.compound
    ADD CONSTRAINT compound_name_key UNIQUE (name);


--
-- Name: compound compound_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.compound
    ADD CONSTRAINT compound_pkey PRIMARY KEY (compound_id);


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
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: compound fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.compound
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id) ON UPDATE CASCADE;


--
-- Name: compound fk_moon_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.compound
    ADD CONSTRAINT fk_moon_id FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id) ON UPDATE CASCADE;


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: compound fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.compound
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id) ON UPDATE CASCADE;


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: compound fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.compound
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id) ON UPDATE CASCADE;


--
-- PostgreSQL database dump complete
--


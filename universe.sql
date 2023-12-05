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
    name character varying(30) NOT NULL,
    galaxy_type character varying(30),
    age_in_millions_of_years numeric,
    diameter_in_kpc integer,
    galaxy_id integer NOT NULL
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
    radius_in_km numeric,
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
    name character varying(30) NOT NULL,
    description text,
    is_spherical boolean,
    has_life boolean,
    distance_from_star_in_au numeric NOT NULL,
    known_satellites integer,
    planet_id integer NOT NULL,
    star_id integer
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
    distance_from_earth numeric,
    age_in_millions_of_years numeric,
    galaxy_id integer,
    star_id integer NOT NULL,
    name character varying(30) NOT NULL
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

INSERT INTO public.galaxy VALUES ('Milky Way', 'SBbc', 12600, 27, 1);
INSERT INTO public.galaxy VALUES ('Andromeda Galaxy', 'SA(s)b', NULL, 47, 2);
INSERT INTO public.galaxy VALUES ('Pinwheel Galaxy', 'SAB(rs)cd', NULL, 52, 3);
INSERT INTO public.galaxy VALUES ('Condor Galaxy', 'SB(s)b pec', NULL, 220, 4);
INSERT INTO public.galaxy VALUES ('Whirlpool Galaxy', 'SA(s)bc pec', NULL, 26, 5);
INSERT INTO public.galaxy VALUES ('Antennae Galaxies', 'SB(s)m pec / SA(s)m pec', NULL, 150, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Moon', true, 1738, 1, 3);
INSERT INTO public.moon VALUES ('Phobos', false, 11267, 2, 4);
INSERT INTO public.moon VALUES ('Deimos', false, 6.27, 3, 4);
INSERT INTO public.moon VALUES ('Io', true, 1821.6, 4, 5);
INSERT INTO public.moon VALUES ('Europa', true, 1560.8, 5, 5);
INSERT INTO public.moon VALUES ('Ganymede', true, 2634.1, 6, 5);
INSERT INTO public.moon VALUES ('Callisto', true, 2410.3, 7, 5);
INSERT INTO public.moon VALUES ('Metis', false, 21.5, 8, 5);
INSERT INTO public.moon VALUES ('Amalthea', false, 83.5, 9, 5);
INSERT INTO public.moon VALUES ('Mimas', true, 198.2, 10, 6);
INSERT INTO public.moon VALUES ('Enceladus', true, 252.1, 11, 6);
INSERT INTO public.moon VALUES ('Tethys', true, 533.1, 12, 6);
INSERT INTO public.moon VALUES ('Dione', true, 561.4, 13, 6);
INSERT INTO public.moon VALUES ('Rhea', true, 763.8, 14, 6);
INSERT INTO public.moon VALUES ('Titan', true, 2574.73, 15, 6);
INSERT INTO public.moon VALUES ('Iapetus', true, 735.6, 16, 6);
INSERT INTO public.moon VALUES ('Hyperion', false, 135, 17, 6);
INSERT INTO public.moon VALUES ('Miranda', true, 235.8, 18, 7);
INSERT INTO public.moon VALUES ('Ariel', true, 578.9, 19, 7);
INSERT INTO public.moon VALUES ('Umbriel', true, 584.7, 20, 7);
INSERT INTO public.moon VALUES ('Titania', true, 788.9, 21, 7);
INSERT INTO public.moon VALUES ('Oberon', true, 761.4, 22, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Mercury', 'Small very hot, no significant atmosphere', true, false, 0.000001876702, 0, 1, 1);
INSERT INTO public.planet VALUES ('Venus', 'Very hot, rains sulfuric acid', true, false, 0.723332, 0, 2, 1);
INSERT INTO public.planet VALUES ('Mars', 'The Red Planet', true, false, 1.52368, 2, 4, 1);
INSERT INTO public.planet VALUES ('Jupiter', 'Gas giant', true, false, 5.2038, 95, 5, 1);
INSERT INTO public.planet VALUES ('Saturn', 'Gas giant with ring', false, false, 9.5826, 146, 6, 1);
INSERT INTO public.planet VALUES ('Uranus', 'Ice giant', true, false, 19.19126, 27, 7, 1);
INSERT INTO public.planet VALUES ('Neptune', 'Has a trident', true, false, 30.07, 14, 8, 1);
INSERT INTO public.planet VALUES ('Proxima Centauri b', 'Potenially Earth-like', true, false, 0.04856, NULL, 9, 2);
INSERT INTO public.planet VALUES ('Proxima Centarui d', NULL, true, false, 0.02885, NULL, 10, 2);
INSERT INTO public.planet VALUES ('Epsilon Eridani b', 'Maybe a gas giant', NULL, false, 3.52, NULL, 11, 3);
INSERT INTO public.planet VALUES ('Tau Ceti f', 'Potentially habitable', true, false, 1.334, NULL, 12, 4);
INSERT INTO public.planet VALUES ('Earth', 'Our home', true, true, 1, 1, 3, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (0.0000048481, 4600, 1, 1, 'Sun');
INSERT INTO public.star VALUES (1.3020, 4850, 1, 2, 'Proxima Centauri');
INSERT INTO public.star VALUES (3.2, 500, 1, 3, 'Epsilon Eridani');
INSERT INTO public.star VALUES (3.7, 9000, 1, 4, 'Tau Ceti');
INSERT INTO public.star VALUES (6, 9000, 1, 5, '82 G. Eridani');
INSERT INTO public.star VALUES (6.1, 6800, 1, 6, 'Delta Pavonis');


--
-- Name: compound_compound_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.compound_compound_id_seq', 46, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


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
-- Name: compound fk_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.compound
    ADD CONSTRAINT fk_moon FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: compound fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.compound
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: compound fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.compound
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: compound galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.compound
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


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
-- Name: extra_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.extra_info (
    extra_info_id integer NOT NULL,
    name character varying(40),
    referencing character varying(30) NOT NULL,
    info character varying(30) NOT NULL
);


ALTER TABLE public.extra_info OWNER TO freecodecamp;

--
-- Name: extra_info_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.extra_info_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.extra_info_info_id_seq OWNER TO freecodecamp;

--
-- Name: extra_info_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.extra_info_info_id_seq OWNED BY public.extra_info.extra_info_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    age integer NOT NULL,
    type character varying(30) NOT NULL,
    number_of_stars integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    size_m3 integer,
    temperature_celsius integer NOT NULL,
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
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    size_m3 integer,
    can_sustain_life boolean,
    temperature_celsius numeric,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_red_giant boolean NOT NULL,
    description text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: extra_info extra_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra_info ALTER COLUMN extra_info_id SET DEFAULT nextval('public.extra_info_info_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: extra_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.extra_info VALUES (1, 'earth info', 'earth', 'pop = 10 billion by 2100');
INSERT INTO public.extra_info VALUES (2, 'luna info', 'luna', 'first arrived in 1969');
INSERT INTO public.extra_info VALUES (3, 'jupiter info', 'jupiter', 'takes most meteor strikes');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky way', 500000, 'nebula', 40549002);
INSERT INTO public.galaxy VALUES (2, 'andromeda', 53144450, 'gaseous', 51550180);
INSERT INTO public.galaxy VALUES (3, 'pinwheel', 56000000, 'nebula', 30481003);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 50301900, 'nebula', 4981900);
INSERT INTO public.galaxy VALUES (5, 'triangulum', 4151000, 'nebula', 30481003);
INSERT INTO public.galaxy VALUES (6, 'Cigar', 14301900, 'nebula', 4981900);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 34000, 0, 1);
INSERT INTO public.moon VALUES (2, 'Europa', 4000, -20, 3);
INSERT INTO public.moon VALUES (3, 'Io', 300, 10, 3);
INSERT INTO public.moon VALUES (4, 'Ganymede', 2300, 45, 3);
INSERT INTO public.moon VALUES (5, 'Callisto', 340, -45, 3);
INSERT INTO public.moon VALUES (6, 'Kallich', 541, 20, 3);
INSERT INTO public.moon VALUES (7, 'Titan', 1030, -46, 4);
INSERT INTO public.moon VALUES (8, 'Mimas', 301, 20, 4);
INSERT INTO public.moon VALUES (9, 'Dione', 130, 10, 4);
INSERT INTO public.moon VALUES (10, 'Enceladus', 304, 76, 4);
INSERT INTO public.moon VALUES (11, 'Tethys', 203, 67, 4);
INSERT INTO public.moon VALUES (12, 'Hyperion', 302, 12, 4);
INSERT INTO public.moon VALUES (13, 'Triton', 1002, -49, 7);
INSERT INTO public.moon VALUES (14, 'Hippocamp', 405, -40, 7);
INSERT INTO public.moon VALUES (15, 'Phobos', 312, -53, 2);
INSERT INTO public.moon VALUES (16, 'Surtur', 103, -21, 5);
INSERT INTO public.moon VALUES (17, 'Jupiter LXI', 400, 12, 3);
INSERT INTO public.moon VALUES (18, 'Amalthea', 132, 54, 3);
INSERT INTO public.moon VALUES (19, 'Harpalyke', 315, 12, 3);
INSERT INTO public.moon VALUES (20, 'Autonoe', 123, 94, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 4500000, true, 20, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 350000, false, 5, 1);
INSERT INTO public.planet VALUES (3, 'Jupiter', 30000040, false, -50, 1);
INSERT INTO public.planet VALUES (4, 'Saturn', 405000, false, -20, 1);
INSERT INTO public.planet VALUES (5, 'Venus', 5000303, false, 40, 1);
INSERT INTO public.planet VALUES (6, 'Mercury', 500000, false, 200, 1);
INSERT INTO public.planet VALUES (7, 'Neptune', 20000, false, 300, 1);
INSERT INTO public.planet VALUES (8, 'Pluto', 30000, false, -30, 1);
INSERT INTO public.planet VALUES (9, 'Ceres', 587, false, -20, 1);
INSERT INTO public.planet VALUES (10, 'Kepler-10b', 5000, false, 20, 1);
INSERT INTO public.planet VALUES (11, 'makemake', 34000, false, 50, 1);
INSERT INTO public.planet VALUES (12, 'Haumea', 20000, false, 12, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'The Sun', false, 'Our sun for earth', 1);
INSERT INTO public.star VALUES (2, 'Sirius', false, 'Big star in milky way', 1);
INSERT INTO public.star VALUES (3, 'Antares', true, 'red giant in milky way', 1);
INSERT INTO public.star VALUES (4, 'Alpha Andromadea', false, 'primary star of andromeda', 2);
INSERT INTO public.star VALUES (5, 'Beta Andromadea', false, 'secondary star in andromeda', 2);
INSERT INTO public.star VALUES (6, 'Vega', false, 'small star in milky way', 1);


--
-- Name: extra_info_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.extra_info_info_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: extra_info extra_info_info_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra_info
    ADD CONSTRAINT extra_info_info_key UNIQUE (info);


--
-- Name: extra_info extra_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra_info
    ADD CONSTRAINT extra_info_pkey PRIMARY KEY (extra_info_id);


--
-- Name: extra_info extra_info_referencing_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra_info
    ADD CONSTRAINT extra_info_referencing_key UNIQUE (referencing);


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
-- Name: star galaxyfk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxyfk FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planetfk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planetfk FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet starfk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT starfk FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--


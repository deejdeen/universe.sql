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
-- Name: aeroplanes; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.aeroplanes (
    aeroplanes_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size integer
);


ALTER TABLE public.aeroplanes OWNER TO freecodecamp;

--
-- Name: aeroplanes_aeroplanes_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.aeroplanes_aeroplanes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.aeroplanes_aeroplanes_id_seq OWNER TO freecodecamp;

--
-- Name: aeroplanes_aeroplanes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.aeroplanes_aeroplanes_id_seq OWNED BY public.aeroplanes.aeroplanes_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    galaxy_types text,
    description text,
    constellation character varying(30) NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    equatorial_radius numeric(3,1),
    planet_id integer,
    year_of_discovery integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    has_life boolean,
    has_rings boolean NOT NULL,
    age_in_millions_of_years integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    spectral_type character varying(30),
    galaxy_id integer,
    description text NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: aeroplanes aeroplanes_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.aeroplanes ALTER COLUMN aeroplanes_id SET DEFAULT nextval('public.aeroplanes_aeroplanes_id_seq'::regclass);


--
-- Data for Name: aeroplanes; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.aeroplanes VALUES (1, 'Propeller planes', NULL);
INSERT INTO public.aeroplanes VALUES (2, 'Commercial planes', NULL);
INSERT INTO public.aeroplanes VALUES (3, 'Private jets', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', NULL, 'sagittarius');
INSERT INTO public.galaxy VALUES (2, 'Butterfly Galaxies', 'Spiral', NULL, 'virgo');
INSERT INTO public.galaxy VALUES (3, 'Antennae Galaxies', 'Elliptical', NULL, 'Corvus');
INSERT INTO public.galaxy VALUES (4, 'Circinus Galaxy', 'Spiral', NULL, 'Circinus');
INSERT INTO public.galaxy VALUES (5, 'Andromeda Galaxy', 'Spiral', NULL, 'Andromeda');
INSERT INTO public.galaxy VALUES (6, 'Backward Galaxy', 'Spiral', NULL, 'Centaurus');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Io', NULL, 1, 1610);
INSERT INTO public.moon VALUES (2, 'Phobos', NULL, 2, 1877);
INSERT INTO public.moon VALUES (3, 'Deimos', NULL, 3, 1877);
INSERT INTO public.moon VALUES (4, 'Europa', NULL, 4, 1610);
INSERT INTO public.moon VALUES (5, 'Ganymede', NULL, 5, 1610);
INSERT INTO public.moon VALUES (6, 'Callisto', NULL, 6, 1610);
INSERT INTO public.moon VALUES (7, 'Titan', NULL, 7, 1655);
INSERT INTO public.moon VALUES (8, 'Encaladus', NULL, 8, 1789);
INSERT INTO public.moon VALUES (9, 'Ariel', NULL, 9, 1851);
INSERT INTO public.moon VALUES (10, 'Belinda', NULL, 10, 1986);
INSERT INTO public.moon VALUES (11, 'Caliban', NULL, 11, 1987);
INSERT INTO public.moon VALUES (12, 'Cupid', NULL, 12, 2003);
INSERT INTO public.moon VALUES (13, 'Ferdinand', NULL, 1, 2001);
INSERT INTO public.moon VALUES (14, 'Miranda', NULL, 2, 1948);
INSERT INTO public.moon VALUES (15, 'Puck', NULL, 3, 1985);
INSERT INTO public.moon VALUES (16, 'Titania', NULL, 4, 1787);
INSERT INTO public.moon VALUES (17, 'Rosalind', NULL, 5, 1986);
INSERT INTO public.moon VALUES (18, 'Despina', NULL, 6, 1989);
INSERT INTO public.moon VALUES (19, 'Neso', NULL, 7, 2002);
INSERT INTO public.moon VALUES (20, 'Sao', NULL, 8, 2002);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'mercury', false, false, NULL, 1);
INSERT INTO public.planet VALUES (2, 'venus', false, false, NULL, 2);
INSERT INTO public.planet VALUES (3, 'earth', true, false, NULL, 3);
INSERT INTO public.planet VALUES (4, 'mars', false, false, NULL, 4);
INSERT INTO public.planet VALUES (5, 'jupiter', false, true, NULL, 5);
INSERT INTO public.planet VALUES (6, 'saturn', false, true, NULL, 6);
INSERT INTO public.planet VALUES (7, 'uranus', false, true, NULL, 1);
INSERT INTO public.planet VALUES (8, 'neptune', false, true, NULL, 2);
INSERT INTO public.planet VALUES (9, 'pluto', false, false, NULL, 3);
INSERT INTO public.planet VALUES (10, 'ceres', false, false, NULL, 4);
INSERT INTO public.planet VALUES (11, 'haumea', false, true, NULL, 5);
INSERT INTO public.planet VALUES (12, 'eris', false, false, NULL, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--
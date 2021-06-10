--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2 (Ubuntu 13.2-1.pgdg20.04+1)
-- Dumped by pg_dump version 13.2 (Ubuntu 13.2-1.pgdg20.04+1)

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
-- Name: BOOKS; Type: TABLE; Schema: public; Owner: rbquixotic
--

CREATE TABLE public."BOOKS" (
    "Book_ID" integer NOT NULL,
    "Title" character varying(100),
    "Author" character varying(100),
    "Description" text,
    "Rating" integer
);


ALTER TABLE public."BOOKS" OWNER TO rbquixotic;

--
-- Name: BOOKS_Book_ID_seq; Type: SEQUENCE; Schema: public; Owner: rbquixotic
--

CREATE SEQUENCE public."BOOKS_Book_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."BOOKS_Book_ID_seq" OWNER TO rbquixotic;

--
-- Name: BOOKS_Book_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rbquixotic
--

ALTER SEQUENCE public."BOOKS_Book_ID_seq" OWNED BY public."BOOKS"."Book_ID";


--
-- Name: Books; Type: TABLE; Schema: public; Owner: rbquixotic
--

CREATE TABLE public."Books" (
    "Book_ID" integer NOT NULL,
    "Title" character varying(100),
    "Author" character varying(100),
    "Description" text,
    "Rating" integer
);


ALTER TABLE public."Books" OWNER TO rbquixotic;

--
-- Name: Books_Book_ID_seq; Type: SEQUENCE; Schema: public; Owner: rbquixotic
--

CREATE SEQUENCE public."Books_Book_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Books_Book_ID_seq" OWNER TO rbquixotic;

--
-- Name: Books_Book_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rbquixotic
--

ALTER SEQUENCE public."Books_Book_ID_seq" OWNED BY public."Books"."Book_ID";


--
-- Name: CUSTOMERS; Type: TABLE; Schema: public; Owner: rbquixotic
--

CREATE TABLE public."CUSTOMERS" (
    "Person_ID" integer NOT NULL,
    "First_Name" character varying(100),
    "Last_Name" character varying(100),
    "Address" text,
    "City" character varying(100),
    "Country" character varying(100)
);


ALTER TABLE public."CUSTOMERS" OWNER TO rbquixotic;

--
-- Name: CUSTOMERS_Person_ID_seq; Type: SEQUENCE; Schema: public; Owner: rbquixotic
--

CREATE SEQUENCE public."CUSTOMERS_Person_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."CUSTOMERS_Person_ID_seq" OWNER TO rbquixotic;

--
-- Name: CUSTOMERS_Person_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rbquixotic
--

ALTER SEQUENCE public."CUSTOMERS_Person_ID_seq" OWNED BY public."CUSTOMERS"."Person_ID";


--
-- Name: books; Type: TABLE; Schema: public; Owner: rbquixotic
--

CREATE TABLE public.books (
    "Book_ID" integer NOT NULL,
    "Title" character varying(100),
    "Author" character varying(100),
    "Description" character varying,
    "Rating" integer
);


ALTER TABLE public.books OWNER TO rbquixotic;

--
-- Name: books_Book_ID_seq; Type: SEQUENCE; Schema: public; Owner: rbquixotic
--

CREATE SEQUENCE public."books_Book_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."books_Book_ID_seq" OWNER TO rbquixotic;

--
-- Name: books_Book_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rbquixotic
--

ALTER SEQUENCE public."books_Book_ID_seq" OWNED BY public.books."Book_ID";


--
-- Name: BOOKS Book_ID; Type: DEFAULT; Schema: public; Owner: rbquixotic
--

ALTER TABLE ONLY public."BOOKS" ALTER COLUMN "Book_ID" SET DEFAULT nextval('public."BOOKS_Book_ID_seq"'::regclass);


--
-- Name: Books Book_ID; Type: DEFAULT; Schema: public; Owner: rbquixotic
--

ALTER TABLE ONLY public."Books" ALTER COLUMN "Book_ID" SET DEFAULT nextval('public."Books_Book_ID_seq"'::regclass);


--
-- Name: CUSTOMERS Person_ID; Type: DEFAULT; Schema: public; Owner: rbquixotic
--

ALTER TABLE ONLY public."CUSTOMERS" ALTER COLUMN "Person_ID" SET DEFAULT nextval('public."CUSTOMERS_Person_ID_seq"'::regclass);


--
-- Name: books Book_ID; Type: DEFAULT; Schema: public; Owner: rbquixotic
--

ALTER TABLE ONLY public.books ALTER COLUMN "Book_ID" SET DEFAULT nextval('public."books_Book_ID_seq"'::regclass);


--
-- Data for Name: BOOKS; Type: TABLE DATA; Schema: public; Owner: rbquixotic
--

COPY public."BOOKS" ("Book_ID", "Title", "Author", "Description", "Rating") FROM stdin;
\.


--
-- Data for Name: Books; Type: TABLE DATA; Schema: public; Owner: rbquixotic
--

COPY public."Books" ("Book_ID", "Title", "Author", "Description", "Rating") FROM stdin;
\.


--
-- Data for Name: CUSTOMERS; Type: TABLE DATA; Schema: public; Owner: rbquixotic
--

COPY public."CUSTOMERS" ("Person_ID", "First_Name", "Last_Name", "Address", "City", "Country") FROM stdin;
\.


--
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: rbquixotic
--

COPY public.books ("Book_ID", "Title", "Author", "Description", "Rating") FROM stdin;
1	To Kill a Mockingbird	Harper Lee	Published in 1960, this timeless classic explores human behaviour and the collective conscience of The Deep South in the early 20th century. Humour entwines the delicate strands of prejudice, hatred, hypocrisy, love and innocence to create one of the best novels ever written.	9
2	1984	George Orwell	Although 1984 has passed us by, George Orwell’s dystopian, totalitarian world of control, fear and lies has never been more relevant. Delve into the life of Winston Smith as he struggles with his developing human nature in a world where individuality, freewill and love are forbidden.	9
3	Harry Potter and the Philosopher’s Stone	J.K. Rowling	I’m willing to bet you’ve heard of Harry Potter, but have you read the books? Join Harry Potter as he begins his journey into the world of magic, where he is the celebrated Boy Who Lived. Visit Hogwarts, meet your favourite characters and watch Harry grow into the one of the most famous literary characters in the world.	10
4	The Lord of the Rings	J.R.R. Tolkien	Middle Earth is a wonderful, expansive fantasy world filled with turmoil, heroes, evil and innocence. Although our protagonist Frodo Baggins’ quest seems impossible to complete, this trilogy is a tale of triumph in the most impossible circumstances.	10
5	The Great Gatsby	F. Scott Fitzgerald	Published in 1925, Fitzgerald’s The Great Gatsby explores the decadence of the Jazz Age, and one man’s introduction into a world where even those with the most indulgent lives cannot earn love.	8
6	Pride and Prejudice	Jane Austen	One of the most famous novels of all time, Pride And Prejudice details the courtship of two opposed characters in a world where manners and courtesy are of the utmost importance.	8
7	The Diary Of A Young Girl	Anne Frank	Unforgettable and deeply influential, Anne Frank’s diary is a raw account of a young girl’s life as she hides from the Nazis. Despite her circumstances, Anne believes that people are still good at heart and that the world is full of beauty: she will change your life.	6
8	The Book Thief	Markus Zusak	Set in Germany during 1939, The Book Thief follows Liesel as she rescues books from the tyranny of Nazi rule. Meanwhile, her family has hidden a Jewish fighter in their basement and death looks down on the family, narrating our tale. Experience bravery that is rarely found in the world, and friendship that is formed in the most unlikely of situations.	7
9	The Hobbit	J.R.R. Tolkien	Although the movies are inexplicably long, The Hobbit was originally written as a short children’s book. Meet your favourite characters for the first time as the unforgettable Bilbo Baggins traverses the harsh landscapes of Middle Earth to challenge a dragon.	8
10	Little Women	Louisa May Alcott	Join four sisters, each with their own prominent personality, as they come of age in charming 19th Century New England. Experience their struggles and revel in their flaws, as these girls become strong women.	8
11	Test Book	R B	JUST TESTING	1
\.


--
-- Name: BOOKS_Book_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: rbquixotic
--

SELECT pg_catalog.setval('public."BOOKS_Book_ID_seq"', 1, false);


--
-- Name: Books_Book_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: rbquixotic
--

SELECT pg_catalog.setval('public."Books_Book_ID_seq"', 1, false);


--
-- Name: CUSTOMERS_Person_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: rbquixotic
--

SELECT pg_catalog.setval('public."CUSTOMERS_Person_ID_seq"', 1, false);


--
-- Name: books_Book_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: rbquixotic
--

SELECT pg_catalog.setval('public."books_Book_ID_seq"', 1, false);


--
-- Name: BOOKS BOOKS_pkey; Type: CONSTRAINT; Schema: public; Owner: rbquixotic
--

ALTER TABLE ONLY public."BOOKS"
    ADD CONSTRAINT "BOOKS_pkey" PRIMARY KEY ("Book_ID");


--
-- Name: Books Books_pkey; Type: CONSTRAINT; Schema: public; Owner: rbquixotic
--

ALTER TABLE ONLY public."Books"
    ADD CONSTRAINT "Books_pkey" PRIMARY KEY ("Book_ID");


--
-- Name: CUSTOMERS CUSTOMERS_pkey; Type: CONSTRAINT; Schema: public; Owner: rbquixotic
--

ALTER TABLE ONLY public."CUSTOMERS"
    ADD CONSTRAINT "CUSTOMERS_pkey" PRIMARY KEY ("Person_ID");


--
-- Name: books books_pkey; Type: CONSTRAINT; Schema: public; Owner: rbquixotic
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY ("Book_ID");


--
-- PostgreSQL database dump complete
--


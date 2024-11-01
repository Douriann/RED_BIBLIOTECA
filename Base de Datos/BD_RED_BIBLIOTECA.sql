PGDMP  :    '             	    |            BD_RED_BIBLIOTECA    17.0    17.0 �    e           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            f           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            g           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            h           1262    25149    BD_RED_BIBLIOTECA    DATABASE     �   CREATE DATABASE "BD_RED_BIBLIOTECA" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Venezuela.1252';
 #   DROP DATABASE "BD_RED_BIBLIOTECA";
                     postgres    false            �            1259    25151 
   Biblioteca    TABLE     �   CREATE TABLE public."Biblioteca" (
    "idBiblioteca" integer NOT NULL,
    "nomBiblioteca" character varying(50) NOT NULL,
    direccion character varying(50) NOT NULL
);
     DROP TABLE public."Biblioteca";
       public         heap r       postgres    false            �            1259    25206    BibliotecaLibro    TABLE     �   CREATE TABLE public."BibliotecaLibro" (
    "idBibliotecaLibro" integer NOT NULL,
    "idBiblioteca" integer NOT NULL,
    "idLibro" integer NOT NULL,
    "cantEjemplares" integer NOT NULL
);
 %   DROP TABLE public."BibliotecaLibro";
       public         heap r       postgres    false            �            1259    25394    Carrera    TABLE     u   CREATE TABLE public."Carrera" (
    "idCarrera" integer NOT NULL,
    "nomCarrera" character varying(30) NOT NULL
);
    DROP TABLE public."Carrera";
       public         heap r       postgres    false            �            1259    25158 	   Categoria    TABLE     {   CREATE TABLE public."Categoria" (
    "idCategoria" integer NOT NULL,
    "nomCategoria" character varying(50) NOT NULL
);
    DROP TABLE public."Categoria";
       public         heap r       postgres    false            �            1259    25408    Departamento    TABLE     �   CREATE TABLE public."Departamento" (
    "idDepartamento" integer NOT NULL,
    "nomDepartamento" character varying(30) NOT NULL
);
 "   DROP TABLE public."Departamento";
       public         heap r       postgres    false            �            1259    25230    Ejemplar    TABLE     �   CREATE TABLE public."Ejemplar" (
    "idEjemplar" integer NOT NULL,
    "idLibro" integer NOT NULL,
    "idEstadoEj" integer NOT NULL,
    ubicacion character varying(80) NOT NULL
);
    DROP TABLE public."Ejemplar";
       public         heap r       postgres    false            �            1259    25223    EstadoEjemplar    TABLE     u   CREATE TABLE public."EstadoEjemplar" (
    "idEstadoEj" integer NOT NULL,
    "nomEstadoEj" character varying(20)
);
 $   DROP TABLE public."EstadoEjemplar";
       public         heap r       postgres    false            �            1259    25267    EstadoPrestamo    TABLE     �   CREATE TABLE public."EstadoPrestamo" (
    "idEstadoPre" integer NOT NULL,
    "nomEstadoPre" character varying(20) NOT NULL
);
 $   DROP TABLE public."EstadoPrestamo";
       public         heap r       postgres    false            �            1259    25247    EstadoRenovacion    TABLE     �   CREATE TABLE public."EstadoRenovacion" (
    "idEstadoRen" integer NOT NULL,
    "nomEstadoRen" character varying(20) NOT NULL
);
 &   DROP TABLE public."EstadoRenovacion";
       public         heap r       postgres    false            �            1259    25177    Libro    TABLE     �   CREATE TABLE public."Libro" (
    "idLibro" integer NOT NULL,
    titulo character varying(80),
    autor character varying(50),
    "año" integer,
    "idCategoria" integer
);
    DROP TABLE public."Libro";
       public         heap r       postgres    false            �            1259    25467    Multa    TABLE     �   CREATE TABLE public."Multa" (
    "idMulta" integer NOT NULL,
    "idPrestamo" integer NOT NULL,
    "fechaInicio" date NOT NULL,
    "fechaFin" date NOT NULL
);
    DROP TABLE public."Multa";
       public         heap r       postgres    false            �            1259    25445    Prestamo    TABLE       CREATE TABLE public."Prestamo" (
    "idPrestamo" integer NOT NULL,
    cedula integer NOT NULL,
    "idEjemplar" integer NOT NULL,
    "fechaSalida" date NOT NULL,
    "fechaVence" date NOT NULL,
    "fechaEntrega" date NOT NULL,
    "idEstadoPre" integer NOT NULL
);
    DROP TABLE public."Prestamo";
       public         heap r       postgres    false            �            1259    25491    PrestamoEjemplar    TABLE     �   CREATE TABLE public."PrestamoEjemplar" (
    "idPrestamoEj" integer NOT NULL,
    "idPrestamo" integer NOT NULL,
    "idEjemplar" integer NOT NULL
);
 &   DROP TABLE public."PrestamoEjemplar";
       public         heap r       postgres    false            �            1259    25520 
   Renovacion    TABLE     �   CREATE TABLE public."Renovacion" (
    "idRenovacion" integer NOT NULL,
    "idPrestamo" integer NOT NULL,
    "fechaSalida" date NOT NULL,
    "fechaVence" date NOT NULL,
    "idEstadoRen" integer NOT NULL
);
     DROP TABLE public."Renovacion";
       public         heap r       postgres    false            �            1259    25373    TipoUsuario    TABLE     y   CREATE TABLE public."TipoUsuario" (
    tipo integer NOT NULL,
    "nombreTipoUsuario" character varying(20) NOT NULL
);
 !   DROP TABLE public."TipoUsuario";
       public         heap r       postgres    false            �            1259    25401    TituloAcademico    TABLE     �   CREATE TABLE public."TituloAcademico" (
    "idTituloAcad" integer NOT NULL,
    "nomTituloAcad" character varying(30) NOT NULL
);
 %   DROP TABLE public."TituloAcademico";
       public         heap r       postgres    false            �            1259    25414    Usuario    TABLE     �  CREATE TABLE public."Usuario" (
    cedula integer NOT NULL,
    nombre character varying(50) NOT NULL,
    apellido character varying(50) NOT NULL,
    tipo integer NOT NULL,
    contacto character varying(50) NOT NULL,
    "contraseña" character varying(50) NOT NULL,
    "idBiblioteca" integer,
    "idCarrera" integer,
    "idTituloAcad" integer,
    "idDepartamento" integer,
    direccion character varying(80)
);
    DROP TABLE public."Usuario";
       public         heap r       postgres    false            �            1259    25150    biblioteca_idbiblioteca_seq    SEQUENCE     �   CREATE SEQUENCE public.biblioteca_idbiblioteca_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.biblioteca_idbiblioteca_seq;
       public               postgres    false    218            i           0    0    biblioteca_idbiblioteca_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.biblioteca_idbiblioteca_seq OWNED BY public."Biblioteca"."idBiblioteca";
          public               postgres    false    217            �            1259    25205 %   bibliotecalibro_idbibliotecalibro_seq    SEQUENCE     �   CREATE SEQUENCE public.bibliotecalibro_idbibliotecalibro_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.bibliotecalibro_idbibliotecalibro_seq;
       public               postgres    false    224            j           0    0 %   bibliotecalibro_idbibliotecalibro_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.bibliotecalibro_idbibliotecalibro_seq OWNED BY public."BibliotecaLibro"."idBibliotecaLibro";
          public               postgres    false    223            �            1259    25393    carrera_idcarrera_seq    SEQUENCE     �   CREATE SEQUENCE public.carrera_idcarrera_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.carrera_idcarrera_seq;
       public               postgres    false    235            k           0    0    carrera_idcarrera_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.carrera_idcarrera_seq OWNED BY public."Carrera"."idCarrera";
          public               postgres    false    234            �            1259    25157    categoria_idcategoria_seq    SEQUENCE     �   CREATE SEQUENCE public.categoria_idcategoria_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.categoria_idcategoria_seq;
       public               postgres    false    220            l           0    0    categoria_idcategoria_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.categoria_idcategoria_seq OWNED BY public."Categoria"."idCategoria";
          public               postgres    false    219            �            1259    25407    departamento_iddepartamento_seq    SEQUENCE     �   CREATE SEQUENCE public.departamento_iddepartamento_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.departamento_iddepartamento_seq;
       public               postgres    false    239            m           0    0    departamento_iddepartamento_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.departamento_iddepartamento_seq OWNED BY public."Departamento"."idDepartamento";
          public               postgres    false    238            �            1259    25229    ejemplar_idejemplar_seq    SEQUENCE     �   CREATE SEQUENCE public.ejemplar_idejemplar_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.ejemplar_idejemplar_seq;
       public               postgres    false    228            n           0    0    ejemplar_idejemplar_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.ejemplar_idejemplar_seq OWNED BY public."Ejemplar"."idEjemplar";
          public               postgres    false    227            �            1259    25222    estadoejemplar_idestadoej_seq    SEQUENCE     �   CREATE SEQUENCE public.estadoejemplar_idestadoej_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.estadoejemplar_idestadoej_seq;
       public               postgres    false    226            o           0    0    estadoejemplar_idestadoej_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.estadoejemplar_idestadoej_seq OWNED BY public."EstadoEjemplar"."idEstadoEj";
          public               postgres    false    225            �            1259    25266    estadoprestamo_idestadopre_seq    SEQUENCE     �   CREATE SEQUENCE public.estadoprestamo_idestadopre_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.estadoprestamo_idestadopre_seq;
       public               postgres    false    232            p           0    0    estadoprestamo_idestadopre_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.estadoprestamo_idestadopre_seq OWNED BY public."EstadoPrestamo"."idEstadoPre";
          public               postgres    false    231            �            1259    25246     estadorenovacion_idestadoren_seq    SEQUENCE     �   CREATE SEQUENCE public.estadorenovacion_idestadoren_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.estadorenovacion_idestadoren_seq;
       public               postgres    false    230            q           0    0     estadorenovacion_idestadoren_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.estadorenovacion_idestadoren_seq OWNED BY public."EstadoRenovacion"."idEstadoRen";
          public               postgres    false    229            �            1259    25176    libro_idlibro_seq    SEQUENCE     �   CREATE SEQUENCE public.libro_idlibro_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.libro_idlibro_seq;
       public               postgres    false    222            r           0    0    libro_idlibro_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.libro_idlibro_seq OWNED BY public."Libro"."idLibro";
          public               postgres    false    221            �            1259    25466    multa_idmulta_seq    SEQUENCE     �   CREATE SEQUENCE public.multa_idmulta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.multa_idmulta_seq;
       public               postgres    false    244            s           0    0    multa_idmulta_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.multa_idmulta_seq OWNED BY public."Multa"."idMulta";
          public               postgres    false    243            �            1259    25444    prestamo_idprestamo_seq    SEQUENCE     �   CREATE SEQUENCE public.prestamo_idprestamo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.prestamo_idprestamo_seq;
       public               postgres    false    242            t           0    0    prestamo_idprestamo_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.prestamo_idprestamo_seq OWNED BY public."Prestamo"."idPrestamo";
          public               postgres    false    241            �            1259    25490 !   prestamoejemplar_idprestamoej_seq    SEQUENCE     �   CREATE SEQUENCE public.prestamoejemplar_idprestamoej_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.prestamoejemplar_idprestamoej_seq;
       public               postgres    false    246            u           0    0 !   prestamoejemplar_idprestamoej_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.prestamoejemplar_idprestamoej_seq OWNED BY public."PrestamoEjemplar"."idPrestamoEj";
          public               postgres    false    245            �            1259    25519    renovacion_idrenovacion_seq    SEQUENCE     �   CREATE SEQUENCE public.renovacion_idrenovacion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.renovacion_idrenovacion_seq;
       public               postgres    false    248            v           0    0    renovacion_idrenovacion_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.renovacion_idrenovacion_seq OWNED BY public."Renovacion"."idRenovacion";
          public               postgres    false    247            �            1259    25400     tituloacademico_idtituloacad_seq    SEQUENCE     �   CREATE SEQUENCE public.tituloacademico_idtituloacad_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.tituloacademico_idtituloacad_seq;
       public               postgres    false    237            w           0    0     tituloacademico_idtituloacad_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.tituloacademico_idtituloacad_seq OWNED BY public."TituloAcademico"."idTituloAcad";
          public               postgres    false    236            o           2604    25154    Biblioteca idBiblioteca    DEFAULT     �   ALTER TABLE ONLY public."Biblioteca" ALTER COLUMN "idBiblioteca" SET DEFAULT nextval('public.biblioteca_idbiblioteca_seq'::regclass);
 J   ALTER TABLE public."Biblioteca" ALTER COLUMN "idBiblioteca" DROP DEFAULT;
       public               postgres    false    218    217    218            r           2604    25209 !   BibliotecaLibro idBibliotecaLibro    DEFAULT     �   ALTER TABLE ONLY public."BibliotecaLibro" ALTER COLUMN "idBibliotecaLibro" SET DEFAULT nextval('public.bibliotecalibro_idbibliotecalibro_seq'::regclass);
 T   ALTER TABLE public."BibliotecaLibro" ALTER COLUMN "idBibliotecaLibro" DROP DEFAULT;
       public               postgres    false    224    223    224            w           2604    25397    Carrera idCarrera    DEFAULT     z   ALTER TABLE ONLY public."Carrera" ALTER COLUMN "idCarrera" SET DEFAULT nextval('public.carrera_idcarrera_seq'::regclass);
 D   ALTER TABLE public."Carrera" ALTER COLUMN "idCarrera" DROP DEFAULT;
       public               postgres    false    234    235    235            p           2604    25161    Categoria idCategoria    DEFAULT     �   ALTER TABLE ONLY public."Categoria" ALTER COLUMN "idCategoria" SET DEFAULT nextval('public.categoria_idcategoria_seq'::regclass);
 H   ALTER TABLE public."Categoria" ALTER COLUMN "idCategoria" DROP DEFAULT;
       public               postgres    false    219    220    220            y           2604    25411    Departamento idDepartamento    DEFAULT     �   ALTER TABLE ONLY public."Departamento" ALTER COLUMN "idDepartamento" SET DEFAULT nextval('public.departamento_iddepartamento_seq'::regclass);
 N   ALTER TABLE public."Departamento" ALTER COLUMN "idDepartamento" DROP DEFAULT;
       public               postgres    false    238    239    239            t           2604    25233    Ejemplar idEjemplar    DEFAULT     ~   ALTER TABLE ONLY public."Ejemplar" ALTER COLUMN "idEjemplar" SET DEFAULT nextval('public.ejemplar_idejemplar_seq'::regclass);
 F   ALTER TABLE public."Ejemplar" ALTER COLUMN "idEjemplar" DROP DEFAULT;
       public               postgres    false    228    227    228            s           2604    25226    EstadoEjemplar idEstadoEj    DEFAULT     �   ALTER TABLE ONLY public."EstadoEjemplar" ALTER COLUMN "idEstadoEj" SET DEFAULT nextval('public.estadoejemplar_idestadoej_seq'::regclass);
 L   ALTER TABLE public."EstadoEjemplar" ALTER COLUMN "idEstadoEj" DROP DEFAULT;
       public               postgres    false    226    225    226            v           2604    25270    EstadoPrestamo idEstadoPre    DEFAULT     �   ALTER TABLE ONLY public."EstadoPrestamo" ALTER COLUMN "idEstadoPre" SET DEFAULT nextval('public.estadoprestamo_idestadopre_seq'::regclass);
 M   ALTER TABLE public."EstadoPrestamo" ALTER COLUMN "idEstadoPre" DROP DEFAULT;
       public               postgres    false    231    232    232            u           2604    25250    EstadoRenovacion idEstadoRen    DEFAULT     �   ALTER TABLE ONLY public."EstadoRenovacion" ALTER COLUMN "idEstadoRen" SET DEFAULT nextval('public.estadorenovacion_idestadoren_seq'::regclass);
 O   ALTER TABLE public."EstadoRenovacion" ALTER COLUMN "idEstadoRen" DROP DEFAULT;
       public               postgres    false    230    229    230            q           2604    25180    Libro idLibro    DEFAULT     r   ALTER TABLE ONLY public."Libro" ALTER COLUMN "idLibro" SET DEFAULT nextval('public.libro_idlibro_seq'::regclass);
 @   ALTER TABLE public."Libro" ALTER COLUMN "idLibro" DROP DEFAULT;
       public               postgres    false    221    222    222            {           2604    25470    Multa idMulta    DEFAULT     r   ALTER TABLE ONLY public."Multa" ALTER COLUMN "idMulta" SET DEFAULT nextval('public.multa_idmulta_seq'::regclass);
 @   ALTER TABLE public."Multa" ALTER COLUMN "idMulta" DROP DEFAULT;
       public               postgres    false    244    243    244            z           2604    25448    Prestamo idPrestamo    DEFAULT     ~   ALTER TABLE ONLY public."Prestamo" ALTER COLUMN "idPrestamo" SET DEFAULT nextval('public.prestamo_idprestamo_seq'::regclass);
 F   ALTER TABLE public."Prestamo" ALTER COLUMN "idPrestamo" DROP DEFAULT;
       public               postgres    false    241    242    242            |           2604    25494    PrestamoEjemplar idPrestamoEj    DEFAULT     �   ALTER TABLE ONLY public."PrestamoEjemplar" ALTER COLUMN "idPrestamoEj" SET DEFAULT nextval('public.prestamoejemplar_idprestamoej_seq'::regclass);
 P   ALTER TABLE public."PrestamoEjemplar" ALTER COLUMN "idPrestamoEj" DROP DEFAULT;
       public               postgres    false    246    245    246            }           2604    25523    Renovacion idRenovacion    DEFAULT     �   ALTER TABLE ONLY public."Renovacion" ALTER COLUMN "idRenovacion" SET DEFAULT nextval('public.renovacion_idrenovacion_seq'::regclass);
 J   ALTER TABLE public."Renovacion" ALTER COLUMN "idRenovacion" DROP DEFAULT;
       public               postgres    false    247    248    248            x           2604    25404    TituloAcademico idTituloAcad    DEFAULT     �   ALTER TABLE ONLY public."TituloAcademico" ALTER COLUMN "idTituloAcad" SET DEFAULT nextval('public.tituloacademico_idtituloacad_seq'::regclass);
 O   ALTER TABLE public."TituloAcademico" ALTER COLUMN "idTituloAcad" DROP DEFAULT;
       public               postgres    false    236    237    237            D          0    25151 
   Biblioteca 
   TABLE DATA           R   COPY public."Biblioteca" ("idBiblioteca", "nomBiblioteca", direccion) FROM stdin;
    public               postgres    false    218   ��       J          0    25206    BibliotecaLibro 
   TABLE DATA           m   COPY public."BibliotecaLibro" ("idBibliotecaLibro", "idBiblioteca", "idLibro", "cantEjemplares") FROM stdin;
    public               postgres    false    224   ��       U          0    25394    Carrera 
   TABLE DATA           >   COPY public."Carrera" ("idCarrera", "nomCarrera") FROM stdin;
    public               postgres    false    235   ��       F          0    25158 	   Categoria 
   TABLE DATA           D   COPY public."Categoria" ("idCategoria", "nomCategoria") FROM stdin;
    public               postgres    false    220   ة       Y          0    25408    Departamento 
   TABLE DATA           M   COPY public."Departamento" ("idDepartamento", "nomDepartamento") FROM stdin;
    public               postgres    false    239   Y�       N          0    25230    Ejemplar 
   TABLE DATA           V   COPY public."Ejemplar" ("idEjemplar", "idLibro", "idEstadoEj", ubicacion) FROM stdin;
    public               postgres    false    228   ݪ       L          0    25223    EstadoEjemplar 
   TABLE DATA           G   COPY public."EstadoEjemplar" ("idEstadoEj", "nomEstadoEj") FROM stdin;
    public               postgres    false    226   0�       R          0    25267    EstadoPrestamo 
   TABLE DATA           I   COPY public."EstadoPrestamo" ("idEstadoPre", "nomEstadoPre") FROM stdin;
    public               postgres    false    232   x�       P          0    25247    EstadoRenovacion 
   TABLE DATA           K   COPY public."EstadoRenovacion" ("idEstadoRen", "nomEstadoRen") FROM stdin;
    public               postgres    false    230   ��       H          0    25177    Libro 
   TABLE DATA           R   COPY public."Libro" ("idLibro", titulo, autor, "año", "idCategoria") FROM stdin;
    public               postgres    false    222   ��       ^          0    25467    Multa 
   TABLE DATA           U   COPY public."Multa" ("idMulta", "idPrestamo", "fechaInicio", "fechaFin") FROM stdin;
    public               postgres    false    244   B�       \          0    25445    Prestamo 
   TABLE DATA           �   COPY public."Prestamo" ("idPrestamo", cedula, "idEjemplar", "fechaSalida", "fechaVence", "fechaEntrega", "idEstadoPre") FROM stdin;
    public               postgres    false    242   p�       `          0    25491    PrestamoEjemplar 
   TABLE DATA           X   COPY public."PrestamoEjemplar" ("idPrestamoEj", "idPrestamo", "idEjemplar") FROM stdin;
    public               postgres    false    246   ɭ       b          0    25520 
   Renovacion 
   TABLE DATA           p   COPY public."Renovacion" ("idRenovacion", "idPrestamo", "fechaSalida", "fechaVence", "idEstadoRen") FROM stdin;
    public               postgres    false    248   �       S          0    25373    TipoUsuario 
   TABLE DATA           B   COPY public."TipoUsuario" (tipo, "nombreTipoUsuario") FROM stdin;
    public               postgres    false    233   �       W          0    25401    TituloAcademico 
   TABLE DATA           L   COPY public."TituloAcademico" ("idTituloAcad", "nomTituloAcad") FROM stdin;
    public               postgres    false    237   j�       Z          0    25414    Usuario 
   TABLE DATA           �   COPY public."Usuario" (cedula, nombre, apellido, tipo, contacto, "contraseña", "idBiblioteca", "idCarrera", "idTituloAcad", "idDepartamento", direccion) FROM stdin;
    public               postgres    false    240   ��       x           0    0    biblioteca_idbiblioteca_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.biblioteca_idbiblioteca_seq', 9, true);
          public               postgres    false    217            y           0    0 %   bibliotecalibro_idbibliotecalibro_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.bibliotecalibro_idbibliotecalibro_seq', 4, true);
          public               postgres    false    223            z           0    0    carrera_idcarrera_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.carrera_idcarrera_seq', 15, true);
          public               postgres    false    234            {           0    0    categoria_idcategoria_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.categoria_idcategoria_seq', 10, true);
          public               postgres    false    219            |           0    0    departamento_iddepartamento_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.departamento_iddepartamento_seq', 10, true);
          public               postgres    false    238            }           0    0    ejemplar_idejemplar_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.ejemplar_idejemplar_seq', 4, true);
          public               postgres    false    227            ~           0    0    estadoejemplar_idestadoej_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.estadoejemplar_idestadoej_seq', 3, true);
          public               postgres    false    225                       0    0    estadoprestamo_idestadopre_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.estadoprestamo_idestadopre_seq', 3, true);
          public               postgres    false    231            �           0    0     estadorenovacion_idestadoren_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.estadorenovacion_idestadoren_seq', 3, true);
          public               postgres    false    229            �           0    0    libro_idlibro_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.libro_idlibro_seq', 8, true);
          public               postgres    false    221            �           0    0    multa_idmulta_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.multa_idmulta_seq', 1, true);
          public               postgres    false    243            �           0    0    prestamo_idprestamo_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.prestamo_idprestamo_seq', 3, true);
          public               postgres    false    241            �           0    0 !   prestamoejemplar_idprestamoej_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.prestamoejemplar_idprestamoej_seq', 1, true);
          public               postgres    false    245            �           0    0    renovacion_idrenovacion_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.renovacion_idrenovacion_seq', 1, true);
          public               postgres    false    247            �           0    0     tituloacademico_idtituloacad_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.tituloacademico_idtituloacad_seq', 3, true);
          public               postgres    false    236                       2606    25156    Biblioteca biblioteca_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."Biblioteca"
    ADD CONSTRAINT biblioteca_pkey PRIMARY KEY ("idBiblioteca");
 F   ALTER TABLE ONLY public."Biblioteca" DROP CONSTRAINT biblioteca_pkey;
       public                 postgres    false    218            �           2606    25211 $   BibliotecaLibro bibliotecalibro_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public."BibliotecaLibro"
    ADD CONSTRAINT bibliotecalibro_pkey PRIMARY KEY ("idBibliotecaLibro");
 P   ALTER TABLE ONLY public."BibliotecaLibro" DROP CONSTRAINT bibliotecalibro_pkey;
       public                 postgres    false    224            �           2606    25399    Carrera carrera_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Carrera"
    ADD CONSTRAINT carrera_pkey PRIMARY KEY ("idCarrera");
 @   ALTER TABLE ONLY public."Carrera" DROP CONSTRAINT carrera_pkey;
       public                 postgres    false    235            �           2606    25163    Categoria categoria_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public."Categoria"
    ADD CONSTRAINT categoria_pkey PRIMARY KEY ("idCategoria");
 D   ALTER TABLE ONLY public."Categoria" DROP CONSTRAINT categoria_pkey;
       public                 postgres    false    220            �           2606    25413    Departamento departamento_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public."Departamento"
    ADD CONSTRAINT departamento_pkey PRIMARY KEY ("idDepartamento");
 J   ALTER TABLE ONLY public."Departamento" DROP CONSTRAINT departamento_pkey;
       public                 postgres    false    239            �           2606    25235    Ejemplar ejemplar_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Ejemplar"
    ADD CONSTRAINT ejemplar_pkey PRIMARY KEY ("idEjemplar");
 B   ALTER TABLE ONLY public."Ejemplar" DROP CONSTRAINT ejemplar_pkey;
       public                 postgres    false    228            �           2606    25228 "   EstadoEjemplar estadoejemplar_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public."EstadoEjemplar"
    ADD CONSTRAINT estadoejemplar_pkey PRIMARY KEY ("idEstadoEj");
 N   ALTER TABLE ONLY public."EstadoEjemplar" DROP CONSTRAINT estadoejemplar_pkey;
       public                 postgres    false    226            �           2606    25272 "   EstadoPrestamo estadoprestamo_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public."EstadoPrestamo"
    ADD CONSTRAINT estadoprestamo_pkey PRIMARY KEY ("idEstadoPre");
 N   ALTER TABLE ONLY public."EstadoPrestamo" DROP CONSTRAINT estadoprestamo_pkey;
       public                 postgres    false    232            �           2606    25252 &   EstadoRenovacion estadorenovacion_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public."EstadoRenovacion"
    ADD CONSTRAINT estadorenovacion_pkey PRIMARY KEY ("idEstadoRen");
 R   ALTER TABLE ONLY public."EstadoRenovacion" DROP CONSTRAINT estadorenovacion_pkey;
       public                 postgres    false    230            �           2606    25182    Libro libro_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public."Libro"
    ADD CONSTRAINT libro_pkey PRIMARY KEY ("idLibro");
 <   ALTER TABLE ONLY public."Libro" DROP CONSTRAINT libro_pkey;
       public                 postgres    false    222            �           2606    25472    Multa multa_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public."Multa"
    ADD CONSTRAINT multa_pkey PRIMARY KEY ("idMulta");
 <   ALTER TABLE ONLY public."Multa" DROP CONSTRAINT multa_pkey;
       public                 postgres    false    244            �           2606    25450    Prestamo prestamo_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Prestamo"
    ADD CONSTRAINT prestamo_pkey PRIMARY KEY ("idPrestamo");
 B   ALTER TABLE ONLY public."Prestamo" DROP CONSTRAINT prestamo_pkey;
       public                 postgres    false    242            �           2606    25496 &   PrestamoEjemplar prestamoejemplar_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public."PrestamoEjemplar"
    ADD CONSTRAINT prestamoejemplar_pkey PRIMARY KEY ("idPrestamoEj");
 R   ALTER TABLE ONLY public."PrestamoEjemplar" DROP CONSTRAINT prestamoejemplar_pkey;
       public                 postgres    false    246            �           2606    25525    Renovacion renovacion_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."Renovacion"
    ADD CONSTRAINT renovacion_pkey PRIMARY KEY ("idRenovacion");
 F   ALTER TABLE ONLY public."Renovacion" DROP CONSTRAINT renovacion_pkey;
       public                 postgres    false    248            �           2606    25377    TipoUsuario tipousuario_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."TipoUsuario"
    ADD CONSTRAINT tipousuario_pkey PRIMARY KEY (tipo);
 H   ALTER TABLE ONLY public."TipoUsuario" DROP CONSTRAINT tipousuario_pkey;
       public                 postgres    false    233            �           2606    25406 $   TituloAcademico tituloacademico_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public."TituloAcademico"
    ADD CONSTRAINT tituloacademico_pkey PRIMARY KEY ("idTituloAcad");
 P   ALTER TABLE ONLY public."TituloAcademico" DROP CONSTRAINT tituloacademico_pkey;
       public                 postgres    false    237            �           2606    25418    Usuario usuario_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Usuario"
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (cedula);
 @   ALTER TABLE ONLY public."Usuario" DROP CONSTRAINT usuario_pkey;
       public                 postgres    false    240            �           2606    25212 1   BibliotecaLibro bibliotecalibro_idbiblioteca_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."BibliotecaLibro"
    ADD CONSTRAINT bibliotecalibro_idbiblioteca_fkey FOREIGN KEY ("idBiblioteca") REFERENCES public."Biblioteca"("idBiblioteca");
 ]   ALTER TABLE ONLY public."BibliotecaLibro" DROP CONSTRAINT bibliotecalibro_idbiblioteca_fkey;
       public               postgres    false    224    4735    218            �           2606    25217 ,   BibliotecaLibro bibliotecalibro_idlibro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."BibliotecaLibro"
    ADD CONSTRAINT bibliotecalibro_idlibro_fkey FOREIGN KEY ("idLibro") REFERENCES public."Libro"("idLibro");
 X   ALTER TABLE ONLY public."BibliotecaLibro" DROP CONSTRAINT bibliotecalibro_idlibro_fkey;
       public               postgres    false    224    222    4739            �           2606    25241 !   Ejemplar ejemplar_idestadoej_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Ejemplar"
    ADD CONSTRAINT ejemplar_idestadoej_fkey FOREIGN KEY ("idEstadoEj") REFERENCES public."EstadoEjemplar"("idEstadoEj");
 M   ALTER TABLE ONLY public."Ejemplar" DROP CONSTRAINT ejemplar_idestadoej_fkey;
       public               postgres    false    4743    226    228            �           2606    25236    Ejemplar ejemplar_idlibro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Ejemplar"
    ADD CONSTRAINT ejemplar_idlibro_fkey FOREIGN KEY ("idLibro") REFERENCES public."Libro"("idLibro");
 J   ALTER TABLE ONLY public."Ejemplar" DROP CONSTRAINT ejemplar_idlibro_fkey;
       public               postgres    false    228    4739    222            �           2606    25183    Libro libro_idcategoria_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Libro"
    ADD CONSTRAINT libro_idcategoria_fkey FOREIGN KEY ("idCategoria") REFERENCES public."Categoria"("idCategoria");
 H   ALTER TABLE ONLY public."Libro" DROP CONSTRAINT libro_idcategoria_fkey;
       public               postgres    false    222    220    4737            �           2606    25473    Multa multa_idprestamo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Multa"
    ADD CONSTRAINT multa_idprestamo_fkey FOREIGN KEY ("idPrestamo") REFERENCES public."Prestamo"("idPrestamo");
 G   ALTER TABLE ONLY public."Multa" DROP CONSTRAINT multa_idprestamo_fkey;
       public               postgres    false    242    4761    244            �           2606    25451    Prestamo prestamo_cedula_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Prestamo"
    ADD CONSTRAINT prestamo_cedula_fkey FOREIGN KEY (cedula) REFERENCES public."Usuario"(cedula);
 I   ALTER TABLE ONLY public."Prestamo" DROP CONSTRAINT prestamo_cedula_fkey;
       public               postgres    false    4759    240    242            �           2606    25456 !   Prestamo prestamo_idejemplar_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Prestamo"
    ADD CONSTRAINT prestamo_idejemplar_fkey FOREIGN KEY ("idEjemplar") REFERENCES public."Ejemplar"("idEjemplar");
 M   ALTER TABLE ONLY public."Prestamo" DROP CONSTRAINT prestamo_idejemplar_fkey;
       public               postgres    false    242    4745    228            �           2606    25461 "   Prestamo prestamo_idestadopre_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Prestamo"
    ADD CONSTRAINT prestamo_idestadopre_fkey FOREIGN KEY ("idEstadoPre") REFERENCES public."EstadoPrestamo"("idEstadoPre");
 N   ALTER TABLE ONLY public."Prestamo" DROP CONSTRAINT prestamo_idestadopre_fkey;
       public               postgres    false    232    242    4749            �           2606    25502 1   PrestamoEjemplar prestamoejemplar_idejemplar_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."PrestamoEjemplar"
    ADD CONSTRAINT prestamoejemplar_idejemplar_fkey FOREIGN KEY ("idEjemplar") REFERENCES public."Ejemplar"("idEjemplar");
 ]   ALTER TABLE ONLY public."PrestamoEjemplar" DROP CONSTRAINT prestamoejemplar_idejemplar_fkey;
       public               postgres    false    228    4745    246            �           2606    25497 1   PrestamoEjemplar prestamoejemplar_idprestamo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."PrestamoEjemplar"
    ADD CONSTRAINT prestamoejemplar_idprestamo_fkey FOREIGN KEY ("idPrestamo") REFERENCES public."Prestamo"("idPrestamo");
 ]   ALTER TABLE ONLY public."PrestamoEjemplar" DROP CONSTRAINT prestamoejemplar_idprestamo_fkey;
       public               postgres    false    4761    242    246            �           2606    25531 &   Renovacion renovacion_idestadoren_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Renovacion"
    ADD CONSTRAINT renovacion_idestadoren_fkey FOREIGN KEY ("idEstadoRen") REFERENCES public."EstadoRenovacion"("idEstadoRen");
 R   ALTER TABLE ONLY public."Renovacion" DROP CONSTRAINT renovacion_idestadoren_fkey;
       public               postgres    false    4747    248    230            �           2606    25526 %   Renovacion renovacion_idprestamo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Renovacion"
    ADD CONSTRAINT renovacion_idprestamo_fkey FOREIGN KEY ("idPrestamo") REFERENCES public."Prestamo"("idPrestamo");
 Q   ALTER TABLE ONLY public."Renovacion" DROP CONSTRAINT renovacion_idprestamo_fkey;
       public               postgres    false    248    242    4761            �           2606    25419 !   Usuario usuario_idbiblioteca_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Usuario"
    ADD CONSTRAINT usuario_idbiblioteca_fkey FOREIGN KEY ("idBiblioteca") REFERENCES public."Biblioteca"("idBiblioteca");
 M   ALTER TABLE ONLY public."Usuario" DROP CONSTRAINT usuario_idbiblioteca_fkey;
       public               postgres    false    218    240    4735            �           2606    25429    Usuario usuario_idcarrera_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Usuario"
    ADD CONSTRAINT usuario_idcarrera_fkey FOREIGN KEY ("idCarrera") REFERENCES public."Carrera"("idCarrera");
 J   ALTER TABLE ONLY public."Usuario" DROP CONSTRAINT usuario_idcarrera_fkey;
       public               postgres    false    235    240    4753            �           2606    25439 #   Usuario usuario_iddepartamento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Usuario"
    ADD CONSTRAINT usuario_iddepartamento_fkey FOREIGN KEY ("idDepartamento") REFERENCES public."Departamento"("idDepartamento");
 O   ALTER TABLE ONLY public."Usuario" DROP CONSTRAINT usuario_iddepartamento_fkey;
       public               postgres    false    4757    240    239            �           2606    25434 !   Usuario usuario_idtituloacad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Usuario"
    ADD CONSTRAINT usuario_idtituloacad_fkey FOREIGN KEY ("idTituloAcad") REFERENCES public."TituloAcademico"("idTituloAcad");
 M   ALTER TABLE ONLY public."Usuario" DROP CONSTRAINT usuario_idtituloacad_fkey;
       public               postgres    false    4755    240    237            �           2606    25424    Usuario usuario_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Usuario"
    ADD CONSTRAINT usuario_tipo_fkey FOREIGN KEY (tipo) REFERENCES public."TipoUsuario"(tipo);
 E   ALTER TABLE ONLY public."Usuario" DROP CONSTRAINT usuario_tipo_fkey;
       public               postgres    false    4751    240    233            D   �   x����J1��7O1OPp��^ֵ`�BA�ʛ�̰d'�d����]�
.ބ0�s�SW����=�%14���x��6���T�br���ች�;�ImÝҐK�ww9��Qc/U�!0���`J���]�)7]���l��n9��ӎU�P�(�:$c���o#�=�[��}{5u�Z0���C�*����^�������xQ�g.檘~�XWg)�k��]��9�:d�_�gC ��^ι@R��      J   (   x�3�4BS.# i�i�e��9��L����	W� Y��      U   �   x�M��n�0Dk�+�A�G��0�X �Q���\��D���p�Ἑ�pօU����rIT%��T��B��������/Ҍ�?E���QZ1<n3F���[iXJ֜z�#JQḺ�W�ʉ���7����^$���
u�7.�����d뾘�~y�4���P*��"Y�1�{x/WR����~��#�Y+ͭ7O�{��"� �f�      F   q   x�-��
�@D��ǔ��V?��A赗��K`u���cZ�͛yLEö`_�h��(%�p�Ί�j�i2�H*����.?� �h��.`��sCc,�O���f�Օ�����f> ��(�      Y   t   x�-�K
A��a���Rtf'��<�F�����w��W�)#L���}aKc������K�i�)��4��>�-�$o�#]4[�E��>ќ����4#|�W�aMj���c��`�*�      N   C   x�3�4��̜�|#��ļ�Tc�̜D#.#N#Nc�C��C.c���
b���� �h�      L   8   x�3�t�,.���L�I�2�(J-.IL��2�t�S�M�+I����L�+������ z��      R   3   x�3�t�,.���L�I�2�JM�H�JL��2�t�S((�ON-������ ,B�      P   -   x�3�t,(�OJL��2�JM�H���9]��ɩ��\1z\\\ ��      H   :  x�EP�jA>g�"'O���V�hUV�=�K�Iu`L��]��M��|��ZB���N��]����3>�|�]h6[���ω3�â��+aF���<�qbiE��H��b4�p�����}���дg|!�w�
W��OY�3�Iw�&\�t"�)�y�J���,���G��`�;{έ��$�#.� |$�zP���IoI�-sϗOE:r���`�yG����hfL��b�Vo��`M�<.�4d� 7�<�,|F(���R�C͝z��el)��c�/i���O,Ƥ�|��QŤ�<�+{n{���1��      ^      x�3�4�4202�54�52E0͹b���� RT      \   I   x�U���0�ΰK*�$����HN��,�2H3=,�@*�24
WG�Қ!n7��Av���p�n{��߿3o1      `      x�3�4�4����� �X      b   !   x�3�4�4202�54�5��3�8�b���� \�=      S   =   x�3�t-.)M�L�+I�2�(�OK-�/�2�tL����,.)JL�M8]+JR���b���� �y[      W   F   x�3���KO-��WH�S��K�/�M,�LN�2���LN�K�LL��&��B��Ѥ�3��s��3�b���� �i�      Z   �   x�m�1
�0Eg�0Œe's��RJ�,&1�`p���Wu�$H��D"��\S�W,iʥlo@��$ґH�u�0ގ6β�b�ƽ�)o��暗=}Kz�m�x�v�[v��%x�W����>�?�qjÐ��zT��{�)�x�ɶ�>�=Q�c�E4�     
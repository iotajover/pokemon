PGDMP         +                 x            pokemon    12.1    12.0 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16393    pokemon    DATABASE     �   CREATE DATABASE pokemon WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Spain.1252' LC_CTYPE = 'Spanish_Spain.1252';
    DROP DATABASE pokemon;
                postgres    false            �           0    0    DATABASE pokemon    COMMENT     \   COMMENT ON DATABASE pokemon IS 'This database is for a technical test in MO technologies.';
                   postgres    false    3009            �            1259    16426 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    pokeusr    false            �            1259    16424    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          pokeusr    false    209            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          pokeusr    false    208            �            1259    16436    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    pokeusr    false            �            1259    16434    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          pokeusr    false    211            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          pokeusr    false    210            �            1259    16418    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    pokeusr    false            �            1259    16416    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          pokeusr    false    207            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          pokeusr    false    206            �            1259    16444 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    pokeusr    false            �            1259    16454    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    pokeusr    false            �            1259    16452    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          pokeusr    false    215            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          pokeusr    false    214            �            1259    16442    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          pokeusr    false    213            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          pokeusr    false    212            �            1259    16462    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    pokeusr    false            �            1259    16460 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          pokeusr    false    217            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          pokeusr    false    216            �            1259    16611    authtoken_token    TABLE     �   CREATE TABLE public.authtoken_token (
    key character varying(40) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);
 #   DROP TABLE public.authtoken_token;
       public         heap    pokeusr    false            �            1259    16522    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    pokeusr    false            �            1259    16520    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          pokeusr    false    219            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          pokeusr    false    218            �            1259    16408    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    pokeusr    false            �            1259    16406    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          pokeusr    false    205            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          pokeusr    false    204            �            1259    16397    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    pokeusr    false            �            1259    16395    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          pokeusr    false    203            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          pokeusr    false    202            �            1259    16553    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    pokeusr    false            �            1259    16571    pokemon_pokemon    TABLE     �   CREATE TABLE public.pokemon_pokemon (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    height integer NOT NULL,
    weight integer NOT NULL,
    envolve_from_id integer,
    envolve_to_id integer
);
 #   DROP TABLE public.pokemon_pokemon;
       public         heap    pokeusr    false            �            1259    16578    pokemon_pokemon_stats    TABLE     �   CREATE TABLE public.pokemon_pokemon_stats (
    id integer NOT NULL,
    pokemon_id integer NOT NULL,
    stat_id integer NOT NULL
);
 )   DROP TABLE public.pokemon_pokemon_stats;
       public         heap    pokeusr    false            �            1259    16576    pokemon_pokemon_stats_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pokemon_pokemon_stats_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.pokemon_pokemon_stats_id_seq;
       public          pokeusr    false    225            �           0    0    pokemon_pokemon_stats_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.pokemon_pokemon_stats_id_seq OWNED BY public.pokemon_pokemon_stats.id;
          public          pokeusr    false    224            �            1259    16565    pokemon_stat    TABLE     �   CREATE TABLE public.pokemon_stat (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    base_stat integer NOT NULL,
    effort integer NOT NULL
);
     DROP TABLE public.pokemon_stat;
       public         heap    pokeusr    false            �            1259    16563    pokemon_stat_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pokemon_stat_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.pokemon_stat_id_seq;
       public          pokeusr    false    222            �           0    0    pokemon_stat_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.pokemon_stat_id_seq OWNED BY public.pokemon_stat.id;
          public          pokeusr    false    221            �
           2604    16429    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          pokeusr    false    208    209    209            �
           2604    16439    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          pokeusr    false    210    211    211            �
           2604    16421    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          pokeusr    false    207    206    207            �
           2604    16447    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          pokeusr    false    213    212    213            �
           2604    16457    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          pokeusr    false    214    215    215            �
           2604    16465    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          pokeusr    false    217    216    217            �
           2604    16525    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          pokeusr    false    218    219    219            �
           2604    16411    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          pokeusr    false    205    204    205            �
           2604    16400    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          pokeusr    false    203    202    203            �
           2604    16581    pokemon_pokemon_stats id    DEFAULT     �   ALTER TABLE ONLY public.pokemon_pokemon_stats ALTER COLUMN id SET DEFAULT nextval('public.pokemon_pokemon_stats_id_seq'::regclass);
 G   ALTER TABLE public.pokemon_pokemon_stats ALTER COLUMN id DROP DEFAULT;
       public          pokeusr    false    224    225    225            �
           2604    16568    pokemon_stat id    DEFAULT     r   ALTER TABLE ONLY public.pokemon_stat ALTER COLUMN id SET DEFAULT nextval('public.pokemon_stat_id_seq'::regclass);
 >   ALTER TABLE public.pokemon_stat ALTER COLUMN id DROP DEFAULT;
       public          pokeusr    false    221    222    222            �          0    16426 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          pokeusr    false    209   /�       �          0    16436    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          pokeusr    false    211   L�       �          0    16418    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          pokeusr    false    207   i�       �          0    16444 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          pokeusr    false    213   �       �          0    16454    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          pokeusr    false    215   ��       �          0    16462    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          pokeusr    false    217   ��       �          0    16611    authtoken_token 
   TABLE DATA           @   COPY public.authtoken_token (key, created, user_id) FROM stdin;
    public          pokeusr    false    226   ײ       �          0    16522    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          pokeusr    false    219   2�       �          0    16408    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          pokeusr    false    205   O�       �          0    16397    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          pokeusr    false    203   ϳ       �          0    16553    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          pokeusr    false    220   ͵       �          0    16571    pokemon_pokemon 
   TABLE DATA           c   COPY public.pokemon_pokemon (id, name, height, weight, envolve_from_id, envolve_to_id) FROM stdin;
    public          pokeusr    false    223   �       �          0    16578    pokemon_pokemon_stats 
   TABLE DATA           H   COPY public.pokemon_pokemon_stats (id, pokemon_id, stat_id) FROM stdin;
    public          pokeusr    false    225   ��       �          0    16565    pokemon_stat 
   TABLE DATA           C   COPY public.pokemon_stat (id, name, base_stat, effort) FROM stdin;
    public          pokeusr    false    222   ��       �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          pokeusr    false    208            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          pokeusr    false    210            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 36, true);
          public          pokeusr    false    206            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          pokeusr    false    214            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
          public          pokeusr    false    212            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          pokeusr    false    216            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
          public          pokeusr    false    218            �           0    0    django_content_type_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_content_type_id_seq', 9, true);
          public          pokeusr    false    204            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 20, true);
          public          pokeusr    false    202            �           0    0    pokemon_pokemon_stats_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.pokemon_pokemon_stats_id_seq', 72, true);
          public          pokeusr    false    224            �           0    0    pokemon_stat_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.pokemon_stat_id_seq', 78, true);
          public          pokeusr    false    221            �
           2606    16551    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            pokeusr    false    209            �
           2606    16478 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            pokeusr    false    211    211            �
           2606    16441 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            pokeusr    false    211            �
           2606    16431    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            pokeusr    false    209            �
           2606    16469 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            pokeusr    false    207    207            �
           2606    16423 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            pokeusr    false    207            �
           2606    16459 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            pokeusr    false    215            �
           2606    16493 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            pokeusr    false    215    215            �
           2606    16449    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            pokeusr    false    213            �
           2606    16467 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            pokeusr    false    217            �
           2606    16507 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            pokeusr    false    217    217            �
           2606    16545     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            pokeusr    false    213                       2606    16615 $   authtoken_token authtoken_token_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_pkey PRIMARY KEY (key);
 N   ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_pkey;
       public            pokeusr    false    226                       2606    16617 +   authtoken_token authtoken_token_user_id_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_key UNIQUE (user_id);
 U   ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_user_id_key;
       public            pokeusr    false    226                        2606    16531 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            pokeusr    false    219            �
           2606    16415 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            pokeusr    false    205    205            �
           2606    16413 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            pokeusr    false    205            �
           2606    16405 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            pokeusr    false    203                       2606    16560 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            pokeusr    false    220                       2606    16575 $   pokemon_pokemon pokemon_pokemon_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.pokemon_pokemon
    ADD CONSTRAINT pokemon_pokemon_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.pokemon_pokemon DROP CONSTRAINT pokemon_pokemon_pkey;
       public            pokeusr    false    223                       2606    16583 0   pokemon_pokemon_stats pokemon_pokemon_stats_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.pokemon_pokemon_stats
    ADD CONSTRAINT pokemon_pokemon_stats_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.pokemon_pokemon_stats DROP CONSTRAINT pokemon_pokemon_stats_pkey;
       public            pokeusr    false    225                       2606    16597 L   pokemon_pokemon_stats pokemon_pokemon_stats_pokemon_id_stat_id_68db1dba_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.pokemon_pokemon_stats
    ADD CONSTRAINT pokemon_pokemon_stats_pokemon_id_stat_id_68db1dba_uniq UNIQUE (pokemon_id, stat_id);
 v   ALTER TABLE ONLY public.pokemon_pokemon_stats DROP CONSTRAINT pokemon_pokemon_stats_pokemon_id_stat_id_68db1dba_uniq;
       public            pokeusr    false    225    225                       2606    16570    pokemon_stat pokemon_stat_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.pokemon_stat
    ADD CONSTRAINT pokemon_stat_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.pokemon_stat DROP CONSTRAINT pokemon_stat_pkey;
       public            pokeusr    false    222            �
           1259    16552    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            pokeusr    false    209            �
           1259    16489 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            pokeusr    false    211            �
           1259    16490 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            pokeusr    false    211            �
           1259    16475 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            pokeusr    false    207            �
           1259    16505 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            pokeusr    false    215            �
           1259    16504 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            pokeusr    false    215            �
           1259    16519 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            pokeusr    false    217            �
           1259    16518 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            pokeusr    false    217            �
           1259    16546     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            pokeusr    false    213                       1259    16623 !   authtoken_token_key_10f0b77e_like    INDEX     p   CREATE INDEX authtoken_token_key_10f0b77e_like ON public.authtoken_token USING btree (key varchar_pattern_ops);
 5   DROP INDEX public.authtoken_token_key_10f0b77e_like;
       public            pokeusr    false    226            �
           1259    16542 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            pokeusr    false    219                       1259    16543 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            pokeusr    false    219                       1259    16562 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            pokeusr    false    220                       1259    16561 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            pokeusr    false    220                       1259    16594 (   pokemon_pokemon_envolve_from_id_937ea55a    INDEX     o   CREATE INDEX pokemon_pokemon_envolve_from_id_937ea55a ON public.pokemon_pokemon USING btree (envolve_from_id);
 <   DROP INDEX public.pokemon_pokemon_envolve_from_id_937ea55a;
       public            pokeusr    false    223            	           1259    16595 &   pokemon_pokemon_envolve_to_id_e92e3ce8    INDEX     k   CREATE INDEX pokemon_pokemon_envolve_to_id_e92e3ce8 ON public.pokemon_pokemon USING btree (envolve_to_id);
 :   DROP INDEX public.pokemon_pokemon_envolve_to_id_e92e3ce8;
       public            pokeusr    false    223                       1259    16608 )   pokemon_pokemon_stats_pokemon_id_e5190d95    INDEX     q   CREATE INDEX pokemon_pokemon_stats_pokemon_id_e5190d95 ON public.pokemon_pokemon_stats USING btree (pokemon_id);
 =   DROP INDEX public.pokemon_pokemon_stats_pokemon_id_e5190d95;
       public            pokeusr    false    225                       1259    16609 &   pokemon_pokemon_stats_stat_id_66444257    INDEX     k   CREATE INDEX pokemon_pokemon_stats_stat_id_66444257 ON public.pokemon_pokemon_stats USING btree (stat_id);
 :   DROP INDEX public.pokemon_pokemon_stats_stat_id_66444257;
       public            pokeusr    false    225                       2606    16484 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          pokeusr    false    211    207    2785                       2606    16479 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          pokeusr    false    2790    211    209                       2606    16470 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          pokeusr    false    2780    205    207                       2606    16499 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          pokeusr    false    215    209    2790                       2606    16494 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          pokeusr    false    215    213    2798                       2606    16513 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          pokeusr    false    2785    207    217                       2606    16508 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          pokeusr    false    217    2798    213            $           2606    16624 @   authtoken_token authtoken_token_user_id_35299eff_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_35299eff_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_user_id_35299eff_fk_auth_user_id;
       public          pokeusr    false    2798    226    213                       2606    16532 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          pokeusr    false    219    205    2780                       2606    16537 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          pokeusr    false    2798    219    213                        2606    16584 N   pokemon_pokemon pokemon_pokemon_envolve_from_id_937ea55a_fk_pokemon_pokemon_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.pokemon_pokemon
    ADD CONSTRAINT pokemon_pokemon_envolve_from_id_937ea55a_fk_pokemon_pokemon_id FOREIGN KEY (envolve_from_id) REFERENCES public.pokemon_pokemon(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.pokemon_pokemon DROP CONSTRAINT pokemon_pokemon_envolve_from_id_937ea55a_fk_pokemon_pokemon_id;
       public          pokeusr    false    223    2827    223            !           2606    16589 L   pokemon_pokemon pokemon_pokemon_envolve_to_id_e92e3ce8_fk_pokemon_pokemon_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.pokemon_pokemon
    ADD CONSTRAINT pokemon_pokemon_envolve_to_id_e92e3ce8_fk_pokemon_pokemon_id FOREIGN KEY (envolve_to_id) REFERENCES public.pokemon_pokemon(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.pokemon_pokemon DROP CONSTRAINT pokemon_pokemon_envolve_to_id_e92e3ce8_fk_pokemon_pokemon_id;
       public          pokeusr    false    223    2827    223            "           2606    16598 U   pokemon_pokemon_stats pokemon_pokemon_stats_pokemon_id_e5190d95_fk_pokemon_pokemon_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.pokemon_pokemon_stats
    ADD CONSTRAINT pokemon_pokemon_stats_pokemon_id_e5190d95_fk_pokemon_pokemon_id FOREIGN KEY (pokemon_id) REFERENCES public.pokemon_pokemon(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.pokemon_pokemon_stats DROP CONSTRAINT pokemon_pokemon_stats_pokemon_id_e5190d95_fk_pokemon_pokemon_id;
       public          pokeusr    false    2827    225    223            #           2606    16603 O   pokemon_pokemon_stats pokemon_pokemon_stats_stat_id_66444257_fk_pokemon_stat_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.pokemon_pokemon_stats
    ADD CONSTRAINT pokemon_pokemon_stats_stat_id_66444257_fk_pokemon_stat_id FOREIGN KEY (stat_id) REFERENCES public.pokemon_stat(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.pokemon_pokemon_stats DROP CONSTRAINT pokemon_pokemon_stats_stat_id_66444257_fk_pokemon_stat_id;
       public          pokeusr    false    225    222    2823            �      x������ � �      �      x������ � �      �   o  x�]�Kn�0D��)|�"��ߺW�@a$B4�[i��צ�"���y �Qp�]_u�su.U���t�-���NW_r���K4T	�x���,�G��^��ց@�b6��~���л��d�wZ΀�S�^���=��!�Qq�by������-�9����t�Ԣ� Y n��c��kI`=����H�>[� �g`'�������Ч�ժ��ےF�ć�y�!d���z���z#�/4�6�9�Wݑ0n�6}�3mzS]��
"M�S��>�,G_�z#eL���Ȉ�r
������!�|�i�0��3-��c���ň��c��H>i=����s� 1�f@T� ��y���Ǵ�      �   �   x�e�O�0@��St���~���$$B=ḀN�f���>����(��Y�cRlǤ�0Sվ/E�y�6&�7
�5��X�5�IFc���wnW��N%�g�bj�(�|�cF��)b�-S�uW!�j�ڹ�
ul��X�a��%�y.�-�;6��1�      �      x������ � �      �      x������ � �      �   K   x���� ��T�t%֒��	��3=m������}#�4bG��s������})�Z��C��
�ӈ���      �      x������ � �      �   p   x�M���0C��� m�`�¥b�VA��I��M .��%��0�(�֙�ˊ�B��2�͢
�G3���q���*��|�l�����ھ7���B��q���1�k�I�)' �T7M      �   �  x���͎� ���S�$b�On}��*�Z	��fQm�b�ڼ}{���Q"Yl����P�|m�e�cE�z�i+$H��/H�D�� �ٞ�;���GH@�s �Lӹ��*�k �֟S�ᢃ������^���&(�fF}e�+#�is����Ok�����)��͒�0��7W����A�/�7��D)@ uF�Uj�F�`C��1���ug>tk�sڵ�DAF�E�4��vƵ)Ȉ(����n)y)��!n�Q4�T�ʨo�cV�ReS�}�JB��������]gi��Ƶ7Œɻi]c�c9|����h�w�]1I�,8��䦜G�9W�($���7EO�S�ԟ( ��4<���pΈ��ӐY=�q�i�;~d�=��h���[�t֥�@V����g�^�9�������_��W��VgIã�"�����8��g���1a��5��H�1���$_�p�a0]$�kLl聰D(m�������rw�      �     x�=�Kn�0 ��� �q�� uE 2�F����n�!�(�@|��.��i���*�^��w�U�wI;���u����b3�=�i�����+$]�!�t�!^*��;��}�F I��l�?ͱMTˋ#�J/���X�w߱�i�a�����66тѳd���evR�k���C}(Ɗ��%����kFDkX�z�Q^l�r�]n�?o��,G�j���g$�RS'�4}D�R�4�0r#���X�������� ^'@0p
�S- \�x����)��A���h�      �   �   x�5��
�0E�o>f4i��'�{�((��*ut_�Ա��''�1�m�G,=��;�,�y/W(l��(!�z�+f��,���c}������t���{fF^��~�M#�B�s=�&mq� ���'NI�,��u���Q��NiJ�`����im�i?�
�W����l7~      �   �   x�%л�E! ј)f����뿎��ќ K6r�,tw�n��=�u/꯶�X�L��*Z]CO���lw{S�
����{1��EW��*V�/7�����(q����]E�_�?��c$x����g����A�Q2*BG���%�Sn"�F�R�)Q##�ȉ;
r��|��K�H�F��O��	�#%�'VyFN�QP{���������<xL      �   3  x�m��n� E��_Vac��^�6ӦMS������@��ܜrr�۲\�$<�U�����u�X~�S�s������乸=&�b�m�(cp��68҆�`O��y11�-��^O;F�J5L�7LAU&�G���K�b �T$l �����m'2�*Ri�$㋺�\vO��=��(`v�Hl�z|$E���Hjm �`)��0M�B�{�j� �1M�����w(�B�BJ�$�UHHM*��P���vh��B"�w��\^��am��������B���.�g�ʓ->T�K��Å� \���~���� �     
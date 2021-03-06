PGDMP         	                y            livraria    13.1    13.1 .    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16442    livraria    DATABASE     h   CREATE DATABASE livraria WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE livraria;
                postgres    false            ?           0    0    DATABASE livraria    ACL     m   REVOKE ALL ON DATABASE livraria FROM postgres;
GRANT ALL ON DATABASE livraria TO postgres WITH GRANT OPTION;
                   postgres    false    3045            ?            1259    16443    Cliente    TABLE     ?   CREATE TABLE public."Cliente" (
    "Nome" character varying(200),
    "Endereço" character varying(256),
    "Telefone" character varying(16),
    "Codigo" integer NOT NULL,
    "CPF_CNPJ" character varying(14) NOT NULL
);
    DROP TABLE public."Cliente";
       public         heap    postgres    false            ?            1259    16505    Cliente_Codigo_seq    SEQUENCE     ?   CREATE SEQUENCE public."Cliente_Codigo_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."Cliente_Codigo_seq";
       public          postgres    false    200            ?           0    0    Cliente_Codigo_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Cliente_Codigo_seq" OWNED BY public."Cliente"."Codigo";
          public          postgres    false    204            ?            1259    16499    Editora    TABLE     ?   CREATE TABLE public."Editora" (
    "Nome" character varying(200),
    "Endereco" character varying(256),
    "Telefone" character varying(16),
    "NomeGerente" character varying(200),
    "Codigo" integer NOT NULL
);
    DROP TABLE public."Editora";
       public         heap    postgres    false            ?            1259    16516    Editora_Codigo_seq    SEQUENCE     ?   CREATE SEQUENCE public."Editora_Codigo_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."Editora_Codigo_seq";
       public          postgres    false    203            ?           0    0    Editora_Codigo_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Editora_Codigo_seq" OWNED BY public."Editora"."Codigo";
          public          postgres    false    205            ?            1259    16488    Livro    TABLE     ?   CREATE TABLE public."Livro" (
    "NomeAutor" character varying(200),
    "CodigoEditora" integer,
    "ISBN" character varying(13),
    "QuantidadeEstoque" integer,
    "Codigo" integer NOT NULL,
    "Assunto" character varying(200)
);
    DROP TABLE public."Livro";
       public         heap    postgres    false            ?            1259    16527    Livro_Codigo_seq    SEQUENCE     ?   CREATE SEQUENCE public."Livro_Codigo_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Livro_Codigo_seq";
       public          postgres    false    202            ?           0    0    Livro_Codigo_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."Livro_Codigo_seq" OWNED BY public."Livro"."Codigo";
          public          postgres    false    206            ?            1259    16449    Pedido    TABLE     ?   CREATE TABLE public."Pedido" (
    "DataCompra" date,
    "CodigoLivro" integer NOT NULL,
    "CodigoCliente" integer NOT NULL,
    "Codigo" integer NOT NULL
);
    DROP TABLE public."Pedido";
       public         heap    postgres    false            ?            1259    16538    Pedido_Codigo_seq    SEQUENCE     ?   CREATE SEQUENCE public."Pedido_Codigo_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."Pedido_Codigo_seq";
       public          postgres    false    201            ?           0    0    Pedido_Codigo_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Pedido_Codigo_seq" OWNED BY public."Pedido"."Codigo";
          public          postgres    false    207            ?            1259    24634    SequelizeMeta    TABLE     R   CREATE TABLE public."SequelizeMeta" (
    name character varying(255) NOT NULL
);
 #   DROP TABLE public."SequelizeMeta";
       public         heap    postgres    false            ?            1259    24649    livro_teste    TABLE     r  CREATE TABLE public.livro_teste (
    id integer NOT NULL,
    descricao character varying(255) NOT NULL,
    editora integer NOT NULL,
    isbn character varying(13) NOT NULL,
    quantidade integer NOT NULL,
    assunto integer NOT NULL,
    autor integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
    DROP TABLE public.livro_teste;
       public         heap    postgres    false            ?            1259    24647    livro_teste_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.livro_teste_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.livro_teste_id_seq;
       public          postgres    false    210            ?           0    0    livro_teste_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.livro_teste_id_seq OWNED BY public.livro_teste.id;
          public          postgres    false    209            ?           2604    16624    Cliente Codigo    DEFAULT     v   ALTER TABLE ONLY public."Cliente" ALTER COLUMN "Codigo" SET DEFAULT nextval('public."Cliente_Codigo_seq"'::regclass);
 A   ALTER TABLE public."Cliente" ALTER COLUMN "Codigo" DROP DEFAULT;
       public          postgres    false    204    200            B           2604    16518    Editora Codigo    DEFAULT     v   ALTER TABLE ONLY public."Editora" ALTER COLUMN "Codigo" SET DEFAULT nextval('public."Editora_Codigo_seq"'::regclass);
 A   ALTER TABLE public."Editora" ALTER COLUMN "Codigo" DROP DEFAULT;
       public          postgres    false    205    203            A           2604    16529    Livro Codigo    DEFAULT     r   ALTER TABLE ONLY public."Livro" ALTER COLUMN "Codigo" SET DEFAULT nextval('public."Livro_Codigo_seq"'::regclass);
 ?   ALTER TABLE public."Livro" ALTER COLUMN "Codigo" DROP DEFAULT;
       public          postgres    false    206    202            @           2604    16540    Pedido Codigo    DEFAULT     t   ALTER TABLE ONLY public."Pedido" ALTER COLUMN "Codigo" SET DEFAULT nextval('public."Pedido_Codigo_seq"'::regclass);
 @   ALTER TABLE public."Pedido" ALTER COLUMN "Codigo" DROP DEFAULT;
       public          postgres    false    207    201            C           2604    24652    livro_teste id    DEFAULT     p   ALTER TABLE ONLY public.livro_teste ALTER COLUMN id SET DEFAULT nextval('public.livro_teste_id_seq'::regclass);
 =   ALTER TABLE public.livro_teste ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    210    210            ?          0    16443    Cliente 
   TABLE DATA           Z   COPY public."Cliente" ("Nome", "Endereço", "Telefone", "Codigo", "CPF_CNPJ") FROM stdin;
    public          postgres    false    200   ?3       ?          0    16499    Editora 
   TABLE DATA           \   COPY public."Editora" ("Nome", "Endereco", "Telefone", "NomeGerente", "Codigo") FROM stdin;
    public          postgres    false    203   a4       ?          0    16488    Livro 
   TABLE DATA           q   COPY public."Livro" ("NomeAutor", "CodigoEditora", "ISBN", "QuantidadeEstoque", "Codigo", "Assunto") FROM stdin;
    public          postgres    false    202   ?4       ?          0    16449    Pedido 
   TABLE DATA           Z   COPY public."Pedido" ("DataCompra", "CodigoLivro", "CodigoCliente", "Codigo") FROM stdin;
    public          postgres    false    201   X5       ?          0    24634    SequelizeMeta 
   TABLE DATA           /   COPY public."SequelizeMeta" (name) FROM stdin;
    public          postgres    false    208   ?5       ?          0    24649    livro_teste 
   TABLE DATA           w   COPY public.livro_teste (id, descricao, editora, isbn, quantidade, assunto, autor, created_at, updated_at) FROM stdin;
    public          postgres    false    210   ?5       ?           0    0    Cliente_Codigo_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Cliente_Codigo_seq"', 17, true);
          public          postgres    false    204            ?           0    0    Editora_Codigo_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Editora_Codigo_seq"', 8, true);
          public          postgres    false    205            ?           0    0    Livro_Codigo_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Livro_Codigo_seq"', 9, true);
          public          postgres    false    206            ?           0    0    Pedido_Codigo_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Pedido_Codigo_seq"', 5, true);
          public          postgres    false    207            ?           0    0    livro_teste_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.livro_teste_id_seq', 1, false);
          public          postgres    false    209            E           2606    16626    Cliente Cliente_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."Cliente"
    ADD CONSTRAINT "Cliente_pkey" PRIMARY KEY ("Codigo");
 B   ALTER TABLE ONLY public."Cliente" DROP CONSTRAINT "Cliente_pkey";
       public            postgres    false    200            K           2606    16526    Editora Editora_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."Editora"
    ADD CONSTRAINT "Editora_pkey" PRIMARY KEY ("Codigo");
 B   ALTER TABLE ONLY public."Editora" DROP CONSTRAINT "Editora_pkey";
       public            postgres    false    203            I           2606    16537    Livro Livro_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Livro"
    ADD CONSTRAINT "Livro_pkey" PRIMARY KEY ("Codigo");
 >   ALTER TABLE ONLY public."Livro" DROP CONSTRAINT "Livro_pkey";
       public            postgres    false    202            G           2606    16548    Pedido Pedido_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Pedido"
    ADD CONSTRAINT "Pedido_pkey" PRIMARY KEY ("Codigo");
 @   ALTER TABLE ONLY public."Pedido" DROP CONSTRAINT "Pedido_pkey";
       public            postgres    false    201            M           2606    24638     SequelizeMeta SequelizeMeta_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."SequelizeMeta"
    ADD CONSTRAINT "SequelizeMeta_pkey" PRIMARY KEY (name);
 N   ALTER TABLE ONLY public."SequelizeMeta" DROP CONSTRAINT "SequelizeMeta_pkey";
       public            postgres    false    208            O           2606    24654    livro_teste livro_teste_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.livro_teste
    ADD CONSTRAINT livro_teste_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.livro_teste DROP CONSTRAINT livro_teste_pkey;
       public            postgres    false    210            R           2606    16588    Livro livro_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Livro"
    ADD CONSTRAINT livro_fk FOREIGN KEY ("CodigoEditora") REFERENCES public."Editora"("Codigo");
 :   ALTER TABLE ONLY public."Livro" DROP CONSTRAINT livro_fk;
       public          postgres    false    202    2891    203            P           2606    16593    Pedido pedido_fk    FK CONSTRAINT        ALTER TABLE ONLY public."Pedido"
    ADD CONSTRAINT pedido_fk FOREIGN KEY ("CodigoLivro") REFERENCES public."Livro"("Codigo");
 <   ALTER TABLE ONLY public."Pedido" DROP CONSTRAINT pedido_fk;
       public          postgres    false    202    2889    201            Q           2606    16627    Pedido pedido_fk_1    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Pedido"
    ADD CONSTRAINT pedido_fk_1 FOREIGN KEY ("CodigoCliente") REFERENCES public."Cliente"("Codigo");
 >   ALTER TABLE ONLY public."Pedido" DROP CONSTRAINT pedido_fk_1;
       public          postgres    false    201    200    2885            ?   ?   x?]?A?0???????????F?[7?ҤtLϯTW??????s?zN?|?z?}?уq??sRJP??T?4Jq??㍫????!??O??????5??;ʁ??!?B?%l??D?>?Dk??2L??ߑ?j-??V?{W7Z??N???1?      ?   |   x?sL*???>?8_! ?4'?????????ܔ?7?(931(???_????S????X?ibRbjj??Ԟ??i?囘?????_?X?il	3?-1	(n?????f?H?)?OifU"?W? ?X(?      ?   [   x??L?/R??K??L????4?4426153??40?4?}???p9????(?$fsZp??? 5?r?r?f%*df'r??qqq *??      ?   &   x?3202?50?5??4?4?4?2?	?????\1z\\\ ?1?      ?   6   x?320240126 K??̼????????̢??????Ē??<??b?=... WX?      ?      x?????? ? ?     
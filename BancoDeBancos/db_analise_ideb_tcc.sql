PGDMP      *                |            db_analise_ideb    16.1    16.1 `    i           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            j           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            k           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            l           1262    132755    db_analise_ideb    DATABASE     �   CREATE DATABASE db_analise_ideb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE db_analise_ideb;
                postgres    false            �            1259    133209    dim_categoria    TABLE     s   CREATE TABLE public.dim_categoria (
    id_categoria integer NOT NULL,
    descricao character varying NOT NULL
);
 !   DROP TABLE public.dim_categoria;
       public         heap    postgres    false            �            1259    133208    dim_categoria_id_categoria_seq    SEQUENCE     �   CREATE SEQUENCE public.dim_categoria_id_categoria_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.dim_categoria_id_categoria_seq;
       public          postgres    false    216            m           0    0    dim_categoria_id_categoria_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.dim_categoria_id_categoria_seq OWNED BY public.dim_categoria.id_categoria;
          public          postgres    false    215            �            1259    133218    dim_dependencia    TABLE     w   CREATE TABLE public.dim_dependencia (
    id_dependencia integer NOT NULL,
    descricao character varying NOT NULL
);
 #   DROP TABLE public.dim_dependencia;
       public         heap    postgres    false            �            1259    133217 "   dim_dependencia_id_dependencia_seq    SEQUENCE     �   CREATE SEQUENCE public.dim_dependencia_id_dependencia_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.dim_dependencia_id_dependencia_seq;
       public          postgres    false    218            n           0    0 "   dim_dependencia_id_dependencia_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.dim_dependencia_id_dependencia_seq OWNED BY public.dim_dependencia.id_dependencia;
          public          postgres    false    217            �            1259    133227 
   dim_escola    TABLE     c  CREATE TABLE public.dim_escola (
    id_escola integer NOT NULL,
    sg_uf character varying NOT NULL,
    co_municipio integer NOT NULL,
    no_municipio character varying NOT NULL,
    cod_inep integer NOT NULL,
    no_escola character varying NOT NULL,
    tipo_localidade character varying NOT NULL,
    tipo_dependencia character varying NOT NULL
);
    DROP TABLE public.dim_escola;
       public         heap    postgres    false            �            1259    133226    dim_escola_id_escola_seq    SEQUENCE     �   CREATE SEQUENCE public.dim_escola_id_escola_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.dim_escola_id_escola_seq;
       public          postgres    false    220            o           0    0    dim_escola_id_escola_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.dim_escola_id_escola_seq OWNED BY public.dim_escola.id_escola;
          public          postgres    false    219            �            1259    133236    dim_indicador    TABLE     s   CREATE TABLE public.dim_indicador (
    id_indicador integer NOT NULL,
    descricao character varying NOT NULL
);
 !   DROP TABLE public.dim_indicador;
       public         heap    postgres    false            �            1259    133235    dim_indicador_id_indicador_seq    SEQUENCE     �   CREATE SEQUENCE public.dim_indicador_id_indicador_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.dim_indicador_id_indicador_seq;
       public          postgres    false    222            p           0    0    dim_indicador_id_indicador_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.dim_indicador_id_indicador_seq OWNED BY public.dim_indicador.id_indicador;
          public          postgres    false    221            �            1259    133245    dim_municipio    TABLE     �   CREATE TABLE public.dim_municipio (
    id_municipio integer NOT NULL,
    sg_uf character varying NOT NULL,
    co_municipio integer NOT NULL,
    no_municipio character varying NOT NULL
);
 !   DROP TABLE public.dim_municipio;
       public         heap    postgres    false            �            1259    133244    dim_municipio_id_municipio_seq    SEQUENCE     �   CREATE SEQUENCE public.dim_municipio_id_municipio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.dim_municipio_id_municipio_seq;
       public          postgres    false    224            q           0    0    dim_municipio_id_municipio_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.dim_municipio_id_municipio_seq OWNED BY public.dim_municipio.id_municipio;
          public          postgres    false    223            �            1259    133254 	   dim_tempo    TABLE     [   CREATE TABLE public.dim_tempo (
    id_tempo integer NOT NULL,
    ano integer NOT NULL
);
    DROP TABLE public.dim_tempo;
       public         heap    postgres    false            �            1259    133253    dim_tempo_id_tempo_seq    SEQUENCE     �   CREATE SEQUENCE public.dim_tempo_id_tempo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.dim_tempo_id_tempo_seq;
       public          postgres    false    226            r           0    0    dim_tempo_id_tempo_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.dim_tempo_id_tempo_seq OWNED BY public.dim_tempo.id_tempo;
          public          postgres    false    225            �            1259    133261    dim_zona    TABLE     i   CREATE TABLE public.dim_zona (
    id_zona integer NOT NULL,
    descricao character varying NOT NULL
);
    DROP TABLE public.dim_zona;
       public         heap    postgres    false            �            1259    133260    dim_zona_id_zona_seq    SEQUENCE     �   CREATE SEQUENCE public.dim_zona_id_zona_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.dim_zona_id_zona_seq;
       public          postgres    false    228            s           0    0    dim_zona_id_zona_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.dim_zona_id_zona_seq OWNED BY public.dim_zona.id_zona;
          public          postgres    false    227            �            1259    133294    fato_aluno_investimento    TABLE     �   CREATE TABLE public.fato_aluno_investimento (
    fk_municipio integer NOT NULL,
    fk_tempo integer NOT NULL,
    fk_dependencia integer NOT NULL,
    fk_indicador integer NOT NULL,
    valor_declarado double precision NOT NULL
);
 +   DROP TABLE public.fato_aluno_investimento;
       public         heap    postgres    false            �            1259    133269    fato_ideb_escola_anos_finais    TABLE       CREATE TABLE public.fato_ideb_escola_anos_finais (
    fk_escola integer NOT NULL,
    fk_dependencia integer NOT NULL,
    fk_tempo integer NOT NULL,
    ideb_anos_finais double precision NOT NULL,
    ideb_projetado_anos_finais double precision NOT NULL
);
 0   DROP TABLE public.fato_ideb_escola_anos_finais;
       public         heap    postgres    false            �            1259    133274    fato_ideb_escola_anos_iniciais    TABLE     	  CREATE TABLE public.fato_ideb_escola_anos_iniciais (
    fk_escola integer NOT NULL,
    fk_tempo integer NOT NULL,
    fk_dependencia integer NOT NULL,
    ideb_anos_iniciais double precision NOT NULL,
    ideb_projetado_anos_iniciais double precision NOT NULL
);
 2   DROP TABLE public.fato_ideb_escola_anos_iniciais;
       public         heap    postgres    false            �            1259    133279    fato_ideb_municipio    TABLE     F  CREATE TABLE public.fato_ideb_municipio (
    fk_municipio integer NOT NULL,
    fk_tempo integer NOT NULL,
    ideb_anos_iniciais double precision NOT NULL,
    ideb_anos_finais double precision NOT NULL,
    ideb_projetado_anos_iniciais double precision NOT NULL,
    ideb_projetado_anos_finais double precision NOT NULL
);
 '   DROP TABLE public.fato_ideb_municipio;
       public         heap    postgres    false            �            1259    133284    fato_profs_graduados_municipio    TABLE     V  CREATE TABLE public.fato_profs_graduados_municipio (
    fk_municipio integer NOT NULL,
    fk_tempo integer NOT NULL,
    fk_zona integer NOT NULL,
    total_professores_graduados double precision NOT NULL,
    professores_graduados_anos_iniciais double precision NOT NULL,
    professores_graduados_anos_finais double precision NOT NULL
);
 2   DROP TABLE public.fato_profs_graduados_municipio;
       public         heap    postgres    false            �            1259    133299    fato_remuneracao_docente    TABLE     �  CREATE TABLE public.fato_remuneracao_docente (
    fk_municipio integer NOT NULL,
    fk_tempo integer NOT NULL,
    fk_dependencia integer NOT NULL,
    fk_categoria integer NOT NULL,
    nu_docentes integer NOT NULL,
    porcentagem_docentes_localizados_rais double precision NOT NULL,
    carga_horaria_media_semanal double precision NOT NULL,
    remuneracao_padronizada_quarenta_horas double precision NOT NULL
);
 ,   DROP TABLE public.fato_remuneracao_docente;
       public         heap    postgres    false            �            1259    133289    fato_taxa_rendimento    TABLE     ^  CREATE TABLE public.fato_taxa_rendimento (
    fk_municipio integer NOT NULL,
    fk_tempo integer NOT NULL,
    fk_zona integer NOT NULL,
    aprovados_ai double precision NOT NULL,
    aprovados_af double precision NOT NULL,
    total_aprovados_ensino_fundamental double precision NOT NULL,
    reprovados_ai double precision NOT NULL,
    reprovados_af double precision NOT NULL,
    total_reprovados_ensino_fundamental double precision NOT NULL,
    abandonos_ai double precision NOT NULL,
    abandonos_af double precision NOT NULL,
    total_abandonos_ensino_fundamental double precision NOT NULL
);
 (   DROP TABLE public.fato_taxa_rendimento;
       public         heap    postgres    false            �           2604    133212    dim_categoria id_categoria    DEFAULT     �   ALTER TABLE ONLY public.dim_categoria ALTER COLUMN id_categoria SET DEFAULT nextval('public.dim_categoria_id_categoria_seq'::regclass);
 I   ALTER TABLE public.dim_categoria ALTER COLUMN id_categoria DROP DEFAULT;
       public          postgres    false    216    215    216            �           2604    133221    dim_dependencia id_dependencia    DEFAULT     �   ALTER TABLE ONLY public.dim_dependencia ALTER COLUMN id_dependencia SET DEFAULT nextval('public.dim_dependencia_id_dependencia_seq'::regclass);
 M   ALTER TABLE public.dim_dependencia ALTER COLUMN id_dependencia DROP DEFAULT;
       public          postgres    false    218    217    218            �           2604    133230    dim_escola id_escola    DEFAULT     |   ALTER TABLE ONLY public.dim_escola ALTER COLUMN id_escola SET DEFAULT nextval('public.dim_escola_id_escola_seq'::regclass);
 C   ALTER TABLE public.dim_escola ALTER COLUMN id_escola DROP DEFAULT;
       public          postgres    false    219    220    220            �           2604    133239    dim_indicador id_indicador    DEFAULT     �   ALTER TABLE ONLY public.dim_indicador ALTER COLUMN id_indicador SET DEFAULT nextval('public.dim_indicador_id_indicador_seq'::regclass);
 I   ALTER TABLE public.dim_indicador ALTER COLUMN id_indicador DROP DEFAULT;
       public          postgres    false    221    222    222            �           2604    133248    dim_municipio id_municipio    DEFAULT     �   ALTER TABLE ONLY public.dim_municipio ALTER COLUMN id_municipio SET DEFAULT nextval('public.dim_municipio_id_municipio_seq'::regclass);
 I   ALTER TABLE public.dim_municipio ALTER COLUMN id_municipio DROP DEFAULT;
       public          postgres    false    224    223    224            �           2604    133257    dim_tempo id_tempo    DEFAULT     x   ALTER TABLE ONLY public.dim_tempo ALTER COLUMN id_tempo SET DEFAULT nextval('public.dim_tempo_id_tempo_seq'::regclass);
 A   ALTER TABLE public.dim_tempo ALTER COLUMN id_tempo DROP DEFAULT;
       public          postgres    false    226    225    226            �           2604    133264    dim_zona id_zona    DEFAULT     t   ALTER TABLE ONLY public.dim_zona ALTER COLUMN id_zona SET DEFAULT nextval('public.dim_zona_id_zona_seq'::regclass);
 ?   ALTER TABLE public.dim_zona ALTER COLUMN id_zona DROP DEFAULT;
       public          postgres    false    227    228    228            S          0    133209    dim_categoria 
   TABLE DATA           @   COPY public.dim_categoria (id_categoria, descricao) FROM stdin;
    public          postgres    false    216   G�       U          0    133218    dim_dependencia 
   TABLE DATA           D   COPY public.dim_dependencia (id_dependencia, descricao) FROM stdin;
    public          postgres    false    218   ~�       W          0    133227 
   dim_escola 
   TABLE DATA           �   COPY public.dim_escola (id_escola, sg_uf, co_municipio, no_municipio, cod_inep, no_escola, tipo_localidade, tipo_dependencia) FROM stdin;
    public          postgres    false    220   Ն       Y          0    133236    dim_indicador 
   TABLE DATA           @   COPY public.dim_indicador (id_indicador, descricao) FROM stdin;
    public          postgres    false    222   ��       [          0    133245    dim_municipio 
   TABLE DATA           X   COPY public.dim_municipio (id_municipio, sg_uf, co_municipio, no_municipio) FROM stdin;
    public          postgres    false    224   Β       ]          0    133254 	   dim_tempo 
   TABLE DATA           2   COPY public.dim_tempo (id_tempo, ano) FROM stdin;
    public          postgres    false    226   ��       _          0    133261    dim_zona 
   TABLE DATA           6   COPY public.dim_zona (id_zona, descricao) FROM stdin;
    public          postgres    false    228   �       e          0    133294    fato_aluno_investimento 
   TABLE DATA           x   COPY public.fato_aluno_investimento (fk_municipio, fk_tempo, fk_dependencia, fk_indicador, valor_declarado) FROM stdin;
    public          postgres    false    234   �       `          0    133269    fato_ideb_escola_anos_finais 
   TABLE DATA           �   COPY public.fato_ideb_escola_anos_finais (fk_escola, fk_dependencia, fk_tempo, ideb_anos_finais, ideb_projetado_anos_finais) FROM stdin;
    public          postgres    false    229   ��       a          0    133274    fato_ideb_escola_anos_iniciais 
   TABLE DATA           �   COPY public.fato_ideb_escola_anos_iniciais (fk_escola, fk_tempo, fk_dependencia, ideb_anos_iniciais, ideb_projetado_anos_iniciais) FROM stdin;
    public          postgres    false    230   m�       b          0    133279    fato_ideb_municipio 
   TABLE DATA           �   COPY public.fato_ideb_municipio (fk_municipio, fk_tempo, ideb_anos_iniciais, ideb_anos_finais, ideb_projetado_anos_iniciais, ideb_projetado_anos_finais) FROM stdin;
    public          postgres    false    231   ʠ       c          0    133284    fato_profs_graduados_municipio 
   TABLE DATA           �   COPY public.fato_profs_graduados_municipio (fk_municipio, fk_tempo, fk_zona, total_professores_graduados, professores_graduados_anos_iniciais, professores_graduados_anos_finais) FROM stdin;
    public          postgres    false    232   �       f          0    133299    fato_remuneracao_docente 
   TABLE DATA           �   COPY public.fato_remuneracao_docente (fk_municipio, fk_tempo, fk_dependencia, fk_categoria, nu_docentes, porcentagem_docentes_localizados_rais, carga_horaria_media_semanal, remuneracao_padronizada_quarenta_horas) FROM stdin;
    public          postgres    false    235   Ѩ       d          0    133289    fato_taxa_rendimento 
   TABLE DATA             COPY public.fato_taxa_rendimento (fk_municipio, fk_tempo, fk_zona, aprovados_ai, aprovados_af, total_aprovados_ensino_fundamental, reprovados_ai, reprovados_af, total_reprovados_ensino_fundamental, abandonos_ai, abandonos_af, total_abandonos_ensino_fundamental) FROM stdin;
    public          postgres    false    233   ߬       t           0    0    dim_categoria_id_categoria_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.dim_categoria_id_categoria_seq', 3, true);
          public          postgres    false    215            u           0    0 "   dim_dependencia_id_dependencia_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.dim_dependencia_id_dependencia_seq', 6, true);
          public          postgres    false    217            v           0    0    dim_escola_id_escola_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.dim_escola_id_escola_seq', 140, true);
          public          postgres    false    219            w           0    0    dim_indicador_id_indicador_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.dim_indicador_id_indicador_seq', 4, true);
          public          postgres    false    221            x           0    0    dim_municipio_id_municipio_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.dim_municipio_id_municipio_seq', 11, true);
          public          postgres    false    223            y           0    0    dim_tempo_id_tempo_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.dim_tempo_id_tempo_seq', 8, true);
          public          postgres    false    225            z           0    0    dim_zona_id_zona_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.dim_zona_id_zona_seq', 3, true);
          public          postgres    false    227            �           2606    133216     dim_categoria dim_categoria_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.dim_categoria
    ADD CONSTRAINT dim_categoria_pkey PRIMARY KEY (id_categoria);
 J   ALTER TABLE ONLY public.dim_categoria DROP CONSTRAINT dim_categoria_pkey;
       public            postgres    false    216            �           2606    133225 $   dim_dependencia dim_dependencia_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.dim_dependencia
    ADD CONSTRAINT dim_dependencia_pkey PRIMARY KEY (id_dependencia);
 N   ALTER TABLE ONLY public.dim_dependencia DROP CONSTRAINT dim_dependencia_pkey;
       public            postgres    false    218            �           2606    133234    dim_escola dim_escola_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.dim_escola
    ADD CONSTRAINT dim_escola_pkey PRIMARY KEY (id_escola);
 D   ALTER TABLE ONLY public.dim_escola DROP CONSTRAINT dim_escola_pkey;
       public            postgres    false    220            �           2606    133243     dim_indicador dim_indicador_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.dim_indicador
    ADD CONSTRAINT dim_indicador_pkey PRIMARY KEY (id_indicador);
 J   ALTER TABLE ONLY public.dim_indicador DROP CONSTRAINT dim_indicador_pkey;
       public            postgres    false    222            �           2606    133252     dim_municipio dim_municipio_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.dim_municipio
    ADD CONSTRAINT dim_municipio_pkey PRIMARY KEY (id_municipio);
 J   ALTER TABLE ONLY public.dim_municipio DROP CONSTRAINT dim_municipio_pkey;
       public            postgres    false    224            �           2606    133259    dim_tempo dim_tempo_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.dim_tempo
    ADD CONSTRAINT dim_tempo_pkey PRIMARY KEY (id_tempo);
 B   ALTER TABLE ONLY public.dim_tempo DROP CONSTRAINT dim_tempo_pkey;
       public            postgres    false    226            �           2606    133268    dim_zona dim_zona_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.dim_zona
    ADD CONSTRAINT dim_zona_pkey PRIMARY KEY (id_zona);
 @   ALTER TABLE ONLY public.dim_zona DROP CONSTRAINT dim_zona_pkey;
       public            postgres    false    228            �           2606    133273 >   fato_ideb_escola_anos_finais fato_ideb_escola_anos_finais_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.fato_ideb_escola_anos_finais
    ADD CONSTRAINT fato_ideb_escola_anos_finais_pkey PRIMARY KEY (fk_escola, fk_tempo, fk_dependencia);
 h   ALTER TABLE ONLY public.fato_ideb_escola_anos_finais DROP CONSTRAINT fato_ideb_escola_anos_finais_pkey;
       public            postgres    false    229    229    229            �           2606    133278 B   fato_ideb_escola_anos_iniciais fato_ideb_escola_anos_iniciais_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.fato_ideb_escola_anos_iniciais
    ADD CONSTRAINT fato_ideb_escola_anos_iniciais_pkey PRIMARY KEY (fk_escola, fk_tempo, fk_dependencia);
 l   ALTER TABLE ONLY public.fato_ideb_escola_anos_iniciais DROP CONSTRAINT fato_ideb_escola_anos_iniciais_pkey;
       public            postgres    false    230    230    230            �           2606    133283 ,   fato_ideb_municipio fato_ideb_municipio_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.fato_ideb_municipio
    ADD CONSTRAINT fato_ideb_municipio_pkey PRIMARY KEY (fk_municipio, fk_tempo);
 V   ALTER TABLE ONLY public.fato_ideb_municipio DROP CONSTRAINT fato_ideb_municipio_pkey;
       public            postgres    false    231    231            �           2606    133298 4   fato_aluno_investimento fato_investimento_aluno_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.fato_aluno_investimento
    ADD CONSTRAINT fato_investimento_aluno_pkey PRIMARY KEY (fk_municipio, fk_tempo, fk_dependencia, fk_indicador);
 ^   ALTER TABLE ONLY public.fato_aluno_investimento DROP CONSTRAINT fato_investimento_aluno_pkey;
       public            postgres    false    234    234    234    234            �           2606    133288 9   fato_profs_graduados_municipio fato_professores_graduados 
   CONSTRAINT     �   ALTER TABLE ONLY public.fato_profs_graduados_municipio
    ADD CONSTRAINT fato_professores_graduados PRIMARY KEY (fk_municipio, fk_tempo, fk_zona);
 c   ALTER TABLE ONLY public.fato_profs_graduados_municipio DROP CONSTRAINT fato_professores_graduados;
       public            postgres    false    232    232    232            �           2606    133303 6   fato_remuneracao_docente fato_remuneracao_docente_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.fato_remuneracao_docente
    ADD CONSTRAINT fato_remuneracao_docente_pkey PRIMARY KEY (fk_municipio, fk_tempo, fk_dependencia, fk_categoria);
 `   ALTER TABLE ONLY public.fato_remuneracao_docente DROP CONSTRAINT fato_remuneracao_docente_pkey;
       public            postgres    false    235    235    235    235            �           2606    133293 .   fato_taxa_rendimento fato_taxa_rendimento_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.fato_taxa_rendimento
    ADD CONSTRAINT fato_taxa_rendimento_pkey PRIMARY KEY (fk_municipio, fk_tempo, fk_zona);
 X   ALTER TABLE ONLY public.fato_taxa_rendimento DROP CONSTRAINT fato_taxa_rendimento_pkey;
       public            postgres    false    233    233    233            �           2606    133409 %   fato_remuneracao_docente fk_categoria    FK CONSTRAINT     �   ALTER TABLE ONLY public.fato_remuneracao_docente
    ADD CONSTRAINT fk_categoria FOREIGN KEY (fk_categoria) REFERENCES public.dim_categoria(id_categoria) NOT VALID;
 O   ALTER TABLE ONLY public.fato_remuneracao_docente DROP CONSTRAINT fk_categoria;
       public          postgres    false    216    235    4754            �           2606    133309 +   fato_ideb_escola_anos_finais fk_dependencia    FK CONSTRAINT     �   ALTER TABLE ONLY public.fato_ideb_escola_anos_finais
    ADD CONSTRAINT fk_dependencia FOREIGN KEY (fk_dependencia) REFERENCES public.dim_dependencia(id_dependencia) NOT VALID;
 U   ALTER TABLE ONLY public.fato_ideb_escola_anos_finais DROP CONSTRAINT fk_dependencia;
       public          postgres    false    218    229    4756            �           2606    133329 -   fato_ideb_escola_anos_iniciais fk_dependencia    FK CONSTRAINT     �   ALTER TABLE ONLY public.fato_ideb_escola_anos_iniciais
    ADD CONSTRAINT fk_dependencia FOREIGN KEY (fk_dependencia) REFERENCES public.dim_dependencia(id_dependencia) NOT VALID;
 W   ALTER TABLE ONLY public.fato_ideb_escola_anos_iniciais DROP CONSTRAINT fk_dependencia;
       public          postgres    false    218    230    4756            �           2606    133384 &   fato_aluno_investimento fk_dependencia    FK CONSTRAINT     �   ALTER TABLE ONLY public.fato_aluno_investimento
    ADD CONSTRAINT fk_dependencia FOREIGN KEY (fk_dependencia) REFERENCES public.dim_dependencia(id_dependencia) NOT VALID;
 P   ALTER TABLE ONLY public.fato_aluno_investimento DROP CONSTRAINT fk_dependencia;
       public          postgres    false    4756    218    234            �           2606    133404 '   fato_remuneracao_docente fk_dependencia    FK CONSTRAINT     �   ALTER TABLE ONLY public.fato_remuneracao_docente
    ADD CONSTRAINT fk_dependencia FOREIGN KEY (fk_dependencia) REFERENCES public.dim_dependencia(id_dependencia) NOT VALID;
 Q   ALTER TABLE ONLY public.fato_remuneracao_docente DROP CONSTRAINT fk_dependencia;
       public          postgres    false    235    4756    218            �           2606    133304 &   fato_ideb_escola_anos_finais fk_escola    FK CONSTRAINT     �   ALTER TABLE ONLY public.fato_ideb_escola_anos_finais
    ADD CONSTRAINT fk_escola FOREIGN KEY (fk_escola) REFERENCES public.dim_escola(id_escola) NOT VALID;
 P   ALTER TABLE ONLY public.fato_ideb_escola_anos_finais DROP CONSTRAINT fk_escola;
       public          postgres    false    229    4758    220            �           2606    133319 (   fato_ideb_escola_anos_iniciais fk_escola    FK CONSTRAINT     �   ALTER TABLE ONLY public.fato_ideb_escola_anos_iniciais
    ADD CONSTRAINT fk_escola FOREIGN KEY (fk_escola) REFERENCES public.dim_escola(id_escola) NOT VALID;
 R   ALTER TABLE ONLY public.fato_ideb_escola_anos_iniciais DROP CONSTRAINT fk_escola;
       public          postgres    false    230    220    4758            �           2606    133389 $   fato_aluno_investimento fk_indicador    FK CONSTRAINT     �   ALTER TABLE ONLY public.fato_aluno_investimento
    ADD CONSTRAINT fk_indicador FOREIGN KEY (fk_indicador) REFERENCES public.dim_indicador(id_indicador) NOT VALID;
 N   ALTER TABLE ONLY public.fato_aluno_investimento DROP CONSTRAINT fk_indicador;
       public          postgres    false    4760    222    234            �           2606    133334     fato_ideb_municipio fk_municipio    FK CONSTRAINT     �   ALTER TABLE ONLY public.fato_ideb_municipio
    ADD CONSTRAINT fk_municipio FOREIGN KEY (fk_municipio) REFERENCES public.dim_municipio(id_municipio) NOT VALID;
 J   ALTER TABLE ONLY public.fato_ideb_municipio DROP CONSTRAINT fk_municipio;
       public          postgres    false    4762    224    231            �           2606    133344 +   fato_profs_graduados_municipio fk_municipio    FK CONSTRAINT     �   ALTER TABLE ONLY public.fato_profs_graduados_municipio
    ADD CONSTRAINT fk_municipio FOREIGN KEY (fk_municipio) REFERENCES public.dim_municipio(id_municipio) NOT VALID;
 U   ALTER TABLE ONLY public.fato_profs_graduados_municipio DROP CONSTRAINT fk_municipio;
       public          postgres    false    4762    224    232            �           2606    133359 !   fato_taxa_rendimento fk_municipio    FK CONSTRAINT     �   ALTER TABLE ONLY public.fato_taxa_rendimento
    ADD CONSTRAINT fk_municipio FOREIGN KEY (fk_municipio) REFERENCES public.dim_municipio(id_municipio) NOT VALID;
 K   ALTER TABLE ONLY public.fato_taxa_rendimento DROP CONSTRAINT fk_municipio;
       public          postgres    false    233    4762    224            �           2606    133374 $   fato_aluno_investimento fk_municipio    FK CONSTRAINT     �   ALTER TABLE ONLY public.fato_aluno_investimento
    ADD CONSTRAINT fk_municipio FOREIGN KEY (fk_municipio) REFERENCES public.dim_municipio(id_municipio) NOT VALID;
 N   ALTER TABLE ONLY public.fato_aluno_investimento DROP CONSTRAINT fk_municipio;
       public          postgres    false    4762    234    224            �           2606    133394 %   fato_remuneracao_docente fk_municipio    FK CONSTRAINT     �   ALTER TABLE ONLY public.fato_remuneracao_docente
    ADD CONSTRAINT fk_municipio FOREIGN KEY (fk_municipio) REFERENCES public.dim_municipio(id_municipio) NOT VALID;
 O   ALTER TABLE ONLY public.fato_remuneracao_docente DROP CONSTRAINT fk_municipio;
       public          postgres    false    224    235    4762            �           2606    133314 %   fato_ideb_escola_anos_finais fk_tempo    FK CONSTRAINT     �   ALTER TABLE ONLY public.fato_ideb_escola_anos_finais
    ADD CONSTRAINT fk_tempo FOREIGN KEY (fk_tempo) REFERENCES public.dim_tempo(id_tempo) NOT VALID;
 O   ALTER TABLE ONLY public.fato_ideb_escola_anos_finais DROP CONSTRAINT fk_tempo;
       public          postgres    false    229    4764    226            �           2606    133324 '   fato_ideb_escola_anos_iniciais fk_tempo    FK CONSTRAINT     �   ALTER TABLE ONLY public.fato_ideb_escola_anos_iniciais
    ADD CONSTRAINT fk_tempo FOREIGN KEY (fk_tempo) REFERENCES public.dim_tempo(id_tempo) NOT VALID;
 Q   ALTER TABLE ONLY public.fato_ideb_escola_anos_iniciais DROP CONSTRAINT fk_tempo;
       public          postgres    false    226    4764    230            �           2606    133339    fato_ideb_municipio fk_tempo    FK CONSTRAINT     �   ALTER TABLE ONLY public.fato_ideb_municipio
    ADD CONSTRAINT fk_tempo FOREIGN KEY (fk_tempo) REFERENCES public.dim_tempo(id_tempo) NOT VALID;
 F   ALTER TABLE ONLY public.fato_ideb_municipio DROP CONSTRAINT fk_tempo;
       public          postgres    false    231    226    4764            �           2606    133349 '   fato_profs_graduados_municipio fk_tempo    FK CONSTRAINT     �   ALTER TABLE ONLY public.fato_profs_graduados_municipio
    ADD CONSTRAINT fk_tempo FOREIGN KEY (fk_tempo) REFERENCES public.dim_tempo(id_tempo) NOT VALID;
 Q   ALTER TABLE ONLY public.fato_profs_graduados_municipio DROP CONSTRAINT fk_tempo;
       public          postgres    false    4764    226    232            �           2606    133364    fato_taxa_rendimento fk_tempo    FK CONSTRAINT     �   ALTER TABLE ONLY public.fato_taxa_rendimento
    ADD CONSTRAINT fk_tempo FOREIGN KEY (fk_tempo) REFERENCES public.dim_tempo(id_tempo) NOT VALID;
 G   ALTER TABLE ONLY public.fato_taxa_rendimento DROP CONSTRAINT fk_tempo;
       public          postgres    false    4764    226    233            �           2606    133379     fato_aluno_investimento fk_tempo    FK CONSTRAINT     �   ALTER TABLE ONLY public.fato_aluno_investimento
    ADD CONSTRAINT fk_tempo FOREIGN KEY (fk_tempo) REFERENCES public.dim_tempo(id_tempo) NOT VALID;
 J   ALTER TABLE ONLY public.fato_aluno_investimento DROP CONSTRAINT fk_tempo;
       public          postgres    false    226    4764    234            �           2606    133399 !   fato_remuneracao_docente fk_tempo    FK CONSTRAINT     �   ALTER TABLE ONLY public.fato_remuneracao_docente
    ADD CONSTRAINT fk_tempo FOREIGN KEY (fk_tempo) REFERENCES public.dim_tempo(id_tempo) NOT VALID;
 K   ALTER TABLE ONLY public.fato_remuneracao_docente DROP CONSTRAINT fk_tempo;
       public          postgres    false    235    226    4764            �           2606    133354 &   fato_profs_graduados_municipio fk_zona    FK CONSTRAINT     �   ALTER TABLE ONLY public.fato_profs_graduados_municipio
    ADD CONSTRAINT fk_zona FOREIGN KEY (fk_zona) REFERENCES public.dim_zona(id_zona) NOT VALID;
 P   ALTER TABLE ONLY public.fato_profs_graduados_municipio DROP CONSTRAINT fk_zona;
       public          postgres    false    228    4766    232            �           2606    133369    fato_taxa_rendimento fk_zona    FK CONSTRAINT     �   ALTER TABLE ONLY public.fato_taxa_rendimento
    ADD CONSTRAINT fk_zona FOREIGN KEY (fk_zona) REFERENCES public.dim_zona(id_zona) NOT VALID;
 F   ALTER TABLE ONLY public.fato_taxa_rendimento DROP CONSTRAINT fk_zona;
       public          postgres    false    233    4766    228            S   '   x�3��/I��2�.-H-��/�2�N�U�sc���� �;s      U   G   x�3��/I��2�t-.IL)2�9}K�2�3�l΀�̲ĔD.S΀û�r2���8�RSR���1z\\\ �Rk      W     x���K�ܸ���S���$JK�ĪfC˔T0
ٔ=������ls��&@._l>R���|��j�v���o��i�K�8Fq������^����ۗ��K�QV�X��!j)�8�t7�|�~����o�_��~��!	#p�)�"t�5љW�X�0>��|}�~���0,MfX��L�ND.[��fQO��v�b�L�'&``k@jXoq��'�j�"ڜY�"�h_��,,b&f(����g�Q�
�<�#���w7�~�=���� ed�D͚��{�=�S/� ��|~ԃ�p�}%��Ѩ���~Qo	~Kl�)HDab��+EW͛dQ+F�@nFNb��At��3�GѨ�Ӂ����P�>P��y�ث�Tm���հ��ț&[��P�@P�e(32�G�F`pL��Չ�w>d,(�ˢ�U�Ulީ�Оʽ����"ΌK���hta渏�!R�l��G��6�ul�X�<�U�/Ͽ}���ޫ(��*���0��f~V������?͎C�������b�8EFk!�V~֩��&����I2�n�x� F>y��p�����D��6�G���J�,cÒ��c���Lp�?)��a�VW�݃+��
�Τ>��
��!:Iq��"P��s�����Y�>�b|�c�ص��{h` �|�{ɵ���?�5 ��[hD��l�phC�]**[[ȉ�.�JR�����?Q-�
�������@������O//�'� �0�s��q��2:��c���é�؏,�+䳒�I9lx��($Yܴ�S��q����A)X�TсI{ii<�����!�Wj�lF`,������T�ii� >�&e�]s��D�Q���V��1q��66�`��;�AY"$���ǅ��R�-8z�c�W�� �O�a�簬�P�c�~�V��;v���v��6�T�,�N�]���4��uCCv���ׯ�_��&M��Zh"1г����Cr)��&$&��TP?�A��Ta)�v�8 L��^a�'�����!P�ރ�\g�D3�,p�+��n!x�<�K�� �;U�J=�#�G��p$�?��r~��qiE����jc-�!��,�7Vek�@	�V�疢�#�C8����;�A��F���-o��Sk��u��k(�"�ѢG*k��D�F��*8=;���^��^�@8&��<�Z�>���"T���6�R�q�{|}y�n�Ȗ����ݒ�P��eN^�J!��_�BD9Txk��1IL֑�2�`]N�p�+9��
�f��qGp�
7B��jD'T���d���!�͗_7��[���NRQ�W��0U�A�ĕ�~��<s��%%�<�3�����$��9qy������	T���vE��jM��^r#�2��]���/��gPU��$q�K�Xqu{�	,�;䞧*1-��<���nePA֝�-��y f�q65�F�gI���s�g�_�Y��1G./��p�Q�/z�y@-�A>(��[��T��L��!��Y�����t�Px��l
��@�CbVC Q)h�!p"I�gz�s6$U�.�N@��ʏI@�Y���2&;��i�@�mN@�i�͞tn��<�g�ڻ�$wT�$ w�����)an�j�9���<?� @����~����O��t�������Ư �a�Ȁӫ�C֮��h�H��0�H���[�m��:�{�x��w�!
�_�//�x%͹��=����|�XK4�}^��sdz��H�S;�9�ug�
�!��'rU�ٵw�ր3(�$�wu
��!�ȍ���ԠV�H��8�m\��������-1Z�r2�^��Y���e��+�@�'������z����}dHI�r<��fҁJB�7�����$���q�V���:eꣀ:�|I����*V��5,g�C������ۗ�׈��~~�:?In���U7v�̵�7��|E�Z��D��CX�&��¸6���[$0�[lbI�kf�mK=����p̈aUtڣ�x\$�I����M:Hh���(ǓX�n}���E�r#'�lHV�"���Wιc��-*�����[_�P�:�"����pU�F��Umb��t	e�2�f�$�F�Q=R9��j��B��\�2N
�]��W�af
�%7��E۰.�-5����TrI[�o�9��0�� %^��P�0ha��]��o:�l3�F)�0��翿G����#��)2+M�N����]tC�Lي�a��h{^�^�[��~=
3�uON͸{{=��-��Qth�dz��X�s!��^�6��zf�{��L]�[3�2�q�{��om\d�(��4��?�/O���*{˟Ǎ��+A�I�M$:Q5F��V����ܵ��߱Ԕ�/�Q�
�]Lw�߱��^i˚�����k5��jR�^������{1���[�ڼ��!3�w����6+���!����u��{� 2�D�1�kՓx�U��NT}�զ�3�`���o�T�Ψl�K�~���k��ߵX�Y,A%��r�B���xJ�"]����xw ��GR�8��.�@�0<=���y�j	�r])辯髯g\4�d��4�y�����c��>�V~E��B���*,R�W�S��� {Y��x��B}��st@F~J�8��c]���N��x�ďL�/���oZ�?��֟� -[ڽ�b��0w��4@��4��_w�j�pf�_���q�����_�N��;��dݽz`�T}+�wgا|�ѰiD��sE�
GG�a��!;"ؑ\ݚ2G	�����TU���=���C�E���6���FG��`�.YTh��_���Ç?323,      Y   �   x����j1���Sh	�KI��8��,!K�,��)[:�s�'t(�~�ؽrP��I�>��V��E�xL�w��'��+
��a���@�Ե�х�.�K
C���0�V,�阯�B�1��_��G��eY��l�*:�?1����J9%�1�yn�|v:R��F�,���a����}���0���/Z��1��qx      [   �   x�5ϱ
�0������Kڤ��.AG�g�-$���-N~E~̂�z��pX��D���-�X{:F��Bk�������$[&���eVSQ�;w��+��\��G4Y��<p�z�jѢ1�Nѧ�c��,UA�:X�_l�MK��{��G\�X�()���w�����r�j�|��i�<�B���G�      ]   2   x���  ���%x ����ik>F�*��KM���Jn�����	&      _   %   x�3��/I��2�-JJ�K�2�*-
��qqq ���      e   �  x�M�[�� E��� ����w���R�j�����~�c{�~�!z֜�ka1���Y&�2_�9�����4�|�by(�"{��&�ژ���JìXa������6�����3��T�>{��/��<���Vv��k#X����5���j�沀݇�^�UF4���x��Cv1�n��ʭU�U��wn�VO���~B���Gp(�b���#�]0�AZ�?+eCk��ʏ���]i�&X0������A���j�ui����֊b��к��mi]cK|�aT��]�y�����
�>#[�E��̏�Ϣ�R�|>3�W�gϝ�}F��X2���g�W��=fө)��ձ���� �n��tRR�0ӆ\-FI��t�~��[�|�����a���&g�ۯ�霻�,�2k�e��[U���ZQ�#���'"���� _����"�.��WqN�̠�\�6��M)��Pyɥ��4�_U�.¹:���"3�T�r��2�S9������*���*4 ���uzl���{L�
��߄��x]v�q�;C4܊���c�*��JY�U9���s��L�y=�]/(i�ie-�;�3ȻĚ3�F�m�{<�!�+�9ܹ(Κ�b�q)C��Ԫ�����(�OD�R�ġ�0I�mt��X��fT&BT�$��s��	ACUDE
�� �����Wǋꁝ���֋
SLe�9*Ln���7L�NE��Y���$�L���3��R篢f4ޮ�F<P䛼Ԩ�c�$v#�qpc�D�[?@38Fp�*̾Rn<��0�_�MPr�a����|{�@�~S���M��WǸ���Yk�x�C�v��
�Z�a_��|�)�?<��!��`�(�Y`�Ar�k`K�Ka�0n�k������x��?ڡi�      `   �  x�U�]��*��'�y+������u�[�w1U<�Zt��'���>s[z-�V��ߤ��_K�������&O�������{�_�ns�����[|���i�\����776��O��xd�d��2��V����{�~ V4bū|��$l�	k�ue�ob�+�h�{~��Ym�� n��Q����2��V��ٹ���f��U��+/��$h�`Wز �/`�}���_F>���L=�h���XuǪ;Vݱ�~`d��zl1��I;�)�b�H�c�y-%�Eg�a��qBrV}�/��T���O��
���34_Y��A��=�o���2��V���s!�:�N�L���?M�B@� ��Y����4(�D�xc��	�M8�Ih���W"b5@��W��!�g{
�g�0/�y)�Ki^J�R��p���������f����Y�gy��}һ�a�3�k��*jکzixz:�:,�Y)]/�������z��z��z��z���=Bs�P~�Qd�$e=N��qrp���7��7���'"=��8�(���	5�(�,�� �� �1���;��mz�K��МH1l�{#���ˈ�X/'f�v��N�a�e�Zn��2��p{����α��� �Φ�
hr��k�X��eW����<����?~����?�S������,��|F>�䞫8_�P�B�m$�K�^�T/R�)݋��EJ�r/!~i&�.E�w.=���#�gr���D�rr��Q���8Ec��8U3�e�dٹ���Z��]�I��Hqˋ���An䘹�9V��|��E}�X����R����)rN����lK%Ov8r���5�agTڍw�������<�c�N渳~v#�d8_��2�e�����"���n	y���yO��Ю�Nj�c�d\��t��%E�~ �,:oc��}���>�����������      a   M  x�]XY��0���2��e����H;4��я��{�׶$�@f��>�F���nY������M~�w�=͍&�y�a�`�W!'�_L�|��`y�F����F}�k�k�o��j ��>ˠ���.�2����M*E=���	��:���N����l(��3�aTt��01�kg�ɶ���C��D-����`��3���U�W���1�J/���{o`āX7��Ȩ���m���%J�Zb/q��� =��Q���f�� 4�i�ݠFfX�'�7�"*�h�Xͧ�ɹf���^3͜���3��g��`_��a��6\�'����k�H<.�a�ϑM�s4�y�I��<�,�a����#��3�`ꮼ���qHV��U��x�#����,_�P�Y\%�gd��� �qF�x��$�H���<>9(|rP����A�(�ό��I��C&RRRRRr�|���Thi�Ҭ�YK��( df�`���a?��#�Xz��b�����^���/fɫ�]M�e�ؼrJVNM�ySa�<��$�0���U��/J���R���_�])8�F�TyT���*��@�jF�y?%��`��}:z�S��w�+BZҊ�V��"�=z�t=���f�U�MG��{��Q�G����MY��J�3�~��ϴ��V?�y�Ksi�>���dE$��^�����k���E{�X��|����
�93ì:��1��3���9Gh �3��٧��<��c�*����
���BN	��"M�3E����͍�,#7K�3����pb���I9S�?�����,(�It6��i]`Qd�BX���cem���}������.�y�p��|��l�1��8:�9.;��O�����m�S1�|�� ����	�>=�¹����4�K�\Wp�	�?푉Υ�=WuX��A�&��%�k���a��g�d�3#Uk59렣,�&�M`��
蜥�L�����ܿ#Ir1V�5�/Y.Y/�G��WvHN���П�����,f�c��F���`X��(���L�����~���D[ �+�8�~rti�H��sg�دK8��w���W�{縗�{���2��1k����^<b�H�/Y.Y/�_���;��P��O��?���ԨbP��;n�VK-�\�������S-��Dl k�ڗV�[+G��	��}�mDV��������`��4b�l޷��6ΰ���Үm��3��t�k\7��=e�v��c"2�/�����_��
|���5;����YA}�4,��_�U��r&��w�D�ɾ�K-�&�K�K�K�K�<.y���{���5�mH      b   7  x�MT[�%!���t�������:&	�3u��!-Bt���Y͞���>��xF�9"G4y�<��9��@�ͶM�W[ș܃y����=��XM���Ȱ�=�1�����0s��߫�0�;��`��5�} [�յ�3�۪��BY#�#u�qU�ⶴ*9N`�4r
�S�<��U���TZ@��K*�T�z ��3�s�ɘ����K�@lU�(�0���#����n��R�T{��n*�0�/�6�Q���生��"6��V���M�8���ou����T��:d��NV ����/��/���ʋ�J1D��D��K|f�T�:O�Yc��������j�d��g�ѷt��$t�U�󺽳�!=�!{���vj��[��֤w����=��WA���sUs���m�^��x�qZ契��O��4��ٛ_�zc���{#� ��@���0�/�[���[�]S�V��!��f�`B�nW�mByh>e2$�UL.�A��-�$E��%���A:�}ܲ�<h��y7�^����_�%�ђ��� ���)	޻��QmX�6�#n�G���{��'�W      c   �  x�eWYv�(����*�.s�sL-r'���_\�@�����(���ܲ�3ʪ���uKԲ�s�2��<e�g�0���Ӂjդ�|VY��eE�âVz�uպ����]��l���Uo��A��Zv�nX:M�%&��WGL��;�A?N����0���'��t����Z�O6�Q�\���r�е���ǜ�_�	���
/�����!���)��h�l/<`p�6@�}磵�����{����&k�w��y�)��,��1�H�`��]���?��mi7�i�d�}}���ǊCc�B��7��MW��V��jCȆ�U��[NO��7�F��(F\�IlQ�+�U�F �(F�Ͳ�eo�8�q0B�D�sOq���L�_��Ifd�[��q�������w�0U��
�L�q�E��˙�ƖbZ�A��Y�UF���˖�,�]?Ӣ�B�	��{��/P�i�!�4�M�!9Ļc���t�=ԣ)rwZ���Ȯc�>R�X�R%�#�P��bHؙ��)��� �z���w$x.Q~LA0�М*`�x@��xS�J�d��@�E���Jv���}|���,�P���U��}W�+���`9�%���`�=����A��mSt�ř� % f����;&L�eu2s-Q�9���Kn���Q�(fRQ0�Y����X�*�a<=���㦭 �g��ʂ^{6���"pp;dǙ��h������]�:�I��t�/[@R<�W���8�:�[�E7�o������_:���Rz}�bn5J�6 �B14�Ej'�a�l�a������zS�&\Gjc;�8�
�<>�L��mV�f:������ u�����O.���š� f(�i�� `f������:E���$��	��A�F���Up�\�$��/�y�W"a=����m���-�3sUI�V�cG8� ����%���R���Tob��?��s��T��S�&��^pL,���2=��'�UCP�Q�����8uIbe6M ��H@�Ml��m�Y���J�&���nOj|pz<�vw�9[��!�䛮J�B'�l5<U���44�Z�ie��ǚ)�g%�C� ��m׽�����L���$�|�6G�'#���1�N�������V����R���l�=������l�'��l�f��%Ȉ0d.T��B'�4�V�鴺/���;p,�B���҇�t��G���0�=>3p����^'�R"��	S��݌q��lhR2��s��t' 9F{μLa�P��q��] �.�,٭���!�&۔0���k�i͍>�Mͬۨ�1�mK���*���;�(�����p��k����_�N�/� �������诏�e�ȿO*a4<u_�p����~a�?F�=g�~w}�9r 6���b�{~?X��ES?�<��iƺ]����+�9=k�?����#RFW      f   �  x�m�[�� E��b~b�2�_�\�IJ�Q���9����fM5��uk::��>�M�༐���\P�����r�	�eg�k����,E�MK�RP��e0:�$<��HM�Z@�8�=]6��>����8ǘ�-.�Ai�ˢ9��W<A߂4�F������4��r<cf� J7�AC�dJ�D��ɪ���}J�y`�N�z�(v����j�����L�󑒪P#YIm����R<��	.�l��?�,�'"F�����6���B�
_�t|:g=ϙ�5]�<k��x2���#�0K��[MO�+��7.C�a��r[>iw)�\��r�Ew�����f�"_'rBμ~<'#Ӧo�Tsw�w�bg���@�Z6��R^��RC��x�ZD�Ӎ]�\%ή��}B����|��[�&��-Q)�oW��� R���B�����n!���9w�� -Z�"��R��s�jQn���ȰT��^)U	��YQ��N�B���A1�[K�8������P��N�� ���\G�9�5@y���|�Ѷ[�� �0����d�`&2�8悻�3Kqh�U�,0�Vðj@�I��.G��bĩ�ȝ{sרڪ�G8�f���B8�9�s���]:��gm_t��.�`�
�>�����E��qqC�F����
�bH���mou��(�6f�R��_��f�ո�N]����?�װ0��3{�v�\E��3�����Ҍi�-;��|��,�@n���=�a:��?��`�TE`Ksnj���Z������r��^h{M�&ri4�"�\)����{ ���"ѧ�i_��p_��Lc���v�Ů�*���v�2t�t�{�җ}�ڒ�LRǺW} -S�UAe澉7g�f|�
��ԕ.�Yl�l�#�\6{��P��!.%��[�Xn��b��tߜ�A1N�d,�ʴ���z9��[^Vtߝ�ŽA`�i.|�t�
��sǭ-�{}��q֭,���ew��}�����7(Ϟ���yE��O��/�U�]      d   
  x�}W[��:���⼳���:F�w�n�:�M��Ȳl�D�嬷���z��.�U�����7��h��'��0M���n�E�l|XXj��m�@��������Z��@'WmX�\\��O\� �q�� `�����! ܱ���˟��nB.��h�<�PPo�z��%�1V��;�{��\��ͮ���с�Q&�; ���Cd�:�������db�i"x<C��).s�;4n��cO��4c�ɬN%�΀��ȫ@�ed��r<V��'��oW���$���7��� �e�[��ŷo�ӱ_��)jHP!!���_./�;S�nF��4ep����b{x�d�7=[kR0bVT��-��	^L>�QX�s�����ͅn��c���f� �?�4�1���D\j��iJ&�+�qME��*�]�����8�~X��2B>HK7��N�`$�7L�S�C�8�#?,z(��X��c��N�a�)�}��`�D��0i��2�E.Xx��h�,��|iGxI���%m��9�2�%��b�:��/K;��m2\6��$orVX�Q�J=3�elJ^��v��Cu���b;��Q�J�C??n�V�2��ʄ��Ή�U�O�m�h�n��մ��ɝ�kD��:Dzw@�����W$���ˤ1ERY��]R���ȧ�V遜�0)�%˝�ѥ�'�ӹ�z�у.�姪J�]��8Sq�����b��������Ҵ�DT�4��H�&H�����Gĳl�L��cVs���Re�)N�p��VC��6M�) ��w~���m.�d^[�bFU<þTE)#&��� y�M�q�z��Ɏ���Kv�ǐ��/�j���0�;gJ+l���\n�����=1��|��Tp���;ս��t���=b��U��e���ҁ�xA#�>ɲj:����6��6���u��=��$l�o˘=Z~�.LǬi�^w:�B�Uʨ��Y�U�q m;N���䲊O� �8ݟ�o��Ѱ���zr�r���bU����#���f�s�M<�ѡ�t5���sk�uR�U��p]��ى# �e$��]s�jzhq;�*ح�#O��&0���x�֮�����6�f���ۡ1�.ϟK~}K:
�͕sxC�^q!��#˽�Y�����sm��E*ֲ�5@��.�a���@�D�AW��E�3�Q��f���]��C�2���-U�vq�C)���+��j�?�+��lzw���!��E�F�?�]��s�l[x�	3�v�%����cU��.�.�h{�u�	9$��.iO�̑�eJ)�0 �n�|�vs#�v�����t_��A����k�S�!m-�9Õ�"�_�=���`[���ȁ��?\��/��t�M	 �K��n�Y�s$6N����T�JRU�Wu�P�ha�@tj��>m;�E��mm-���ݚ3�_`x"��v6ݤ�'��f�BGuG|#/�b��Iڠ-x��_��sX͓ǳ��lmZ��1�/q�z�?��<_-WE厯��7�*Y����l��-~os=��V���RM���>��D�T�     
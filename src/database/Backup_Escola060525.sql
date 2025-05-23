PGDMP  ;                    }            escola    16.3    16.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    26074    escola    DATABASE     }   CREATE DATABASE escola WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE escola;
                postgres    false            �            1259    26085    alunos    TABLE     �   CREATE TABLE public.alunos (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    idade text,
    sala_id integer,
    photo text
);
    DROP TABLE public.alunos;
       public         heap    postgres    false            �            1259    26084    alunos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.alunos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.alunos_id_seq;
       public          postgres    false    218            �           0    0    alunos_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.alunos_id_seq OWNED BY public.alunos.id;
          public          postgres    false    217            �            1259    26076    salas    TABLE     a   CREATE TABLE public.salas (
    id integer NOT NULL,
    name character varying(100) NOT NULL
);
    DROP TABLE public.salas;
       public         heap    postgres    false            �            1259    26075    salas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.salas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.salas_id_seq;
       public          postgres    false    216            �           0    0    salas_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.salas_id_seq OWNED BY public.salas.id;
          public          postgres    false    215                        2604    26088 	   alunos id    DEFAULT     f   ALTER TABLE ONLY public.alunos ALTER COLUMN id SET DEFAULT nextval('public.alunos_id_seq'::regclass);
 8   ALTER TABLE public.alunos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218                       2604    26079    salas id    DEFAULT     d   ALTER TABLE ONLY public.salas ALTER COLUMN id SET DEFAULT nextval('public.salas_id_seq'::regclass);
 7   ALTER TABLE public.salas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            �          0    26085    alunos 
   TABLE DATA           A   COPY public.alunos (id, name, idade, sala_id, photo) FROM stdin;
    public          postgres    false    218   �       �          0    26076    salas 
   TABLE DATA           )   COPY public.salas (id, name) FROM stdin;
    public          postgres    false    216   �       �           0    0    alunos_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.alunos_id_seq', 17, true);
          public          postgres    false    217            �           0    0    salas_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.salas_id_seq', 9, true);
          public          postgres    false    215            &           2606    26092    alunos alunos_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.alunos
    ADD CONSTRAINT alunos_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.alunos DROP CONSTRAINT alunos_pkey;
       public            postgres    false    218            "           2606    26083    salas salas_name_key 
   CONSTRAINT     O   ALTER TABLE ONLY public.salas
    ADD CONSTRAINT salas_name_key UNIQUE (name);
 >   ALTER TABLE ONLY public.salas DROP CONSTRAINT salas_name_key;
       public            postgres    false    216            $           2606    26081    salas salas_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.salas
    ADD CONSTRAINT salas_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.salas DROP CONSTRAINT salas_pkey;
       public            postgres    false    216            '           2606    26093    alunos alunos_sala_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.alunos
    ADD CONSTRAINT alunos_sala_id_fkey FOREIGN KEY (sala_id) REFERENCES public.salas(id) ON DELETE SET NULL;
 D   ALTER TABLE ONLY public.alunos DROP CONSTRAINT alunos_sala_id_fkey;
       public          postgres    false    218    4644    216            �   �   x�e�=
�@F�o#��-�B�f0)B&���x/�.�H�����k�gi�@�/���6���*;���98E�����+�Y��E@P��q�"O�*O�]4Q�kl{��bz����%�,�J�~_�_��窚�za�� ��7�      �   .   x�3�N�ITp4�2������!,gc.�ń��r5����� m�z     
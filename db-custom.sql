PGDMP                      |            test    16.2    16.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16528    test    DATABASE     x   CREATE DATABASE test WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE test;
                postgres    false            �            1259    16537    child    TABLE     �   CREATE TABLE public.child (
    id text NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    name text NOT NULL,
    user_id text NOT NULL
);
    DROP TABLE public.child;
       public         heap    postgres    false            �            1259    16529    user    TABLE     �   CREATE TABLE public."user" (
    id text NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    username text NOT NULL,
    years_old integer NOT NULL
);
    DROP TABLE public."user";
       public         heap    postgres    false            �          0    16537    child 
   TABLE DATA           J   COPY public.child (id, created_at, updated_at, name, user_id) FROM stdin;
    public          postgres    false    216   �       �          0    16529    user 
   TABLE DATA           Q   COPY public."user" (id, created_at, updated_at, username, years_old) FROM stdin;
    public          postgres    false    215   P       #           2606    16544    child child_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.child
    ADD CONSTRAINT child_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.child DROP CONSTRAINT child_pkey;
       public            postgres    false    216            !           2606    16536    user user_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
       public            postgres    false    215                       1259    16545    user_id_key    INDEX     C   CREATE UNIQUE INDEX user_id_key ON public."user" USING btree (id);
    DROP INDEX public.user_id_key;
       public            postgres    false    215            $           2606    16547    child child_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.child
    ADD CONSTRAINT child_user_id_fkey FOREIGN KEY (user_id) REFERENCES public."user"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 B   ALTER TABLE ONLY public.child DROP CONSTRAINT child_user_id_fkey;
       public          postgres    false    216    215    4641            �   �  x����J�@���S�:̜�-y7iMIk��;� .}�VKE}��7r&�\l������$'����,�RJY>�0X��a����P�a�a������6�����1�~�΁V�TG��������r�O�X�v��.W� �JeŌM�j90�k�KR��t�+��� �)���I�������� �.���\-Uc^��c�I�� �Z��n8?���r��0^��7�G\�op�:T�}�&�V^�d��� �2a����<�xe��O�7Ӽ1Ǉe\��D�X�h6�)$4�x�[ܝ SQf�.�A ��������9>�6� $�;�S�^�K�/���s��E�H%ˋ�cn6����Ü���7\�n�����vF���7RV�      �   �   x�K�)3�+��(3 �����ܪ���RN##]]C3Cs+# 2�366E7"=3#�3.l������.lR�q�E/���idɕ��8� -	d��aNbyUrq��e	�ٖV&�V&fz��8�/̿��b����P��(�NK�=... G1Z�     
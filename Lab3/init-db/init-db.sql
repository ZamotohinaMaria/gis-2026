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

CREATE SCHEMA IF NOT EXISTS public;

CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;

ALTER SCHEMA public OWNER TO pg_database_owner;

COMMENT ON SCHEMA public IS 'standard public schema';

SET
    default_tablespace = '';

SET
    default_table_access_method = heap;


CREATE TABLE public.buildings (
    ogc_fid integer,
    geom public.geometry(Geometry,4326),
    "timestamp" timestamp with time zone,
    version character varying,
    changeset character varying,
    "user" character varying,
    uid character varying,
    "addr:city" character varying,
    "addr:housenumber" character varying,
    "addr:street" character varying,
    building character varying,
    "building:levels" character varying,
    highway character varying,
    house character varying,
    landuse character varying,
    lanes character varying,
    name character varying,
    "name:ru" character varying,
    "natural" character varying,
    surface character varying,
    water character varying,
    id character varying
);


ALTER TABLE public.buildings OWNER TO gisuser;


CREATE TABLE public.roads (
    ogc_fid integer,
    geom public.geometry(Geometry,4326),
    "timestamp" timestamp with time zone,
    version character varying,
    changeset character varying,
    "user" character varying,
    uid character varying,
    "addr:city" character varying,
    "addr:housenumber" character varying,
    "addr:street" character varying,
    building character varying,
    "building:levels" character varying,
    highway character varying,
    house character varying,
    landuse character varying,
    lanes character varying,
    name character varying,
    "name:ru" character varying,
    "natural" character varying,
    surface character varying,
    water character varying,
    id character varying
);


ALTER TABLE public.roads OWNER TO gisuser;

INSERT INTO public.buildings (ogc_fid, geom, "timestamp", version, changeset, "user", uid, "addr:city", "addr:housenumber", "addr:street", building, "building:levels", highway, house, landuse, lanes, name, "name:ru", "natural", surface, water, id) VALUES (4, '0106000020E61000000100000001030000000100000005000000586254089A434940983DBFDEB39F4A40C9E9EBF99A4349401C3CB8E0B19F4A40FCBCF3D59F4349400A1346B3B29F4A408B355CE49E4349401BD423B2B49F4A40586254089A434940983DBFDEB39F4A40', '2026-02-22 14:53:25+04', '4', '178893486', 'MammyMasha23', '23829052', 'массив Советы, СДТ "Железнодорожник"', '14', 'Прибрежная улица', 'detached', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'way/1469927805');
INSERT INTO public.buildings (ogc_fid, geom, "timestamp", version, changeset, "user", uid, "addr:city", "addr:housenumber", "addr:street", building, "building:levels", highway, house, landuse, lanes, name, "name:ru", "natural", surface, water, id) VALUES (5, '0106000020E610000001000000010300000001000000050000006A8E07B6A54349404FB39B74B69F4A40BCFCF3D9A6434940986BD102B49F4A408B24308CAA4349407ADC5CA1B49F4A40A3F66C67A943494031242713B79F4A406A8E07B6A54349404FB39B74B69F4A40', '2026-02-22 14:53:25+04', '3', '178893486', 'MammyMasha23', '23829052', 'массив Советы, СДТ "Железнодорожник"', '13а', 'Прибрежная улица', 'house', '2', NULL, 'detached', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'way/1478769273');
INSERT INTO public.buildings (ogc_fid, geom, "timestamp", version, changeset, "user", uid, "addr:city", "addr:housenumber", "addr:street", building, "building:levels", highway, house, landuse, lanes, name, "name:ru", "natural", surface, water, id) VALUES (6, '0106000020E61000000100000001030000000100000007000000AC5D6E8B8D43494063FCEA60B39F4A40ED6069858E4349409F34796FB19F4A40BC74385F9143494052F355F2B19F4A40802E75EB904349409F002FD8B29F4A402CA0AB089243494016A75A0BB39F4A4092239D81914349402121CA17B49F4A40AC5D6E8B8D43494063FCEA60B39F4A40', '2026-02-22 14:53:25+04', '3', '178893486', 'MammyMasha23', '23829052', 'массив Советы, СДТ "Железнодорожник"', '15', 'Прибрежная улица', 'house', '2', NULL, 'detached', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'way/1478769274');
INSERT INTO public.buildings (ogc_fid, geom, "timestamp", version, changeset, "user", uid, "addr:city", "addr:housenumber", "addr:street", building, "building:levels", highway, house, landuse, lanes, name, "name:ru", "natural", surface, water, id) VALUES (7, '0106000020E61000000100000001030000000100000005000000598AE42B814349402E652A0EB19F4A4010EC53E982434940EF810CD3AD9F4A40C1B22D5E87434940ADD4FDADAE9F4A409E1095A1854349408177F2E9B19F4A40598AE42B814349402E652A0EB19F4A40', '2026-02-22 14:53:25+04', '3', '178893486', 'MammyMasha23', '23829052', 'массив Советы, СДТ "Железнодорожник"', '16', 'Прибрежная улица', 'house', '2', NULL, 'detached', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'way/1478769276');
INSERT INTO public.buildings (ogc_fid, geom, "timestamp", version, changeset, "user", uid, "addr:city", "addr:housenumber", "addr:street", building, "building:levels", highway, house, landuse, lanes, name, "name:ru", "natural", surface, water, id) VALUES (8, '0106000020E6100000010000000103000000010000000500000019D2979471434940F5447CCCAC9F4A40F5ADC55D7343494014C6BBC8A99F4A40C3A7EFEB76434940CCE5AB89AA9F4A40530CEB2175434940AD646C8DAD9F4A4019D2979471434940F5447CCCAC9F4A40', '2026-02-22 14:53:25+04', '4', '178893486', 'MammyMasha23', '23829052', 'массив Советы, СДТ "Железнодорожник"', '18', 'Прибрежная улица', 'house', '1', NULL, 'detached', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'way/1478769277');
INSERT INTO public.buildings (ogc_fid, geom, "timestamp", version, changeset, "user", uid, "addr:city", "addr:housenumber", "addr:street", building, "building:levels", highway, house, landuse, lanes, name, "name:ru", "natural", surface, water, id) VALUES (9, '0106000020E61000000100000001030000000100000005000000AB8779A05F43494092EDD7F8A79F4A405D401EB06143494070DBAD1BA59F4A4072569F06674349409F2B007CA69F4A40555DD1F764434940C13D2A59A99F4A40AB8779A05F43494092EDD7F8A79F4A40', '2026-02-22 14:53:25+04', '3', '178893486', 'MammyMasha23', '23829052', 'массив Советы, СДТ "Железнодорожник"', '20', 'Прибрежная улица', 'house', '2', NULL, 'detached', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'way/1478769279');
INSERT INTO public.buildings (ogc_fid, geom, "timestamp", version, changeset, "user", uid, "addr:city", "addr:housenumber", "addr:street", building, "building:levels", highway, house, landuse, lanes, name, "name:ru", "natural", surface, water, id) VALUES (10, '0106000020E61000000100000001030000000100000005000000F9AEF7D15F434940AC83CD4AA49F4A4071A312E85D434940A502DD4DA69F4A4090F63FC05A434940884B8E3BA59F4A40180225AA5C4349408FCC7E38A39F4A40F9AEF7D15F434940AC83CD4AA49F4A40', '2026-02-22 14:53:25+04', '2', '178893486', 'MammyMasha23', '23829052', 'КСХИ на землях СХИ в р-не п. Советы', '21', 'Прибрежная улица', 'house', '2', NULL, 'detached', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'way/1479852224');
INSERT INTO public.buildings (ogc_fid, geom, "timestamp", version, changeset, "user", uid, "addr:city", "addr:housenumber", "addr:street", building, "building:levels", highway, house, landuse, lanes, name, "name:ru", "natural", surface, water, id) VALUES (11, '0106000020E61000000100000001030000000100000007000000411C357051434940AA6EE4709C9F4A40A5EFDA4A54434940F7D7E19E9D9F4A409A33EC4152434940C07630629F9F4A40C94FF40A55434940D223A188A09F4A40005BB972514349404D9539A7A39F4A40032BE2CF4B434940843EA253A19F4A40411C357051434940AA6EE4709C9F4A40', '2026-02-22 14:53:25+04', '2', '178893486', 'MammyMasha23', '23829052', 'территория СНТ Самарский СХИ(Советы)', '22', 'Прибрежная улица', 'house', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'way/1479852225');
INSERT INTO public.buildings (ogc_fid, geom, "timestamp", version, changeset, "user", uid, "addr:city", "addr:housenumber", "addr:street", building, "building:levels", highway, house, landuse, lanes, name, "name:ru", "natural", surface, water, id) VALUES (12, '0106000020E61000000100000001030000000100000005000000EE6B13DD69434940857B65DEAA9F4A40CE609D746C434940F89EDB95A79F4A409D6E34DB70434940E5FF9FD4A89F4A40BC79AA436E43494072DC291DAC9F4A40EE6B13DD69434940857B65DEAA9F4A40', '2026-02-22 14:53:25+04', '2', '178893486', 'MammyMasha23', '23829052', 'КСХИ на землях СХИ в р-не п. Советы', '19', 'Прибрежная улица', 'house', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'way/1479852226');
INSERT INTO public.buildings (ogc_fid, geom, "timestamp", version, changeset, "user", uid, "addr:city", "addr:housenumber", "addr:street", building, "building:levels", highway, house, landuse, lanes, name, "name:ru", "natural", surface, water, id) VALUES (13, '0106000020E610000001000000010300000001000000050000001FF46C567D4349404D28E906AF9F4A40DDFEA6C17E4349402B44D14DAC9F4A400B8B40AB824349403C670B08AD9F4A404D80064081434940F30AFAC1AF9F4A401FF46C567D4349404D28E906AF9F4A40', '2026-02-22 14:53:25+04', '1', '178893486', 'MammyMasha23', '23829052', 'территория СНТ Самарский СХИ(Советы)', '17', 'Прибрежная улица', 'house', '1', NULL, 'detached', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'way/1481721737');

INSERT INTO public.roads (ogc_fid, geom, "timestamp", version, changeset, "user", uid, "addr:city", "addr:housenumber", "addr:street", building, "building:levels", highway, house, landuse, lanes, name, "name:ru", "natural", surface, water, id) VALUES (14, '0105000020E6100000010000000102000000180000001A2E1796E44449404F9B278D879F4A40618FE44DD9444940252AAFF0899F4A404473F8FFCC444940EBCAC232919F4A40850E153EB6444940AC38D55A989F4A4098BB3BD79C444940987384679D9F4A402299C40F84444940291B7B9BA39F4A40F3B5C24F77444940DF707A72A89F4A40D010E91269444940605793A7AC9F4A40D074C0BF524449404843D7CFAC9F4A4050560C570744494008A57911B79F4A405C1E6B460644494049940733B79F4A40144EC1D0D9434940FFCF61BEBC9F4A40A56ABB09BE43494099D6A6B1BD9F4A4078F2446BA0434940AC19BE2ABC9F4A4090F40E5C8A43494066E9F989B99F4A40CC400A438943494006859C52B99F4A40985B10806E4349407A241411B49F4A400C152D8A684349402E31E076B29F4A40DF0C480C4C4349400E034CCFAA9F4A40ED16DC6A31434940A7B228ECA29F4A40C1B80A1813434940FF644282989F4A40743BA011114349405BF0FD68939F4A406A0F20E80D434940CD830541919F4A40389B3347FB424940545227A0899F4A40', '2026-02-15 15:02:49+04', '3', '178576443', 'MammyMasha23', '23829052', NULL, NULL, NULL, NULL, NULL, 'service', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'way/402615087');
INSERT INTO public.roads (ogc_fid, geom, "timestamp", version, changeset, "user", uid, "addr:city", "addr:housenumber", "addr:street", building, "building:levels", highway, house, landuse, lanes, name, "name:ru", "natural", surface, water, id) VALUES (15, '0105000020E6100000010000000102000000030000008DF73EB03E434940CB6CEB02B99F4A40DF0C480C4C4349400E034CCFAA9F4A404ADAE8F758434940A3EDF3739E9F4A40', '2016-03-09 13:33:31+04', '1', '37703748', 'anyrain', '3071186', NULL, NULL, NULL, NULL, NULL, 'service', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'way/402615090');
INSERT INTO public.roads (ogc_fid, geom, "timestamp", version, changeset, "user", uid, "addr:city", "addr:housenumber", "addr:street", building, "building:levels", highway, house, landuse, lanes, name, "name:ru", "natural", surface, water, id) VALUES (16, '0105000020E6100000010000000102000000040000004ADAE8F758434940A3EDF3739E9F4A407D63BE72734349404A0DC8B9A89F4A40757286E28E4349404EB857E6AD9F4A40AE50FFB4AC4349401C5025B9B29F4A40', '2026-02-17 22:27:03+04', '3', '178692660', 'MammyMasha23', '23829052', NULL, NULL, NULL, NULL, NULL, 'unclassified', NULL, NULL, '1', 'Прибрежная улица', 'Прибрежная улица', NULL, 'ground', NULL, 'way/1478769271');
INSERT INTO public.roads (ogc_fid, geom, "timestamp", version, changeset, "user", uid, "addr:city", "addr:housenumber", "addr:street", building, "building:levels", highway, house, landuse, lanes, name, "name:ru", "natural", surface, water, id) VALUES (17, '0105000020E610000001000000010200000002000000CC400A438943494006859C52B99F4A40757286E28E4349404EB857E6AD9F4A40', '2026-02-15 15:02:49+04', '1', '178576443', 'MammyMasha23', '23829052', NULL, NULL, NULL, NULL, NULL, 'unclassified', NULL, NULL, NULL, NULL, NULL, NULL, 'ground', NULL, 'way/1478769272');
INSERT INTO public.roads (ogc_fid, geom, "timestamp", version, changeset, "user", uid, "addr:city", "addr:housenumber", "addr:street", building, "building:levels", highway, house, landuse, lanes, name, "name:ru", "natural", surface, water, id) VALUES (18, '0105000020E610000001000000010200000007000000AE50FFB4AC4349401C5025B9B29F4A40E9FB5F64B8434940C246A34CB49F4A406B1F3C24C6434940152B5904B59F4A407011CE5D014449407CD45FAFB09F4A40941458005344494065677682A29F4A4052BBBABE6A444940E14ED834A59F4A40D010E91269444940605793A7AC9F4A40', '2026-02-17 22:27:03+04', '4', '178692660', 'MammyMasha23', '23829052', NULL, NULL, NULL, NULL, NULL, 'path', NULL, NULL, NULL, 'Прибрежная улица', 'Прибрежная улица', NULL, 'ground', NULL, 'way/1478769280');
INSERT INTO public.roads (ogc_fid, geom, "timestamp", version, changeset, "user", uid, "addr:city", "addr:housenumber", "addr:street", building, "building:levels", highway, house, landuse, lanes, name, "name:ru", "natural", surface, water, id) VALUES (19, '0105000020E6100000010000000102000000080000004ADAE8F758434940A3EDF3739E9F4A40E95A20E6374349402745D03D909F4A4004D1EEEB1B43494041A43A78819F4A4079C48D001343494061BB20C77B9F4A40A0CCF56C0C4349406A5CEE82779F4A40BA8DBC62FC4249400BC73DA76A9F4A406A4B1DE4F5424940A192848E679F4A40AD2C76A0F342494060FF1AB5679F4A40', '2026-02-17 22:27:03+04', '4', '178692660', 'MammyMasha23', '23829052', NULL, NULL, NULL, NULL, NULL, 'unclassified', NULL, NULL, NULL, 'Прибрежная улица', 'Прибрежная улица', NULL, 'ground', NULL, 'way/1478769281');

CREATE INDEX idx_buildings_geom ON public.buildings USING gist (geom);

CREATE INDEX idx_roads_geom ON public.roads USING gist (geom);

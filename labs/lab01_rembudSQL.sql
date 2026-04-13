CREATE TABLE klienci (
    idklienta character(5) NOT NULL,
    nazwa character varying(30),
    nip character(8),
    adres character varying(30),
    miasto character varying(20),
    kod character(6),
    rabat numeric(6,2)
);

CREATE TABLE nagsprzedaz (
    nrfaktury integer NOT NULL,
    idklienta character(5),
    datasp date,
    zaplacono character(3)
);


CREATE TABLE pozsprzedaz (
    idpoz integer NOT NULL,
    nrfaktury integer,
    idproduktu character(5),
    ilosc numeric(8,2)
);

CREATE TABLE produkty (
    idproduktu character(5),
    nazwa character varying(30),
    cena numeric(8,2),
    vat numeric(6,2),
    ilosc_w_op numeric(8,2),
    miara character varying(10),
    producent character varying(30),
    stan numeric(8,2)
);


INSERT INTO public.klienci (idklienta, nazwa, nip, adres, miasto, kod, rabat) VALUES ('K01  ', 'Budrex Sp z.o.o.', '222-3333', 'Kwiatowa 1', 'Gdynia', '80-980', 0.03);
INSERT INTO public.klienci (idklienta, nazwa, nip, adres, miasto, kod, rabat) VALUES ('K02  ', 'Posadzki Remonty', '99-88732', 'Różana 13', 'Gdańsk', '70-231', 0.02);
INSERT INTO public.klienci (idklienta, nazwa, nip, adres, miasto, kod, rabat) VALUES ('K03  ', 'WodKanRem', '98-99995', 'Tulipanowa 11', 'Sopot', '23-090', 0.00);
INSERT INTO public.klienci (idklienta, nazwa, nip, adres, miasto, kod, rabat) VALUES ('K04  ', 'Hydrobud', '76-45940', 'Storczykowa 2', 'Gdynia', '78-909', 0.02);
INSERT INTO public.klienci (idklienta, nazwa, nip, adres, miasto, kod, rabat) VALUES ('K05  ', 'Docieplacz', '45-95959', 'Fiołkowa 14', 'Gdynia', '80-807', 0.00);
INSERT INTO public.klienci (idklienta, nazwa, nip, adres, miasto, kod, rabat) VALUES ('K06  ', 'Sprawny Malarz', '89-85858', 'Storczykowa 16', 'Gdańsk', '70-978', 0.00);
INSERT INTO public.klienci (idklienta, nazwa, nip, adres, miasto, kod, rabat) VALUES ('K07  ', 'Gładzki Sp z o.o.', '99-99999', 'Narcyzowa 23', 'Słupsk', '70-490', 0.00);
INSERT INTO public.klienci (idklienta, nazwa, nip, adres, miasto, kod, rabat) VALUES ('K09  ', 'Piękne Wnętrze', '88-77777', 'Irysowa 3', 'Sopot', '22-444', 0.02);


INSERT INTO public.nagsprzedaz (nrfaktury, idklienta, datasp, zaplacono) VALUES (1, 'K07  ', '2021-01-03', 'tak');
INSERT INTO public.nagsprzedaz (nrfaktury, idklienta, datasp, zaplacono) VALUES (2, 'K02  ', '2021-01-04', 'nie');
INSERT INTO public.nagsprzedaz (nrfaktury, idklienta, datasp, zaplacono) VALUES (3, 'K05  ', '2021-01-04', 'tak');
INSERT INTO public.nagsprzedaz (nrfaktury, idklienta, datasp, zaplacono) VALUES (4, 'K10  ', '2021-01-04', 'tak');
INSERT INTO public.nagsprzedaz (nrfaktury, idklienta, datasp, zaplacono) VALUES (5, 'K02  ', '2021-01-05', 'nie');
INSERT INTO public.nagsprzedaz (nrfaktury, idklienta, datasp, zaplacono) VALUES (6, 'K05  ', '2021-01-07', 'tak');
INSERT INTO public.nagsprzedaz (nrfaktury, idklienta, datasp, zaplacono) VALUES (7, 'K01  ', '2021-01-08', 'tak');
INSERT INTO public.nagsprzedaz (nrfaktury, idklienta, datasp, zaplacono) VALUES (8, 'K02  ', '2021-01-09', 'tak');
INSERT INTO public.nagsprzedaz (nrfaktury, idklienta, datasp, zaplacono) VALUES (9, 'K04  ', '2021-01-11', 'tak');
INSERT INTO public.nagsprzedaz (nrfaktury, idklienta, datasp, zaplacono) VALUES (10, 'K04  ', '2021-01-13', 'tak');
INSERT INTO public.nagsprzedaz (nrfaktury, idklienta, datasp, zaplacono) VALUES (11, 'K01  ', '2021-01-15', 'tak');
INSERT INTO public.nagsprzedaz (nrfaktury, idklienta, datasp, zaplacono) VALUES (12, 'K04  ', '2021-01-17', 'tak');
INSERT INTO public.nagsprzedaz (nrfaktury, idklienta, datasp, zaplacono) VALUES (13, 'K07  ', '2021-01-17', 'tak');
INSERT INTO public.nagsprzedaz (nrfaktury, idklienta, datasp, zaplacono) VALUES (14, 'K02  ', '2021-01-18', 'tak');
INSERT INTO public.nagsprzedaz (nrfaktury, idklienta, datasp, zaplacono) VALUES (15, 'K05  ', '2021-01-18', 'tak');
INSERT INTO public.nagsprzedaz (nrfaktury, idklienta, datasp, zaplacono) VALUES (16, 'K04  ', '2021-01-20', 'tak');
INSERT INTO public.nagsprzedaz (nrfaktury, idklienta, datasp, zaplacono) VALUES (17, 'K05  ', '2021-01-21', 'tak');
INSERT INTO public.nagsprzedaz (nrfaktury, idklienta, datasp, zaplacono) VALUES (18, 'K01  ', '2021-01-25', 'tak');
INSERT INTO public.nagsprzedaz (nrfaktury, idklienta, datasp, zaplacono) VALUES (19, 'K03  ', '2021-01-28', 'tak');
INSERT INTO public.nagsprzedaz (nrfaktury, idklienta, datasp, zaplacono) VALUES (20, 'K07  ', '2021-01-28', 'tak');
INSERT INTO public.nagsprzedaz (nrfaktury, idklienta, datasp, zaplacono) VALUES (21, 'K04  ', '2021-01-28', 'tak');
INSERT INTO public.nagsprzedaz (nrfaktury, idklienta, datasp, zaplacono) VALUES (22, 'K06  ', '2021-01-29', 'tak');
INSERT INTO public.nagsprzedaz (nrfaktury, idklienta, datasp, zaplacono) VALUES (23, 'K06  ', '2021-01-31', 'nie');
INSERT INTO public.nagsprzedaz (nrfaktury, idklienta, datasp, zaplacono) VALUES (24, 'K04  ', '2021-02-01', 'nie');
INSERT INTO public.nagsprzedaz (nrfaktury, idklienta, datasp, zaplacono) VALUES (25, 'K03  ', '2021-02-03', 'tak');
INSERT INTO public.nagsprzedaz (nrfaktury, idklienta, datasp, zaplacono) VALUES (26, 'K05  ', '2021-02-06', 'nie');
INSERT INTO public.nagsprzedaz (nrfaktury, idklienta, datasp, zaplacono) VALUES (27, 'K06  ', '2021-02-10', 'tak');
INSERT INTO public.nagsprzedaz (nrfaktury, idklienta, datasp, zaplacono) VALUES (28, 'K05  ', '2021-02-11', 'tak');
INSERT INTO public.nagsprzedaz (nrfaktury, idklienta, datasp, zaplacono) VALUES (29, 'K06  ', '2021-02-12', 'nie');
INSERT INTO public.nagsprzedaz (nrfaktury, idklienta, datasp, zaplacono) VALUES (30, 'K06  ', '2021-02-19', 'tak');
INSERT INTO public.nagsprzedaz (nrfaktury, idklienta, datasp, zaplacono) VALUES (31, 'K05  ', '2021-02-21', 'tak');
INSERT INTO public.nagsprzedaz (nrfaktury, idklienta, datasp, zaplacono) VALUES (32, 'K01  ', '2021-02-22', 'nie');
INSERT INTO public.nagsprzedaz (nrfaktury, idklienta, datasp, zaplacono) VALUES (33, 'K03  ', '2021-02-22', 'tak');
INSERT INTO public.nagsprzedaz (nrfaktury, idklienta, datasp, zaplacono) VALUES (34, 'K02  ', '2021-02-23', 'nie');
INSERT INTO public.nagsprzedaz (nrfaktury, idklienta, datasp, zaplacono) VALUES (35, 'K07  ', '2021-02-24', 'tak');
INSERT INTO public.nagsprzedaz (nrfaktury, idklienta, datasp, zaplacono) VALUES (36, 'K01  ', '2021-02-26', 'tak');
INSERT INTO public.nagsprzedaz (nrfaktury, idklienta, datasp, zaplacono) VALUES (37, 'K02  ', '2021-02-26', 'tak');
INSERT INTO public.nagsprzedaz (nrfaktury, idklienta, datasp, zaplacono) VALUES (38, 'K07  ', '2021-02-27', 'tak');
INSERT INTO public.nagsprzedaz (nrfaktury, idklienta, datasp, zaplacono) VALUES (39, 'K06  ', '2021-03-07', 'tak');
INSERT INTO public.nagsprzedaz (nrfaktury, idklienta, datasp, zaplacono) VALUES (40, 'K05  ', '2021-03-09', 'tak');
INSERT INTO public.nagsprzedaz (nrfaktury, idklienta, datasp, zaplacono) VALUES (41, 'K05  ', '2021-03-10', 'tak');
INSERT INTO public.nagsprzedaz (nrfaktury, idklienta, datasp, zaplacono) VALUES (42, 'K06  ', '2021-03-12', 'tak');
INSERT INTO public.nagsprzedaz (nrfaktury, idklienta, datasp, zaplacono) VALUES (43, 'K17  ', '2021-03-19', 'tak');
INSERT INTO public.nagsprzedaz (nrfaktury, idklienta, datasp, zaplacono) VALUES (44, 'K07  ', '2021-03-20', 'tak');
INSERT INTO public.nagsprzedaz (nrfaktury, idklienta, datasp, zaplacono) VALUES (45, 'K05  ', '2021-03-25', 'tak');
INSERT INTO public.nagsprzedaz (nrfaktury, idklienta, datasp, zaplacono) VALUES (46, 'K03  ', '2021-03-25', 'nie');
INSERT INTO public.nagsprzedaz (nrfaktury, idklienta, datasp, zaplacono) VALUES (47, 'K05  ', '2021-03-25', 'tak');
INSERT INTO public.nagsprzedaz (nrfaktury, idklienta, datasp, zaplacono) VALUES (48, 'K01  ', '2021-03-27', 'tak');
INSERT INTO public.nagsprzedaz (nrfaktury, idklienta, datasp, zaplacono) VALUES (49, 'K06  ', '2021-03-29', 'tak');


INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (1, 1, 'P13  ', 3.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (2, 1, 'P27  ', 1.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (3, 2, 'P09  ', 1.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (4, 2, 'P35  ', 3.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (5, 3, 'P01  ', 1.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (6, 3, 'P17  ', 1.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (7, 3, 'P22  ', 2.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (8, 3, 'P28  ', 1.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (9, 3, 'P31  ', 4.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (10, 4, 'P32  ', 5.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (11, 4, 'P35  ', 2.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (12, 5, 'P14  ', 5.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (13, 5, 'P29  ', 1.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (14, 5, 'P33  ', 3.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (15, 5, 'P34  ', 5.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (16, 6, 'P08  ', 6.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (17, 6, 'P22  ', 4.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (18, 8, 'P01  ', 2.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (19, 8, 'P34  ', 6.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (20, 9, 'P16  ', 6.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (21, 9, 'P22  ', 4.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (22, 9, 'P23  ', 2.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (23, 10, 'P03  ', 2.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (24, 10, 'P04  ', 5.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (25, 11, 'P06  ', 5.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (26, 11, 'P15  ', 1.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (27, 11, 'P22  ', 3.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (28, 11, 'P30  ', 6.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (29, 12, 'P13  ', 1.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (30, 12, 'P16  ', 1.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (31, 12, 'P17  ', 6.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (32, 12, 'P21  ', 1.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (33, 12, 'P22  ', 2.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (34, 12, 'P29  ', 5.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (35, 12, 'P31  ', 1.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (36, 12, 'P36  ', 1.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (37, 13, 'P10  ', 3.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (38, 13, 'P11  ', 6.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (39, 13, 'P12  ', 2.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (40, 14, 'P02  ', 2.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (41, 15, 'P05  ', 1.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (42, 16, 'P08  ', 6.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (43, 16, 'P36  ', 5.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (44, 16, 'P28  ', 1.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (45, 16, 'P30  ', 2.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (46, 17, 'P02  ', 2.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (47, 17, 'P04  ', 4.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (48, 17, 'P15  ', 1.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (49, 17, 'P17  ', 5.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (50, 17, 'P19  ', 2.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (51, 18, 'P12  ', 5.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (52, 18, 'P24  ', 1.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (53, 18, 'P25  ', 6.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (54, 19, 'P03  ', 3.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (55, 19, 'P30  ', 3.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (56, 19, 'P31  ', 4.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (57, 19, 'P32  ', 2.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (58, 20, 'P02  ', 5.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (59, 20, 'P07  ', 1.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (60, 20, 'P34  ', 2.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (61, 20, 'P16  ', 1.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (62, 20, 'P34  ', 6.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (63, 21, 'P01  ', 4.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (64, 21, 'P14  ', 3.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (65, 21, 'P30  ', 6.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (66, 22, 'P11  ', 2.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (67, 23, 'P04  ', 6.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (68, 24, 'P08  ', 5.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (69, 24, 'P28  ', 1.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (70, 24, 'P30  ', 5.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (71, 25, 'P07  ', 2.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (72, 25, 'P02  ', 6.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (73, 25, 'P22  ', 5.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (74, 25, 'P30  ', 3.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (75, 46, 'P14  ', 3.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (76, 46, 'P01  ', 4.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (77, 26, 'P19  ', 2.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (78, 26, 'P20  ', 6.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (79, 26, 'P22  ', 2.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (80, 26, 'P24  ', 4.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (81, 27, 'P28  ', 5.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (82, 27, 'P24  ', 4.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (83, 27, 'P31  ', 6.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (84, 28, 'P23  ', 1.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (85, 28, 'P26  ', 4.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (86, 29, 'P31  ', 1.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (87, 30, 'P34  ', 2.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (88, 30, 'P35  ', 4.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (89, 31, 'P12  ', 6.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (90, 31, 'P27  ', 4.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (91, 32, 'P15  ', 3.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (92, 32, 'P24  ', 1.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (93, 32, 'P34  ', 1.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (94, 33, 'P26  ', 2.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (95, 34, 'P24  ', 1.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (96, 35, 'P11  ', 1.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (97, 35, 'P22  ', 1.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (98, 35, 'P24  ', 4.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (99, 35, 'P29  ', 3.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (100, 36, 'P13  ', 6.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (101, 36, 'P03  ', 6.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (102, 36, 'P19  ', 2.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (103, 36, 'P35  ', 6.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (104, 37, 'P13  ', 3.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (105, 37, 'P24  ', 2.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (106, 38, 'P06  ', 6.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (107, 38, 'P24  ', 6.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (108, 38, 'P36  ', 2.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (109, 40, 'P24  ', 1.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (110, 40, 'P25  ', 3.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (111, 41, 'P04  ', 2.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (112, 41, 'P05  ', 2.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (113, 41, 'P07  ', 5.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (114, 41, 'P11  ', 6.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (115, 42, 'P04  ', 2.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (116, 42, 'P07  ', 6.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (117, 42, 'P17  ', 3.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (118, 43, 'P08  ', 4.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (119, 43, 'P09  ', 3.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (120, 43, 'P10  ', 4.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (121, 43, 'P12  ', 6.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (122, 43, 'P13  ', 2.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (123, 43, 'P32  ', 2.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (124, 43, 'P36  ', 3.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (125, 44, 'P04  ', 4.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (126, 45, 'P01  ', 3.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (127, 45, 'P04  ', 2.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (128, 45, 'P15  ', 3.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (129, 45, 'P24  ', 6.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (130, 45, 'P36  ', 2.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (131, 46, 'P14  ', 6.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (132, 46, 'P15  ', 4.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (133, 46, 'P17  ', 4.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (134, 46, 'P22  ', 5.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (135, 46, 'P31  ', 4.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (136, 47, 'P27  ', 6.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (137, 48, 'P11  ', 5.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (138, 48, 'P15  ', 5.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (139, 48, 'P23  ', 5.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (140, 48, 'P32  ', 6.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (141, 48, 'P35  ', 3.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (142, 49, 'P03  ', 4.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (143, 49, 'P24  ', 4.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (144, 49, 'P04  ', 3.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (145, 49, 'P06  ', 2.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (146, 49, 'P15  ', 5.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (147, 49, 'P26  ', 3.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (148, 3, 'P48  ', 13.00);
INSERT INTO public.pozsprzedaz (idpoz, nrfaktury, idproduktu, ilosc) VALUES (149, 3, 'P58  ', 13.00);


INSERT INTO public.produkty (idproduktu, nazwa, cena, vat, ilosc_w_op, miara, producent, stan) VALUES ('P01  ', 'Wiertarka udarowa KR55', 129.00, 0.23, 1.00, 'szt', 'Black&Decker', 30.00);
INSERT INTO public.produkty (idproduktu, nazwa, cena, vat, ilosc_w_op, miara, producent, stan) VALUES ('P02  ', 'Wiertarka udarowa PSB 700', 367.00, 0.23, 1.00, 'szt', 'Bosch', 25.00);
INSERT INTO public.produkty (idproduktu, nazwa, cena, vat, ilosc_w_op, miara, producent, stan) VALUES ('P03  ', 'Wiertarka udarowa KR68', 155.00, 0.23, 1.00, 'szt', 'Black&Decker', 23.00);
INSERT INTO public.produkty (idproduktu, nazwa, cena, vat, ilosc_w_op, miara, producent, stan) VALUES ('P04  ', 'Wyrzynarka KS54', 188.00, 0.23, 1.00, 'szt', 'Black&Decker', 22.00);
INSERT INTO public.produkty (idproduktu, nazwa, cena, vat, ilosc_w_op, miara, producent, stan) VALUES ('P05  ', 'Poziomica S34', 99.00, 0.23, 1.00, 'szt', 'Stanley', 15.00);
INSERT INTO public.produkty (idproduktu, nazwa, cena, vat, ilosc_w_op, miara, producent, stan) VALUES ('P06  ', 'Poziomica u34', 107.00, 0.23, 1.00, 'szt', 'Stanley', 22.00);
INSERT INTO public.produkty (idproduktu, nazwa, cena, vat, ilosc_w_op, miara, producent, stan) VALUES ('P07  ', 'Piła płatnica', 94.00, 0.23, 1.00, 'szt', 'Stanley', 35.00);
INSERT INTO public.produkty (idproduktu, nazwa, cena, vat, ilosc_w_op, miara, producent, stan) VALUES ('P08  ', 'Piła do pustaków', 333.00, 0.23, 1.00, 'szt', 'Stanley', 20.00);
INSERT INTO public.produkty (idproduktu, nazwa, cena, vat, ilosc_w_op, miara, producent, stan) VALUES ('P09  ', 'Ścisk stolarski', 99.00, 0.23, 1.00, 'szt', 'Stanley', 25.00);
INSERT INTO public.produkty (idproduktu, nazwa, cena, vat, ilosc_w_op, miara, producent, stan) VALUES ('P10  ', 'Imadło modelarskie', 103.00, 0.23, 1.00, 'szt', 'Stanley', 28.00);
INSERT INTO public.produkty (idproduktu, nazwa, cena, vat, ilosc_w_op, miara, producent, stan) VALUES ('P11  ', 'Płytki łazienkowe A1 50 cm', 9.43, 0.08, 10.80, 'cm', 'Cersanit', 1850.00);
INSERT INTO public.produkty (idproduktu, nazwa, cena, vat, ilosc_w_op, miara, producent, stan) VALUES ('P12  ', 'Płytki łaz B3 30 cm', 12.17, 0.08, 13.60, 'cm', 'Cersanit', 2500.00);
INSERT INTO public.produkty (idproduktu, nazwa, cena, vat, ilosc_w_op, miara, producent, stan) VALUES ('P13  ', 'Listwa łaz. Ozdobna 10cm', 16.20, 0.08, 25.40, 'cm', 'Cersanit', 1300.00);
INSERT INTO public.produkty (idproduktu, nazwa, cena, vat, ilosc_w_op, miara, producent, stan) VALUES ('P14  ', 'Taśma malarska 2 cm', 5.60, 0.08, 20.00, 'metr', 'Maltap', 160.00);
INSERT INTO public.produkty (idproduktu, nazwa, cena, vat, ilosc_w_op, miara, producent, stan) VALUES ('P15  ', 'Taśma malarska 6 cm', 8.20, 0.08, 10.00, 'metr', 'TapMal', 250.00);
INSERT INTO public.produkty (idproduktu, nazwa, cena, vat, ilosc_w_op, miara, producent, stan) VALUES ('P16  ', 'Emulsja zew', 16.00, 0.08, 1.00, 'litr', 'Malfarb', 190.00);
INSERT INTO public.produkty (idproduktu, nazwa, cena, vat, ilosc_w_op, miara, producent, stan) VALUES ('P17  ', 'Emulsja zew typ C', 38.00, 0.08, 2.00, 'litr', 'Malfarb', 250.00);
INSERT INTO public.produkty (idproduktu, nazwa, cena, vat, ilosc_w_op, miara, producent, stan) VALUES ('P18  ', 'Emalia Lak', 27.00, 0.23, 1.00, 'litr', 'Emolak', 30.00);
INSERT INTO public.produkty (idproduktu, nazwa, cena, vat, ilosc_w_op, miara, producent, stan) VALUES ('P19  ', 'Lakier bezb', 45.00, 0.23, 0.75, 'litr', 'LakMal', 60.00);
INSERT INTO public.produkty (idproduktu, nazwa, cena, vat, ilosc_w_op, miara, producent, stan) VALUES ('P20  ', 'Lakier do drewna LA', 23.00, 0.23, 0.50, 'litr', 'LakMal', 90.00);
INSERT INTO public.produkty (idproduktu, nazwa, cena, vat, ilosc_w_op, miara, producent, stan) VALUES ('P21  ', 'Lakier do metalu', 28.00, 0.23, 2.00, 'litr', 'Emolak', 100.00);
INSERT INTO public.produkty (idproduktu, nazwa, cena, vat, ilosc_w_op, miara, producent, stan) VALUES ('P22  ', 'Farba spray typ C', 16.20, 0.23, 0.50, 'litr', 'LakMal', 120.00);
INSERT INTO public.produkty (idproduktu, nazwa, cena, vat, ilosc_w_op, miara, producent, stan) VALUES ('P23  ', 'Lakierobejca zew', 21.20, 0.23, 0.75, 'litr', 'HolzLasur', 570.00);
INSERT INTO public.produkty (idproduktu, nazwa, cena, vat, ilosc_w_op, miara, producent, stan) VALUES ('P24  ', 'Farba acryl', 89.50, 0.23, 5.00, 'litr', 'Emolak', 29.00);
INSERT INTO public.produkty (idproduktu, nazwa, cena, vat, ilosc_w_op, miara, producent, stan) VALUES ('P25  ', 'Kołek 0,6 cm', 2.30, 0.23, 1.00, 'szt', 'KolEx', 1300.00);
INSERT INTO public.produkty (idproduktu, nazwa, cena, vat, ilosc_w_op, miara, producent, stan) VALUES ('P26  ', 'Kołek 0,8 cm', 2.35, 0.23, 1.00, 'szt', 'KolEx', 120.00);
INSERT INTO public.produkty (idproduktu, nazwa, cena, vat, ilosc_w_op, miara, producent, stan) VALUES ('P27  ', 'Wełna min', 119.00, 0.23, 5.00, 'kg', 'Beranek', 50.00);
INSERT INTO public.produkty (idproduktu, nazwa, cena, vat, ilosc_w_op, miara, producent, stan) VALUES ('P28  ', 'Wełna dociepleniowa', 125.00, 0.23, 6.00, 'kg', 'HotDach', 60.00);
INSERT INTO public.produkty (idproduktu, nazwa, cena, vat, ilosc_w_op, miara, producent, stan) VALUES ('P29  ', 'Cekol drobnoziarnisty', 25.30, 0.08, 4.50, 'kg', 'Cersanit', 100.00);
INSERT INTO public.produkty (idproduktu, nazwa, cena, vat, ilosc_w_op, miara, producent, stan) VALUES ('P30  ', 'Gładź gipsowa', 42.60, 0.08, 5.00, 'kg', 'Megaron', 28.00);
INSERT INTO public.produkty (idproduktu, nazwa, cena, vat, ilosc_w_op, miara, producent, stan) VALUES ('P31  ', 'Cement biały', 3.50, 0.08, 1.50, 'kg', 'Cersanit', 90.00);
INSERT INTO public.produkty (idproduktu, nazwa, cena, vat, ilosc_w_op, miara, producent, stan) VALUES ('P32  ', 'Cement szary', 21.50, 0.08, 6.00, 'kg', 'Cersanit', 69.00);
INSERT INTO public.produkty (idproduktu, nazwa, cena, vat, ilosc_w_op, miara, producent, stan) VALUES ('P33  ', 'Listwa plastikowa 2 cm', 5.00, 0.23, 3.00, 'metr', 'Listewnik', 120.00);
INSERT INTO public.produkty (idproduktu, nazwa, cena, vat, ilosc_w_op, miara, producent, stan) VALUES ('P34  ', 'Listwa aluminiowa 2.5 cm', 7.20, 0.23, 2.50, 'metr', 'Listal', 100.00);
INSERT INTO public.produkty (idproduktu, nazwa, cena, vat, ilosc_w_op, miara, producent, stan) VALUES ('P35  ', 'Kątownik 5 cm', 10.00, 0.23, 2.00, 'metr', 'Listal', 100.00);
INSERT INTO public.produkty (idproduktu, nazwa, cena, vat, ilosc_w_op, miara, producent, stan) VALUES ('P36  ', 'Kątownik 4 cm', 8.80, 0.23, 2.50, 'metr', 'Listal', 28.00);
INSERT INTO public.produkty (idproduktu, nazwa, cena, vat, ilosc_w_op, miara, producent, stan) VALUES ('P50  ', 'cudak równie drogi', 367.00, 0.23, 1.00, 'szt', 'Stanley', 100.00);

-- SQL Script for Laboratorium 5:
-- Funkcje, operacje na zbiorach i integralność danych
-- Temat: System sprzedaży samochodów
-- Database: PostgreSQL (compatible with SQLite)

-- 1. Tabela Producentów
CREATE TABLE producenci (
    id_producenta SERIAL PRIMARY KEY,
    nazwa VARCHAR(50) NOT NULL UNIQUE,
    kraj VARCHAR(50) NOT NULL
);

-- 2. Tabela Klienci
CREATE TABLE klienci (
    id_klienta SERIAL PRIMARY KEY,
    imie VARCHAR(50) NOT NULL,
    nazwisko VARCHAR(50) NOT NULL,
    miasto VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    telefon VARCHAR(15)
);

-- 3. Tabela Modele
CREATE TABLE modele (
    id_modelu SERIAL PRIMARY KEY,
    id_producenta INTEGER REFERENCES producenci (id_producenta),
    nazwa VARCHAR(50) NOT NULL,
    segment VARCHAR(10) -- A, B, C, D, E, SUV itp.
);

-- 4. Tabela Samochody (konkretne egzemplarze)
CREATE TABLE samochody (
    id_samochodu SERIAL PRIMARY KEY,
    id_modelu INTEGER REFERENCES modele (id_modelu),
    rocznik INTEGER CHECK (rocznik > 1900),
    kolor VARCHAR(30),
    przebieg INTEGER DEFAULT 0 CHECK (przebieg >= 0),
    cena_wyjsciowa DECIMAL(12, 2) NOT NULL,
    vin VARCHAR(17) UNIQUE
);

-- 5. Tabela Sprzedaż
CREATE TABLE sprzedaz (
    id_sprzedazy SERIAL PRIMARY KEY,
    id_samochodu INTEGER UNIQUE REFERENCES samochody (id_samochodu),
    id_klienta INTEGER REFERENCES klienci (id_klienta),
    data_sprzedazy DATE DEFAULT CURRENT_DATE,
    cena_koncowa DECIMAL(12, 2) NOT NULL,
    metoda_platnosci VARCHAR(20) CHECK (
        metoda_platnosci IN ('gotówka', 'kredyt', 'leasing', 'przelew')
    )
);

-- Wstawianie danych (20 rekordów na tabelę)

-- Producenci
INSERT INTO producenci (nazwa, kraj) VALUES
('Toyota', 'Japonia'),
('Volkswagen', 'Niemcy'),
('Ford', 'USA'),
('BMW', 'Niemcy'),
('Mercedes-Benz', 'Niemcy'),
('Audi', 'Niemcy'),
('Honda', 'Japonia'),
('Hyundai', 'Korea Południowa'),
('Kia', 'Korea Południowa'),
('Renault', 'Francja'),
('Peugeot', 'Francja'),
('Fiat', 'Włochy'),
('Volvo', 'Szwecja'),
('Skoda', 'Czechy'),
('Mazda', 'Japonia'),
('Nissan', 'Japonia'),
('Tesla', 'USA'),
('Porsche', 'Niemcy'),
('Lexus', 'Japonia'),
('Opel', 'Niemcy');

-- Klienci
INSERT INTO klienci (imie, nazwisko, miasto, email, telefon) VALUES
('Jan', 'Kowalski', 'Warszawa', 'jan.kowalski@email.pl', '123456789'),
('Anna', 'Nowak', 'Kraków', 'anna.nowak@email.pl', '234567890'),
('Piotr', 'Wiśniewski', 'Wrocław', 'piotr.w@email.pl', '345678901'),
('Maria', 'Wójcik', 'Poznań', 'm.wojcik@email.pl', NULL),
('Krzysztof', 'Kowalczyk', 'Gdańsk', 'krzysiek.k@email.pl', '567890123'),
('Agnieszka', 'Kamińska', 'Łódź', 'aga.k@email.pl', '678901234'),
('Michał', 'Zieliński', 'Szczecin', 'm.zielinski@email.pl', '789012345'),
('Małgorzata', 'Szymańska', 'Lublin', 'malgo.s@email.pl', '890123456'),
('Tomasz', 'Woźniak', 'Białystok', 't.wozniak@email.pl', '901234567'),
('Katarzyna', 'Kozłowska', 'Gdynia', 'k.kozlowska@email.pl', NULL),
('Paweł', 'Jankowski', 'Częstochowa', 'p.jankowski@email.pl', '111222333'),
('Barbara', 'Mazur', 'Radom', 'b.mazur@email.pl', '222333444'),
('Marcin', 'Kwiatkowski', 'Sosnowiec', 'm.kwiatkowski@email.pl', '333444555'),
('Ewa', 'Krawczyk', 'Toruń', 'e.krawczyk@email.pl', '444555666'),
('Andrzej', 'Piotrowski', 'Kielce', 'a.piotrowski@email.pl', '555666777'),
('Magdalena', 'Grabowska', 'Gliwice', 'm.grabowska@email.pl', '666777888'),
('Łukasz', 'Pawlak', 'Zabrze', 'l.pawlak@email.pl', '777888999'),
('Joanna', 'Michalska', 'Olsztyn', 'j.michalska@email.pl', '888999000'),
('Robert', 'Nowicki', 'Bielsko-Biała', 'r.nowicki@email.pl', '999000111'),
('Marta', 'Adamczyk', 'Rzeszów', 'm.adamczyk@email.pl', '000111222');

-- Modele
INSERT INTO modele (id_producenta, nazwa, segment) VALUES
(1, 'Corolla', 'C'),
(2, 'Golf', 'C'),
(3, 'Focus', 'C'),
(4, 'Seria 3', 'D'),
(5, 'Klasa C', 'D'),
(6, 'A4', 'D'),
(7, 'Civic', 'C'),
(8, 'Tucson', 'SUV'),
(9, 'Sportage', 'SUV'),
(10, 'Clio', 'B'),
(11, '208', 'B'),
(12, '500', 'A'),
(13, 'XC60', 'SUV'),
(14, 'Octavia', 'C'),
(15, 'CX-5', 'SUV'),
(16, 'Qashqai', 'SUV'),
(17, 'Model 3', 'D'),
(18, '911', 'Sport'),
(19, 'RX', 'SUV'),
(20, 'Astra', 'C');

-- Samochody
INSERT INTO samochody (
    id_modelu, rocznik, kolor, przebieg, cena_wyjsciowa, vin
) VALUES
(1, 2022, 'Biały', 15000, 95000.00, 'VIN00000000000001'),
(2, 2021, 'Czarny', 32000, 88000.00, 'VIN00000000000002'),
(3, 2020, 'Niebieski', 45000, 72000.00, 'VIN00000000000003'),
(4, 2023, 'Szary', 5000, 185000.00, 'VIN00000000000004'),
(5, 2022, 'Srebrny', 12000, 210000.00, 'VIN00000000000005'),
(6, 2021, 'Czerwony', 28000, 145000.00, 'VIN00000000000006'),
(7, 2019, 'Biały', 60000, 68000.00, 'VIN00000000000007'),
(8, 2022, 'Zielony', 20000, 135000.00, 'VIN00000000000008'),
(9, 2023, 'Szary', 8000, 142000.00, 'VIN00000000000009'),
(10, 2020, 'Żółty', 35000, 55000.00, 'VIN00000000000010'),
(11, 2021, 'Niebieski', 25000, 62000.00, 'VIN00000000000011'),
(12, 2022, 'Czerwony', 10000, 58000.00, 'VIN00000000000012'),
(13, 2023, 'Czarny', 2000, 245000.00, 'VIN00000000000013'),
(14, 2021, 'Srebrny', 30000, 92000.00, 'VIN00000000000014'),
(15, 2020, 'Biały', 40000, 115000.00, 'VIN00000000000015'),
(16, 2022, 'Niebieski', 18000, 125000.00, 'VIN00000000000016'),
(17, 2023, 'Biały', 5000, 220000.00, 'VIN00000000000017'),
(18, 2018, 'Czarny', 55000, 450000.00, 'VIN00000000000018'),
(19, 2022, 'Szary', 15000, 280000.00, 'VIN00000000000019'),
(20, 2021, 'Biały', 22000, 85000.00, 'VIN00000000000020');

-- Sprzedaż
INSERT INTO sprzedaz (
    id_samochodu, id_klienta, data_sprzedazy, cena_koncowa, metoda_platnosci
) VALUES
(1, 1, '2023-10-05', 93000.00, 'gotówka'),
(2, 2, '2023-09-12', 86500.00, 'kredyt'),
(3, 3, '2023-11-20', 70000.00, 'przelew'),
(4, 4, '2023-12-01', 182000.00, 'leasing'),
(5, 5, '2023-08-15', 205000.00, 'przelew'),
(6, 6, '2023-10-25', 140000.00, 'kredyt'),
(7, 7, '2023-07-30', 65000.00, 'gotówka'),
(8, 8, '2023-11-02', 132000.00, 'leasing'),
(9, 9, '2023-12-10', 140000.00, 'gotówka'),
(10, 10, '2023-09-05', 53000.00, 'przelew'),
(11, 11, '2023-10-18', 60000.00, 'kredyt'),
(12, 12, '2023-11-15', 57000.00, 'gotówka'),
(13, 13, '2023-12-20', 240000.00, 'leasing'),
(14, 14, '2023-08-22', 90000.00, 'przelew'),
(15, 15, '2023-10-30', 112000.00, 'kredyt'),
(16, 16, '2023-11-28', 123000.00, 'leasing'),
(17, 17, '2023-12-05', 215000.00, 'przelew'),
(18, 18, '2023-09-20', 440000.00, 'gotówka'),
(19, 19, '2023-10-10', 275000.00, 'leasing'),
(20, 20, '2023-11-12', 83000.00, 'kredyt');

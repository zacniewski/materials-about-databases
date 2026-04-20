-- Tworzenie bazy danych dla laboratorium 6:
-- Funkcje w SQL
-- Temat: Miasta świata

DROP TABLE IF EXISTS miasta;
DROP TABLE IF EXISTS kraje;
DROP TABLE IF EXISTS kontynenty;

CREATE TABLE kontynenty (
    id_kontynentu SERIAL PRIMARY KEY,
    nazwa_kontynentu VARCHAR(50) NOT NULL UNIQUE,
    powierzchnia_mln_km2 DECIMAL(10, 2)
);

CREATE TABLE kraje (
    id_kraju SERIAL PRIMARY KEY,
    nazwa_kraju VARCHAR(100) NOT NULL,
    kod_kraju CHAR(3) UNIQUE,
    id_kontynentu INTEGER REFERENCES kontynenty (id_kontynentu),
    populacja_mln DECIMAL(10, 2),
    waluta VARCHAR(50)
);

CREATE TABLE miasta (
    id_miasta SERIAL PRIMARY KEY,
    nazwa_miasta VARCHAR(100) NOT NULL,
    id_kraju INTEGER REFERENCES kraje (id_kraju),
    liczba_mieszkancow INTEGER,
    czy_stolica BOOLEAN DEFAULT FALSE,
    data_założenia DATE
);

-- Wstawianie 20 rekordów do tabeli kontynenty
-- (uproszczone o regiony, aby dobić do 20)
INSERT INTO kontynenty (nazwa_kontynentu, powierzchnia_mln_km2) VALUES
('Europa', 10.18),
('Azja', 44.58),
('Afryka', 30.37),
('Ameryka Północna', 24.71),
('Ameryka Południowa', 17.84),
('Australia i Oceania', 8.60),
('Antarktyda', 14.20),
-- Dodatkowe regiony dla potrzeb zadania (20 rekordów w sumie w tabelach ma być)
('Bliski Wschód', 7.20),
('Azja Południowo-Wschodnia', 4.50),
('Ameryka Środkowa', 0.52),
('Karaiby', 0.23),
('Skandynawia', 0.92),
('Bałkany', 0.66),
('Europa Środkowa', 1.05),
('Europa Zachodnia', 1.10),
('Europa Wschodnia', 18.00),
('Afryka Północna', 9.40),
('Afryka Subsaharyjska', 21.00),
('Azja Wschodnia', 11.00),
('Azja Środkowa', 4.00);

-- Wstawianie 20 rekordów do tabeli kraje
INSERT INTO kraje (
    nazwa_kraju, kod_kraju, id_kontynentu, populacja_mln, waluta
) VALUES
('Polska', 'POL', 1, 38.0, 'PLN'),
('Niemcy', 'DEU', 1, 83.0, 'EUR'),
('Francja', 'FRA', 1, 67.0, 'EUR'),
('Włochy', 'ITA', 1, 60.0, 'EUR'),
('Hiszpania', 'ESP', 1, 47.0, 'EUR'),
('Wielka Brytania', 'GBR', 1, 67.0, 'GBP'),
('USA', 'USA', 4, 331.0, 'USD'),
('Kanada', 'CAN', 4, 38.0, 'CAD'),
('Meksyk', 'MEX', 4, 128.0, 'MXN'),
('Brazylia', 'BRA', 5, 212.0, 'BRL'),
('Argentyna', 'ARG', 5, 45.0, 'ARS'),
('Chiny', 'CHN', 2, 1402.0, 'CNY'),
('Japonia', 'JPN', 2, 125.0, 'JPY'),
('Indie', 'IND', 2, 1380.0, 'INR'),
('Egipt', 'EGY', 3, 102.0, 'EGP'),
('RPA', 'ZAF', 3, 59.0, 'ZAR'),
('Nigeria', 'NGA', 3, 206.0, 'NGN'),
('Australia', 'AUS', 6, 25.0, 'AUD'),
('Nowa Zelandia', 'NZL', 6, 5.0, 'NZD'),
('Turcja', 'TUR', 8, 84.0, 'TRY');

-- Wstawianie 20 rekordów do tabeli miasta
INSERT INTO miasta (
    nazwa_miasta, id_kraju, liczba_mieszkancow, czy_stolica, data_założenia
) VALUES
('Warszawa', 1, 1790000, TRUE, '1300-01-01'),
('Kraków', 1, 780000, FALSE, '1257-06-05'),
('Berlin', 2, 3645000, TRUE, '1237-01-01'),
('Monachium', 2, 1472000, FALSE, '1158-01-01'),
('Paryż', 3, 2148000, TRUE, '0052-01-01'),
('Marsylia', 3, 861000, FALSE, '0600-01-01'),
('Rzym', 4, 2873000, TRUE, '0753-04-21'),
('Mediolan', 4, 1352000, FALSE, '0600-01-01'),
('Madryt', 5, 3223000, TRUE, '0860-01-01'),
('Barcelona', 5, 1620000, FALSE, '0230-01-01'),
('Londyn', 6, 8982000, TRUE, '0043-01-01'),
('Nowy Jork', 7, 8336000, FALSE, '1624-01-01'),
('Waszyngton', 7, 689000, TRUE, '1790-07-16'),
('Tokio', 13, 13960000, TRUE, '1457-01-01'),
('Pekin', 12, 21540000, TRUE, '1045-01-01'),
('Rio de Janeiro', 10, 6748000, FALSE, '1565-03-01'),
('Brasilia', 10, 3055000, TRUE, '1960-04-21'),
('Kair', 15, 9540000, TRUE, '0969-01-01'),
('Sydney', 18, 5312000, FALSE, '1788-01-26'),
('Stambuł', 20, 15460000, FALSE, '0660-01-01');

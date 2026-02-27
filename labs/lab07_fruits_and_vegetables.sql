-- Tworzenie bazy danych dla laboratorium 7: Widoki i grupowanie
-- Temat: Owoce i warzywa

DROP TABLE IF EXISTS warzywa;
DROP TABLE IF EXISTS owoce;
DROP TABLE IF EXISTS kategorie;

CREATE TABLE kategorie (
    id_kategorii SERIAL PRIMARY KEY,
    nazwa_kategorii VARCHAR(50) NOT NULL
);

INSERT INTO kategorie (nazwa_kategorii) VALUES ('Krajowe'), ('Egzotyczne'), ('Sezonowe'), ('Mrożonki');

CREATE TABLE owoce (
    id_owocu SERIAL PRIMARY KEY,
    nazwa VARCHAR(50) NOT NULL,
    id_kategorii INTEGER REFERENCES kategorie(id_kategorii),
    cena_kg DECIMAL(10, 2) NOT NULL,
    ilosc_kg DECIMAL(10, 2) NOT NULL,
    pochodzenie VARCHAR(50),
    data_dostawy DATE
);

CREATE TABLE warzywa (
    id_warzywa SERIAL PRIMARY KEY,
    nazwa VARCHAR(50) NOT NULL,
    id_kategorii INTEGER REFERENCES kategorie(id_kategorii),
    cena_kg DECIMAL(10, 2) NOT NULL,
    ilosc_kg DECIMAL(10, 2) NOT NULL,
    pochodzenie VARCHAR(50),
    data_dostawy DATE
);

-- Wstawianie 20 rekordów do tabeli owoce
INSERT INTO owoce (nazwa, id_kategorii, cena_kg, ilosc_kg, pochodzenie, data_dostawy) VALUES
('Jabłko Jonagold', 1, 3.50, 150.00, 'Polska', '2026-02-20'),
('Banan', 2, 6.99, 200.00, 'Ekwador', '2026-02-22'),
('Pomarańcza', 2, 5.50, 120.00, 'Hiszpania', '2026-02-21'),
('Gruszka Konferencja', 1, 4.80, 80.00, 'Polska', '2026-02-19'),
('Winogrona ciemne', 2, 12.00, 50.00, 'Włochy', '2026-02-23'),
('Cytryna', 2, 8.50, 40.00, 'Turcja', '2026-02-24'),
('Truskawka', 3, 25.00, 20.00, 'Hiszpania', '2026-02-25'),
('Malina mrożona', 4, 30.00, 15.00, 'Polska', '2026-01-15'),
('Borówka amerykańska', 3, 45.00, 30.00, 'Chile', '2026-02-20'),
('Arbuz', 2, 4.00, 300.00, 'Grecja', '2026-02-18'),
('Ananas', 2, 9.00, 45.00, 'Kostaryka', '2026-02-22'),
('Kiwi', 2, 10.50, 60.00, 'Nowa Zelandia', '2026-02-21'),
('Mandarynka', 2, 7.00, 180.00, 'Hiszpania', '2026-02-23'),
('Śliwka Węgierka', 1, 5.00, 90.00, 'Polska', '2026-02-15'),
('Brzoskwinia', 3, 8.50, 55.00, 'Grecja', '2026-02-24'),
('Morela', 3, 11.00, 35.00, 'Turcja', '2026-02-25'),
('Mango', 2, 15.00, 25.00, 'Brazylia', '2026-02-26'),
('Granat', 2, 13.00, 30.00, 'Izrael', '2026-02-24'),
('Wiśnia mrożona', 4, 18.00, 40.00, 'Polska', '2026-01-20'),
('Czereśnia', 3, 35.00, 15.00, 'Węgry', '2026-02-25');

-- Wstawianie 20 rekordów do tabeli warzywa
INSERT INTO warzywa (nazwa, id_kategorii, cena_kg, ilosc_kg, pochodzenie, data_dostawy) VALUES
('Ziemniak Irys', 1, 2.20, 1000.00, 'Polska', '2026-02-20'),
('Marchew', 1, 2.80, 500.00, 'Polska', '2026-02-21'),
('Cebula żółta', 1, 3.20, 400.00, 'Polska', '2026-02-22'),
('Pomidor Malinowy', 3, 14.00, 100.00, 'Polska', '2026-02-25'),
('Ogórek szklarniowy', 3, 12.00, 150.00, 'Polska', '2026-02-24'),
('Papryka czerwona', 2, 15.00, 80.00, 'Hiszpania', '2026-02-23'),
('Brokuł', 1, 6.50, 60.00, 'Włochy', '2026-02-22'),
('Kalafior', 1, 8.00, 40.00, 'Francja', '2026-02-21'),
('Cukinia', 3, 9.00, 70.00, 'Hiszpania', '2026-02-24'),
('Bakłażan', 2, 11.00, 30.00, 'Grecja', '2026-02-25'),
('Szpinak świeży', 3, 18.00, 20.00, 'Włochy', '2026-02-26'),
('Fasolka szparagowa mrożona', 4, 12.50, 100.00, 'Polska', '2026-01-25'),
('Groszek zielony mrożony', 4, 10.00, 120.00, 'Polska', '2026-01-26'),
('Pietruszka korzeń', 1, 7.50, 150.00, 'Polska', '2026-02-20'),
('Seler korzeń', 1, 6.00, 130.00, 'Polska', '2026-02-19'),
('Por', 1, 4.50, 90.00, 'Belgia', '2026-02-22'),
('Czosnek', 1, 25.00, 25.00, 'Polska', '2026-02-18'),
('Rzodkiewka pęczek', 3, 2.50, 200.00, 'Włochy', '2026-02-25'),
('Sałata masłowa', 3, 4.00, 100.00, 'Polska', '2026-02-24'),
('Dynia', 1, 3.00, 300.00, 'Polska', '2026-02-10');

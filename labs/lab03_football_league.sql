-- Skrypt SQL do Laboratorium 3: Liga Piłkarska
-- Tabele: Druzyny, Pilkarze, Stadiony, Mecze
-- Każda tabela zawiera 20 rekordów.

-- 1. Stadiony
CREATE TABLE Stadiony (
    Id SERIAL PRIMARY KEY,
    Nazwa VARCHAR(100) NOT NULL,
    Miasto VARCHAR(100) NOT NULL,
    Pojemnosc INTEGER NOT NULL
);

-- 2. Druzyny
CREATE TABLE Druzyny (
    Id SERIAL PRIMARY KEY,
    Nazwa VARCHAR(100) NOT NULL,
    Miasto VARCHAR(100) NOT NULL,
    Rok_zalozenia INTEGER,
    Id_stadionu INTEGER REFERENCES Stadiony (Id)
);

-- 3. Pilkarze
CREATE TABLE Pilkarze (
    Id SERIAL PRIMARY KEY,
    Imie VARCHAR(50) NOT NULL,
    Nazwisko VARCHAR(50) NOT NULL,
    Pozycja VARCHAR(50),
    Wynagrodzenie NUMERIC(10, 2),
    Id_druzyny INTEGER REFERENCES Druzyny (Id)
);

-- 4. Mecze
CREATE TABLE Mecze (
    Id SERIAL PRIMARY KEY,
    Id_gospodarza INTEGER REFERENCES Druzyny (Id),
    Id_goscia INTEGER REFERENCES Druzyny (Id),
    Id_stadionu INTEGER REFERENCES Stadiony (Id),
    Data_meczu DATE NOT NULL,
    Bramki_gospodarza INTEGER DEFAULT 0,
    Bramki_goscia INTEGER DEFAULT 0
);

-- Dane dla Stadiony (20 rekordów)
INSERT INTO Stadiony (Nazwa, Miasto, Pojemnosc) VALUES
('Stadion Narodowy', 'Warszawa', 58580),
('Polsat Plus Arena', 'Gdańsk', 41620),
('Stadion Miejski we Wrocławiu', 'Wrocław', 45105),
('Enea Stadion', 'Poznań', 42837),
('Stadion Wojska Polskiego', 'Warszawa', 31800),
('Stadion Miejski im. Henryka Reymana', 'Kraków', 33326),
('Arena Zabrze', 'Zabrze', 24563),
('Stadion Miejski w Białymstoku', 'Białystok', 22386),
('Stadion im. Floriana Krygiera', 'Szczecin', 21163),
('Stadion Widzewa', 'Łódź', 18018),
('Stadion Miejski w Kielcach', 'Kielce', 15500),
('Stadion GKS Katowice', 'Katowice', 6700),
('Stadion Miejski w Gliwicach', 'Gliwice', 10037),
('Stadion Zagłębia Lubin', 'Lubin', 16068),
('Stadion Cracovii', 'Kraków', 15114),
('Stadion Miejski w Bielsku-Białej', 'Bielsko-Biała', 15076),
('Stadion Stali Mielec', 'Mielec', 6864),
('Stadion Radomiaka', 'Radom', 8840),
('Stadion Miejski w Częstochowie', 'Częstochowa', 5500),
('Stadion Ruchu Chorzów', 'Chorzów', 9300);

-- Dane dla Druzyny (20 rekordów)
INSERT INTO Druzyny (Nazwa, Miasto, Rok_zalozenia, Id_stadionu) VALUES
('Legia Warszawa', 'Warszawa', 1916, 5),
('Lech Poznań', 'Poznań', 1922, 4),
('Raków Częstochowa', 'Częstochowa', 1921, 19),
('Pogoń Szczecin', 'Szczecin', 1948, 9),
('Jagiellonia Białystok', 'Białystok', 1920, 8),
('Śląsk Wrocław', 'Wrocław', 1947, 3),
('Górnik Zabrze', 'Zabrze', 1948, 7),
('Widzew Łódź', 'Łódź', 1910, 10),
('Cracovia', 'Kraków', 1906, 15),
('Radomiak Radom', 'Radom', 1910, 18),
('Stal Mielec', 'Mielec', 1939, 17),
('Zagłębie Lubin', 'Lubin', 1945, 14),
('Piast Gliwice', 'Gliwice', 1945, 13),
('Korona Kielce', 'Kielce', 1973, 11),
('Wisła Kraków', 'Kraków', 1906, 6),
('Lechia Gdańsk', 'Gdańsk', 1945, 2),
('GKS Katowice', 'Katowice', 1964, 12),
('Ruch Chorzów', 'Chorzów', 1920, 20),
('Arka Gdynia', 'Gdynia', 1929, 2),
('Podbeskidzie', 'Bielsko-Biała', 1997, 16);

-- Dane dla Pilkarze (20 rekordów)
INSERT INTO Pilkarze (Imie, Nazwisko, Pozycja, Wynagrodzenie, Id_druzyny) VALUES
('Robert', 'Lewandowski', 'Napastnik', 50000.00, 1),
('Piotr', 'Zieliński', 'Pomocnik', 45000.00, 2),
('Wojciech', 'Szczęsny', 'Bramkarz', 48000.00, 3),
('Jakub', 'Błaszczykowski', 'Pomocnik', 35000.00, 15),
('Kamil', 'Glik', 'Obrońca', 38000.00, 9),
('Arkadiusz', 'Milik', 'Napastnik', 42000.00, 4),
('Grzegorz', 'Krychowiak', 'Pomocnik', 40000.00, 5),
('Jan', 'Bednarek', 'Obrońca', 37000.00, 2),
('Matty', 'Cash', 'Obrońca', 36000.00, 6),
('Karol', 'Świderski', 'Napastnik', 34000.00, 7),
('Nicola', 'Zalewski', 'Pomocnik', 31000.00, 1),
('Sebastian', 'Szymański', 'Pomocnik', 39000.00, 8),
('Przemysław', 'Frankowski', 'Pomocnik', 33000.00, 10),
('Paweł', 'Dawidowicz', 'Obrońca', 32000.00, 11),
('Bartosz', 'Bereszyński', 'Obrońca', 35000.00, 12),
('Łukasz', 'Skorupski', 'Bramkarz', 31000.00, 13),
('Kacper', 'Kozłowski', 'Pomocnik', 28000.00, 14),
('Jakub', 'Kamiński', 'Napastnik', 30000.00, 16),
('Michał', 'Skóraś', 'Napastnik', 29000.00, 17),
('Kamil', 'Grosicki', 'Pomocnik', 36000.00, 4);

-- Dane dla Mecze (20 rekordów)
INSERT INTO Mecze (
    Id_gospodarza,
    Id_goscia,
    Id_stadionu,
    Data_meczu,
    Bramki_gospodarza,
    Bramki_goscia
) VALUES
(1, 2, 5, '2023-09-01', 2, 1),
(3, 4, 19, '2023-09-02', 1, 1),
(5, 6, 8, '2023-09-03', 0, 2),
(7, 8, 7, '2023-09-04', 3, 0),
(9, 10, 15, '2023-09-05', 1, 2),
(11, 12, 17, '2023-09-06', 0, 0),
(13, 14, 13, '2023-09-07', 2, 2),
(15, 16, 6, '2023-09-08', 4, 1),
(17, 18, 12, '2023-09-09', 1, 0),
(19, 20, 2, '2023-09-10', 2, 0),
(1, 3, 5, '2023-09-15', 1, 2),
(2, 4, 4, '2023-09-16', 3, 3),
(6, 5, 3, '2023-09-17', 1, 0),
(8, 7, 10, '2023-09-18', 2, 1),
(10, 9, 18, '2023-09-19', 0, 2),
(12, 11, 14, '2023-09-20', 1, 1),
(14, 13, 11, '2023-09-21', 2, 1),
(16, 15, 2, '2023-09-22', 0, 3),
(18, 17, 20, '2023-09-23', 1, 1),
(20, 19, 16, '2023-09-24', 0, 2);

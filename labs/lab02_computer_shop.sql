-- Skrypt SQL do Laboratorium 1: Sklep komputerowy
-- Tabele: Producenci, Produkty, Klienci, Zamowienia
-- Każda tabela zawiera 20 rekordów.

-- 1. Producenci
CREATE TABLE Producenci (
    Id SERIAL PRIMARY KEY,
    Nazwa VARCHAR(100) NOT NULL,
    Kraj VARCHAR(50)
);

-- 2. Produkty
CREATE TABLE Produkty (
    Id SERIAL PRIMARY KEY,
    Nazwa VARCHAR(100) NOT NULL,
    Cena NUMERIC(10, 2) NOT NULL,
    Ilosc_na_stanie INTEGER DEFAULT 0,
    Kategoria VARCHAR(50),
    Id_producenta INTEGER REFERENCES Producenci (Id)
);

-- 3. Klienci
CREATE TABLE Klienci (
    Id SERIAL PRIMARY KEY,
    Imie VARCHAR(50) NOT NULL,
    Nazwisko VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Miasto VARCHAR(50)
);

-- 4. Zamowienia
CREATE TABLE Zamowienia (
    Id SERIAL PRIMARY KEY,
    Id_klienta INTEGER REFERENCES Klienci (Id),
    Id_produktu INTEGER REFERENCES Produkty (Id),
    Data_zamowienia DATE DEFAULT CURRENT_DATE,
    Liczba_sztuk INTEGER NOT NULL
);

-- Dane dla Producenci (20 rekordów)
INSERT INTO Producenci (Nazwa, Kraj) VALUES
('Intel', 'USA'), ('AMD', 'USA'), ('NVIDIA', 'USA'), ('ASUS', 'Tajwan'),
('MSI', 'Tajwan'), ('Gigabyte', 'Tajwan'), ('Samsung', 'Korea Południowa'),
('LG', 'Korea Południowa'), ('Logitech', 'Szwajcaria'), ('Razer', 'USA'),
('Corsair', 'USA'), ('Seagate', 'USA'), ('Western Digital', 'USA'),
('Kingston', 'USA'), ('HP', 'USA'), ('Dell', 'USA'), ('Lenovo', 'Chiny'),
('Acer', 'Tajwan'), ('Xiaomi', 'Chiny'), ('Brother', 'Japonia');

-- Dane dla Produkty (20 rekordów)
INSERT INTO Produkty (
    Nazwa, Cena, Ilosc_na_stanie, Kategoria, Id_producenta
) VALUES
('Core i7-13700K', 1899.00, 15, 'Procesory', 1),
('Ryzen 7 7800X3D', 1750.00, 10, 'Procesory', 2),
('GeForce RTX 4070 Ti', 3999.00, 5, 'Karty graficzne', 3),
('Radeon RX 7900 XT', 3500.00, 8, 'Karty graficzne', 2),
('ROG Strix Z790-E', 2200.00, 4, 'Płyty główne', 4),
('MPG B650 Carbon WiFi', 1300.00, 12, 'Płyty główne', 5),
('Odyssey G5 27"', 1200.00, 20, 'Monitory', 7),
('UltraGear 34"', 2500.00, 7, 'Monitory', 8),
('MX Master 3S', 450.00, 30, 'Akcesoria', 9),
('BlackWidow V4', 800.00, 15, 'Akcesoria', 10),
('Vengeance RGB 32GB', 600.00, 25, 'RAM', 11),
('IronWolf 4TB', 500.00, 40, 'Dyski', 12),
('Blue 1TB SSD', 300.00, 50, 'Dyski', 13),
('Fury Renegade 2TB', 750.00, 18, 'Dyski', 14),
('LaserJet Pro', 1100.00, 6, 'Drukarki', 15),
('UltraSharp 27"', 2800.00, 10, 'Monitory', 16),
('Legion 5 15"', 5500.00, 4, 'Laptopy', 17),
('Nitro 5 17"', 4800.00, 9, 'Laptopy', 18),
('AX55R', 400.00, 22, 'Sieci', 19),
('MFC-L2712DW', 950.00, 11, 'Drukarki', 20);

-- Dane dla Klienci (20 rekordów)
INSERT INTO Klienci (Imie, Nazwisko, Email, Miasto) VALUES
('Jan', 'Kowalski', 'jan.kowalski@email.pl', 'Warszawa'),
('Anna', 'Nowak', 'anna.nowak@email.pl', 'Kraków'),
('Piotr', 'Wiśniewski', 'piotr.w@email.pl', 'Gdańsk'),
('Maria', 'Wójcik', 'm.wojcik@email.pl', 'Wrocław'),
('Krzysztof', 'Kowalczyk', 'krzys.k@email.pl', 'Poznań'),
('Ewa', 'Kamińska', 'ewa.k@email.pl', 'Łódź'),
('Marek', 'Lewandowski', 'm.lewandowski@email.pl', 'Warszawa'),
('Magdalena', 'Zielińska', 'magda.z@email.pl', 'Kraków'),
('Tomasz', 'Szymański', 't.szymanski@email.pl', 'Szczecin'),
('Agnieszka', 'Woźniak', 'aga.w@email.pl', 'Bydgoszcz'),
('Michał', 'Dąbrowski', 'm.dabrowski@email.pl', 'Lublin'),
('Katarzyna', 'Kozłowska', 'k.kozlowska@email.pl', 'Katowice'),
('Andrzej', 'Jankowski', 'a.jankowski@email.pl', 'Warszawa'),
('Małgorzata', 'Mazur', 'm.mazur@email.pl', 'Gdańsk'),
('Paweł', 'Kwiatkowski', 'p.kwiat@email.pl', 'Rzeszów'),
('Barbara', 'Krawczyk', 'b.krawczyk@email.pl', 'Olsztyn'),
('Robert', 'Stępień', 'r.stepien@email.pl', 'Kraków'),
('Zofia', 'Piotrowska', 'z.piotrowska@email.pl', 'Warszawa'),
('Adam', 'Grabowski', 'a.grabowski@email.pl', 'Białystok'),
('Helena', 'Nowakowska', 'h.nowakowska@email.pl', 'Kielce');

-- Dane dla Zamowienia (20 rekordów)
INSERT INTO Zamowienia (
    Id_klienta, Id_produktu, Data_zamowienia, Liczba_sztuk
) VALUES
(1, 1, '2023-10-01', 1), (2, 3, '2023-10-02', 1), (3, 7, '2023-10-03', 2),
(4, 9, '2023-10-04', 1), (5, 11, '2023-10-05', 4), (6, 13, '2023-10-06', 1),
(7, 15, '2023-10-07', 1), (8, 17, '2023-10-08', 1), (9, 19, '2023-10-09', 3),
(10, 2, '2023-10-10', 1), (11, 4, '2023-10-11', 1), (12, 6, '2023-10-12', 1),
(13, 8, '2023-10-13', 2), (14, 10, '2023-10-14', 1), (15, 12, '2023-10-15', 2),
(16, 14, '2023-10-16', 1), (17, 16, '2023-10-17', 1), (18, 18, '2023-10-18', 1),
(19, 20, '2023-10-19', 1), (20, 1, '2023-10-20', 2);

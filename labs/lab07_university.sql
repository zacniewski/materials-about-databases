-- Plik z danymi do Laboratorium 7: Grupowanie i podzapytania w SQL
-- Temat: System zarządzania studentami

-- Usuwanie tabel, jeśli istnieją (w celu idempotentności)
DROP TABLE IF EXISTS Oceny CASCADE;
DROP TABLE IF EXISTS Przedmioty CASCADE;
DROP TABLE IF EXISTS Studenci CASCADE;
DROP TABLE IF EXISTS Kierunki CASCADE;

-- Tabela Kierunki
CREATE TABLE Kierunki (
    Id_kierunku SERIAL PRIMARY KEY,
    Nazwa_kierunku TEXT NOT NULL,
    Wydzial TEXT NOT NULL
);

-- Dane dla tabeli Kierunki (20 rekordów)
INSERT INTO Kierunki (Nazwa_kierunku, Wydzial) VALUES (
    'Informatyka', 'Wydział Elektrotechniki i Informatyki'
);
INSERT INTO Kierunki (Nazwa_kierunku, Wydzial) VALUES (
    'Automatyka i Robotyka', 'Wydział Elektrotechniki i Informatyki'
);
INSERT INTO Kierunki (Nazwa_kierunku, Wydzial) VALUES (
    'Elektronika', 'Wydział Elektrotechniki i Informatyki'
);
INSERT INTO Kierunki (Nazwa_kierunku, Wydzial) VALUES (
    'Budownictwo', 'Wydział Budownictwa i Inżynierii Środowiska'
);
INSERT INTO Kierunki (Nazwa_kierunku, Wydzial) VALUES (
    'Architektura', 'Wydział Budownictwa i Inżynierii Środowiska'
);
INSERT INTO Kierunki (Nazwa_kierunku, Wydzial) VALUES (
    'Inżynieria Środowiska', 'Wydział Budownictwa i Inżynierii Środowiska'
);
INSERT INTO Kierunki (Nazwa_kierunku, Wydzial) VALUES (
    'Zarządzanie', 'Wydział Zarządzania'
);
INSERT INTO Kierunki (Nazwa_kierunku, Wydzial) VALUES (
    'Logistyka', 'Wydział Zarządzania'
);
INSERT INTO Kierunki (Nazwa_kierunku, Wydzial) VALUES (
    'Finanse i Rachunkowość', 'Wydział Zarządzania'
);
INSERT INTO Kierunki (Nazwa_kierunku, Wydzial) VALUES (
    'Mechanika i Budowa Maszyn', 'Wydział Budowy Maszyn i Lotnictwa'
);
INSERT INTO Kierunki (Nazwa_kierunku, Wydzial) VALUES (
    'Lotnictwo i Kosmonautyka', 'Wydział Budowy Maszyn i Lotnictwa'
);
INSERT INTO Kierunki (Nazwa_kierunku, Wydzial) VALUES (
    'Mechatronika', 'Wydział Budowy Maszyn i Lotnictwa'
);
INSERT INTO Kierunki (Nazwa_kierunku, Wydzial) VALUES (
    'Biotechnologia', 'Wydział Chemiczny'
);
INSERT INTO Kierunki (Nazwa_kierunku, Wydzial) VALUES (
    'Inżynieria Chemiczna', 'Wydział Chemiczny'
);
INSERT INTO Kierunki (Nazwa_kierunku, Wydzial) VALUES (
    'Technologia Chemiczna', 'Wydział Chemiczny'
);
INSERT INTO Kierunki (Nazwa_kierunku, Wydzial) VALUES (
    'Matematyka Stosowana', 'Wydział Matematyki i Fizyki Stosowanej'
);
INSERT INTO Kierunki (Nazwa_kierunku, Wydzial) VALUES (
    'Fizyka Techniczna', 'Wydział Matematyki i Fizyki Stosowanej'
);
INSERT INTO Kierunki (Nazwa_kierunku, Wydzial) VALUES (
    'Energetyka', 'Wydział Budowy Maszyn i Lotnictwa'
);
INSERT INTO Kierunki (Nazwa_kierunku, Wydzial) VALUES (
    'Transport', 'Wydział Budowy Maszyn i Lotnictwa'
);
INSERT INTO Kierunki (Nazwa_kierunku, Wydzial) VALUES (
    'Socjologia', 'Wydział Zarządzania'
);

-- Tabela Studenci
CREATE TABLE Studenci (
    Id_studenta SERIAL PRIMARY KEY,
    Imie TEXT NOT NULL,
    Nazwisko TEXT NOT NULL,
    Nr_indeksu INTEGER UNIQUE NOT NULL,
    Data_urodzenia DATE,
    Id_kierunku INTEGER,
    Rok_studiow INTEGER,
    FOREIGN KEY (Id_kierunku) REFERENCES Kierunki (Id_kierunku)
);

-- Dane dla tabeli Studenci (20 rekordów)
INSERT INTO Studenci (
    Imie, Nazwisko, Nr_indeksu, Data_urodzenia, Id_kierunku, Rok_studiow
) VALUES ('Jan', 'Kowalski', 123456, '2001-05-15', 1, 3);
INSERT INTO Studenci (
    Imie, Nazwisko, Nr_indeksu, Data_urodzenia, Id_kierunku, Rok_studiow
) VALUES ('Anna', 'Nowak', 123457, '2002-03-22', 1, 2);
INSERT INTO Studenci (
    Imie, Nazwisko, Nr_indeksu, Data_urodzenia, Id_kierunku, Rok_studiow
) VALUES ('Piotr', 'Wiśniewski', 123458, '2000-11-10', 2, 4);
INSERT INTO Studenci (
    Imie, Nazwisko, Nr_indeksu, Data_urodzenia, Id_kierunku, Rok_studiow
) VALUES ('Katarzyna', 'Wójcik', 123459, '2001-08-30', 7, 3);
INSERT INTO Studenci (
    Imie, Nazwisko, Nr_indeksu, Data_urodzenia, Id_kierunku, Rok_studiow
) VALUES ('Marek', 'Kowalczyk', 123460, '2003-01-12', 10, 1);
INSERT INTO Studenci (
    Imie, Nazwisko, Nr_indeksu, Data_urodzenia, Id_kierunku, Rok_studiow
) VALUES ('Magdalena', 'Kamińska', 123461, '2002-07-05', 4, 2);
INSERT INTO Studenci (
    Imie, Nazwisko, Nr_indeksu, Data_urodzenia, Id_kierunku, Rok_studiow
) VALUES ('Adam', 'Lewandowski', 123462, '2000-09-18', 11, 4);
INSERT INTO Studenci (
    Imie, Nazwisko, Nr_indeksu, Data_urodzenia, Id_kierunku, Rok_studiow
) VALUES ('Agnieszka', 'Zielińska', 123463, '2001-12-25', 13, 3);
INSERT INTO Studenci (
    Imie, Nazwisko, Nr_indeksu, Data_urodzenia, Id_kierunku, Rok_studiow
) VALUES ('Łukasz', 'Szymański', 123464, '2002-04-03', 1, 2);
INSERT INTO Studenci (
    Imie, Nazwisko, Nr_indeksu, Data_urodzenia, Id_kierunku, Rok_studiow
) VALUES ('Ewa', 'Woźniak', 123465, '2003-06-20', 16, 1);
INSERT INTO Studenci (
    Imie, Nazwisko, Nr_indeksu, Data_urodzenia, Id_kierunku, Rok_studiow
) VALUES ('Michał', 'Dąbrowski', 123466, '2001-02-28', 2, 3);
INSERT INTO Studenci (
    Imie, Nazwisko, Nr_indeksu, Data_urodzenia, Id_kierunku, Rok_studiow
) VALUES ('Karolina', 'Kozłowska', 123467, '2000-05-14', 7, 5);
INSERT INTO Studenci (
    Imie, Nazwisko, Nr_indeksu, Data_urodzenia, Id_kierunku, Rok_studiow
) VALUES ('Jakub', 'Jankowski', 123468, '2002-10-09', 1, 2);
INSERT INTO Studenci (
    Imie, Nazwisko, Nr_indeksu, Data_urodzenia, Id_kierunku, Rok_studiow
) VALUES ('Zofia', 'Mazur', 123469, '2003-03-31', 19, 1);
INSERT INTO Studenci (
    Imie, Nazwisko, Nr_indeksu, Data_urodzenia, Id_kierunku, Rok_studiow
) VALUES ('Tomasz', 'Kwiatkowski', 123470, '2001-07-17', 10, 3);
INSERT INTO Studenci (
    Imie, Nazwisko, Nr_indeksu, Data_urodzenia, Id_kierunku, Rok_studiow
) VALUES ('Marta', 'Krawczyk', 123471, '2000-01-05', 4, 4);
INSERT INTO Studenci (
    Imie, Nazwisko, Nr_indeksu, Data_urodzenia, Id_kierunku, Rok_studiow
) VALUES ('Paweł', 'Piotrowski', 123472, '2002-08-22', 11, 2);
INSERT INTO Studenci (
    Imie, Nazwisko, Nr_indeksu, Data_urodzenia, Id_kierunku, Rok_studiow
) VALUES ('Monika', 'Grabowska', 123473, '2001-04-11', 13, 3);
INSERT INTO Studenci (
    Imie, Nazwisko, Nr_indeksu, Data_urodzenia, Id_kierunku, Rok_studiow
) VALUES ('Krzysztof', 'Nowakowski', 123474, '2003-12-01', 1, 1);
INSERT INTO Studenci (
    Imie, Nazwisko, Nr_indeksu, Data_urodzenia, Id_kierunku, Rok_studiow
) VALUES ('Natalia', 'Pawlak', 123475, '2000-06-25', 7, 4);
INSERT INTO Studenci (
    Imie, Nazwisko, Nr_indeksu, Data_urodzenia, Id_kierunku, Rok_studiow
) VALUES ('Damian', 'Borkowski', 123476, '2003-09-14', 4, 1);

-- Tabela Przedmioty
CREATE TABLE Przedmioty (
    Id_przedmiotu SERIAL PRIMARY KEY,
    Nazwa_przedmiotu TEXT NOT NULL,
    Ects INTEGER,
    Id_kierunku INTEGER,
    FOREIGN KEY (Id_kierunku) REFERENCES Kierunki (Id_kierunku)
);

-- Dane dla tabeli Przedmioty (20 rekordów)
INSERT INTO Przedmioty (Nazwa_przedmiotu, Ects, Id_kierunku) VALUES (
    'Bazy Danych', 5, 1
);
INSERT INTO Przedmioty (Nazwa_przedmiotu, Ects, Id_kierunku) VALUES (
    'Programowanie obiektowe', 6, 1
);
INSERT INTO Przedmioty (Nazwa_przedmiotu, Ects, Id_kierunku) VALUES (
    'Algorytmy i struktury danych', 6, 1
);
INSERT INTO Przedmioty (Nazwa_przedmiotu, Ects, Id_kierunku) VALUES (
    'Teoria sterowania', 5, 2
);
INSERT INTO Przedmioty (Nazwa_przedmiotu, Ects, Id_kierunku) VALUES (
    'Mikroprocesory', 4, 2
);
INSERT INTO Przedmioty (Nazwa_przedmiotu, Ects, Id_kierunku) VALUES (
    'Statyka', 5, 4
);
INSERT INTO Przedmioty (Nazwa_przedmiotu, Ects, Id_kierunku) VALUES (
    'Wytrzymałość materiałów', 6, 4
);
INSERT INTO Przedmioty (Nazwa_przedmiotu, Ects, Id_kierunku) VALUES (
    'Podstawy zarządzania', 3, 7
);
INSERT INTO Przedmioty (Nazwa_przedmiotu, Ects, Id_kierunku) VALUES (
    'Mikroekonomia', 4, 7
);
INSERT INTO Przedmioty (Nazwa_przedmiotu, Ects, Id_kierunku) VALUES (
    'Podstawy konstrukcji maszyn', 7, 10
);
INSERT INTO Przedmioty (Nazwa_przedmiotu, Ects, Id_kierunku) VALUES (
    'Termodynamika', 5, 10
);
INSERT INTO Przedmioty (Nazwa_przedmiotu, Ects, Id_kierunku) VALUES (
    'Aerodynamika', 6, 11
);
INSERT INTO Przedmioty (Nazwa_przedmiotu, Ects, Id_kierunku) VALUES (
    'Chemia organiczna', 6, 13
);
INSERT INTO Przedmioty (Nazwa_przedmiotu, Ects, Id_kierunku) VALUES (
    'Analiza matematyczna 1', 6, 16
);
INSERT INTO Przedmioty (Nazwa_przedmiotu, Ects, Id_kierunku) VALUES (
    'Logistyka produkcji', 5, 8
);
INSERT INTO Przedmioty (Nazwa_przedmiotu, Ects, Id_kierunku) VALUES (
    'Rachunkowość finansowa', 5, 9
);
INSERT INTO Przedmioty (Nazwa_przedmiotu, Ects, Id_kierunku) VALUES (
    'Fizyka kwantowa', 6, 17
);
INSERT INTO Przedmioty (Nazwa_przedmiotu, Ects, Id_kierunku) VALUES (
    'Historia architektury', 4, 5
);
INSERT INTO Przedmioty (Nazwa_przedmiotu, Ects, Id_kierunku) VALUES (
    'Mechanika płynów', 5, 11
);
INSERT INTO Przedmioty (Nazwa_przedmiotu, Ects, Id_kierunku) VALUES (
    'Socjologia ogólna', 3, 20
);

-- Tabela Oceny
CREATE TABLE Oceny (
    Id_oceny SERIAL PRIMARY KEY,
    Id_studenta INTEGER,
    Id_przedmiotu INTEGER,
    Ocena REAL CHECK (Ocena IN (2.0, 3.0, 3.5, 4.0, 4.5, 5.0)),
    Data_wystawienia DATE,
    FOREIGN KEY (Id_studenta) REFERENCES Studenci (Id_studenta),
    FOREIGN KEY (Id_przedmiotu) REFERENCES Przedmioty (Id_przedmiotu)
);

-- Dane dla tabeli Oceny
INSERT INTO Oceny (
    Id_studenta, Id_przedmiotu, Ocena, Data_wystawienia
) VALUES (1, 1, 4.5, '2023-06-15');
INSERT INTO Oceny (
    Id_studenta, Id_przedmiotu, Ocena, Data_wystawienia
) VALUES (1, 2, 5.0, '2023-06-16');
INSERT INTO Oceny (
    Id_studenta, Id_przedmiotu, Ocena, Data_wystawienia
) VALUES (2, 1, 3.0, '2023-06-15');
INSERT INTO Oceny (
    Id_studenta, Id_przedmiotu, Ocena, Data_wystawienia
) VALUES (2, 2, 4.0, '2023-06-16');
INSERT INTO Oceny (
    Id_studenta, Id_przedmiotu, Ocena, Data_wystawienia
) VALUES (3, 4, 3.5, '2023-06-10');
INSERT INTO Oceny (
    Id_studenta, Id_przedmiotu, Ocena, Data_wystawienia
) VALUES (3, 5, 4.5, '2023-06-12');
INSERT INTO Oceny (
    Id_studenta, Id_przedmiotu, Ocena, Data_wystawienia
) VALUES (4, 8, 5.0, '2023-06-14');
INSERT INTO Oceny (
    Id_studenta, Id_przedmiotu, Ocena, Data_wystawienia
) VALUES (4, 9, 4.5, '2023-06-18');
INSERT INTO Oceny (
    Id_studenta, Id_przedmiotu, Ocena, Data_wystawienia
) VALUES (5, 10, 2.0, '2023-06-20');
INSERT INTO Oceny (
    Id_studenta, Id_przedmiotu, Ocena, Data_wystawienia
) VALUES (5, 11, 3.0, '2023-06-22');
INSERT INTO Oceny (
    Id_studenta, Id_przedmiotu, Ocena, Data_wystawienia
) VALUES (6, 6, 4.0, '2023-06-15');
INSERT INTO Oceny (
    Id_studenta, Id_przedmiotu, Ocena, Data_wystawienia
) VALUES (7, 12, 5.0, '2023-06-17');
INSERT INTO Oceny (
    Id_studenta, Id_przedmiotu, Ocena, Data_wystawienia
) VALUES (8, 13, 3.5, '2023-06-15');
INSERT INTO Oceny (
    Id_studenta, Id_przedmiotu, Ocena, Data_wystawienia
) VALUES (9, 1, 4.0, '2023-06-15');
INSERT INTO Oceny (
    Id_studenta, Id_przedmiotu, Ocena, Data_wystawienia
) VALUES (10, 14, 5.0, '2023-06-10');
INSERT INTO Oceny (
    Id_studenta, Id_przedmiotu, Ocena, Data_wystawienia
) VALUES (11, 4, 3.0, '2023-06-10');
INSERT INTO Oceny (
    Id_studenta, Id_przedmiotu, Ocena, Data_wystawienia
) VALUES (12, 8, 4.5, '2023-06-14');
INSERT INTO Oceny (
    Id_studenta, Id_przedmiotu, Ocena, Data_wystawienia
) VALUES (13, 1, 2.0, '2023-06-15');
INSERT INTO Oceny (
    Id_studenta, Id_przedmiotu, Ocena, Data_wystawienia
) VALUES (14, 20, 5.0, '2023-06-18');
INSERT INTO Oceny (
    Id_studenta, Id_przedmiotu, Ocena, Data_wystawienia
) VALUES (15, 10, 4.0, '2023-06-20');
INSERT INTO Oceny (
    Id_studenta, Id_przedmiotu, Ocena, Data_wystawienia
) VALUES (16, 6, 3.0, '2023-06-15');
INSERT INTO Oceny (
    Id_studenta, Id_przedmiotu, Ocena, Data_wystawienia
) VALUES (17, 12, 4.5, '2023-06-17');
INSERT INTO Oceny (
    Id_studenta, Id_przedmiotu, Ocena, Data_wystawienia
) VALUES (18, 13, 5.0, '2023-06-15');
INSERT INTO Oceny (
    Id_studenta, Id_przedmiotu, Ocena, Data_wystawienia
) VALUES (19, 1, 3.5, '2023-06-15');
INSERT INTO Oceny (
    Id_studenta, Id_przedmiotu, Ocena, Data_wystawienia
) VALUES (20, 8, 4.0, '2023-06-14');
INSERT INTO Oceny (
    Id_studenta, Id_przedmiotu, Ocena, Data_wystawienia
) VALUES (1, 3, 5.0, '2023-06-20');
INSERT INTO Oceny (
    Id_studenta, Id_przedmiotu, Ocena, Data_wystawienia
) VALUES (2, 3, 4.0, '2023-06-20');
INSERT INTO Oceny (
    Id_studenta, Id_przedmiotu, Ocena, Data_wystawienia
) VALUES (9, 3, 4.5, '2023-06-20');
INSERT INTO Oceny (
    Id_studenta, Id_przedmiotu, Ocena, Data_wystawienia
) VALUES (13, 3, 3.0, '2023-06-20');
INSERT INTO Oceny (
    Id_studenta, Id_przedmiotu, Ocena, Data_wystawienia
) VALUES (11, 5, 4.0, '2023-06-12');
-- dodatkowa ocena dla studenta 3 z innego kierunku (możliwe?)
INSERT INTO Oceny (
    Id_studenta, Id_przedmiotu, Ocena, Data_wystawienia
) VALUES (3, 1, 4.0, '2023-06-15');
INSERT INTO Oceny (
    Id_studenta, Id_przedmiotu, Ocena, Data_wystawienia
) VALUES (5, 1, 2.0, '2023-06-15');
INSERT INTO Oceny (
    Id_studenta, Id_przedmiotu, Ocena, Data_wystawienia
) VALUES (1, 8, 5.0, '2023-06-14');
INSERT INTO Oceny (
    Id_studenta, Id_przedmiotu, Ocena, Data_wystawienia
) VALUES (7, 19, 4.0, '2023-06-25');
INSERT INTO Oceny (
    Id_studenta, Id_przedmiotu, Ocena, Data_wystawienia
) VALUES (17, 19, 3.5, '2023-06-25');
INSERT INTO Oceny (
    Id_studenta, Id_przedmiotu, Ocena, Data_wystawienia
) VALUES (15, 11, 4.5, '2023-06-22');
INSERT INTO Oceny (
    Id_studenta, Id_przedmiotu, Ocena, Data_wystawienia
) VALUES (4, 20, 5.0, '2023-06-18');
INSERT INTO Oceny (
    Id_studenta, Id_przedmiotu, Ocena, Data_wystawienia
) VALUES (12, 9, 3.0, '2023-06-18');
INSERT INTO Oceny (
    Id_studenta, Id_przedmiotu, Ocena, Data_wystawienia
) VALUES (20, 20, 4.5, '2023-06-18');
INSERT INTO Oceny (
    Id_studenta, Id_przedmiotu, Ocena, Data_wystawienia
) VALUES (8, 1, 4.0, '2023-06-15');

-- Plik z danymi do Laboratorium 8: Podzapytania w SQL
-- Temat: System zarządzania studentami

-- Usuwanie tabel jeśli istnieją (w celu idempotentności)
DROP TABLE IF EXISTS Oceny;
DROP TABLE IF EXISTS Przedmioty;
DROP TABLE IF EXISTS Studenci;
DROP TABLE IF EXISTS Kierunki;

-- Tabela Kierunki
CREATE TABLE Kierunki (
    id_kierunku INTEGER PRIMARY KEY AUTOINCREMENT,
    nazwa_kierunku TEXT NOT NULL,
    wydzial TEXT NOT NULL
);

-- Dane dla tabeli Kierunki (20 rekordów)
INSERT INTO Kierunki (nazwa_kierunku, wydzial) VALUES ('Informatyka', 'Wydział Elektrotechniki i Informatyki');
INSERT INTO Kierunki (nazwa_kierunku, wydzial) VALUES ('Automatyka i Robotyka', 'Wydział Elektrotechniki i Informatyki');
INSERT INTO Kierunki (nazwa_kierunku, wydzial) VALUES ('Elektronika', 'Wydział Elektrotechniki i Informatyki');
INSERT INTO Kierunki (nazwa_kierunku, wydzial) VALUES ('Budownictwo', 'Wydział Budownictwa i Inżynierii Środowiska');
INSERT INTO Kierunki (nazwa_kierunku, wydzial) VALUES ('Architektura', 'Wydział Budownictwa i Inżynierii Środowiska');
INSERT INTO Kierunki (nazwa_kierunku, wydzial) VALUES ('Inżynieria Środowiska', 'Wydział Budownictwa i Inżynierii Środowiska');
INSERT INTO Kierunki (nazwa_kierunku, wydzial) VALUES ('Zarządzanie', 'Wydział Zarządzania');
INSERT INTO Kierunki (nazwa_kierunku, wydzial) VALUES ('Logistyka', 'Wydział Zarządzania');
INSERT INTO Kierunki (nazwa_kierunku, wydzial) VALUES ('Finanse i Rachunkowość', 'Wydział Zarządzania');
INSERT INTO Kierunki (nazwa_kierunku, wydzial) VALUES ('Mechanika i Budowa Maszyn', 'Wydział Budowy Maszyn i Lotnictwa');
INSERT INTO Kierunki (nazwa_kierunku, wydzial) VALUES ('Lotnictwo i Kosmonautyka', 'Wydział Budowy Maszyn i Lotnictwa');
INSERT INTO Kierunki (nazwa_kierunku, wydzial) VALUES ('Mechatronika', 'Wydział Budowy Maszyn i Lotnictwa');
INSERT INTO Kierunki (nazwa_kierunku, wydzial) VALUES ('Biotechnologia', 'Wydział Chemiczny');
INSERT INTO Kierunki (nazwa_kierunku, wydzial) VALUES ('Inżynieria Chemiczna', 'Wydział Chemiczny');
INSERT INTO Kierunki (nazwa_kierunku, wydzial) VALUES ('Technologia Chemiczna', 'Wydział Chemiczny');
INSERT INTO Kierunki (nazwa_kierunku, wydzial) VALUES ('Matematyka Stosowana', 'Wydział Matematyki i Fizyki Stosowanej');
INSERT INTO Kierunki (nazwa_kierunku, wydzial) VALUES ('Fizyka Techniczna', 'Wydział Matematyki i Fizyki Stosowanej');
INSERT INTO Kierunki (nazwa_kierunku, wydzial) VALUES ('Energetyka', 'Wydział Budowy Maszyn i Lotnictwa');
INSERT INTO Kierunki (nazwa_kierunku, wydzial) VALUES ('Transport', 'Wydział Budowy Maszyn i Lotnictwa');
INSERT INTO Kierunki (nazwa_kierunku, wydzial) VALUES ('Socjologia', 'Wydział Zarządzania');

-- Tabela Studenci
CREATE TABLE Studenci (
    id_studenta INTEGER PRIMARY KEY AUTOINCREMENT,
    imie TEXT NOT NULL,
    nazwisko TEXT NOT NULL,
    nr_indeksu INTEGER UNIQUE NOT NULL,
    data_urodzenia DATE,
    id_kierunku INTEGER,
    rok_studiow INTEGER,
    FOREIGN KEY (id_kierunku) REFERENCES Kierunki(id_kierunku)
);

-- Dane dla tabeli Studenci (20 rekordów)
INSERT INTO Studenci (imie, nazwisko, nr_indeksu, data_urodzenia, id_kierunku, rok_studiow) VALUES ('Jan', 'Kowalski', 123456, '2001-05-15', 1, 3);
INSERT INTO Studenci (imie, nazwisko, nr_indeksu, data_urodzenia, id_kierunku, rok_studiow) VALUES ('Anna', 'Nowak', 123457, '2002-03-22', 1, 2);
INSERT INTO Studenci (imie, nazwisko, nr_indeksu, data_urodzenia, id_kierunku, rok_studiow) VALUES ('Piotr', 'Wiśniewski', 123458, '2000-11-10', 2, 4);
INSERT INTO Studenci (imie, nazwisko, nr_indeksu, data_urodzenia, id_kierunku, rok_studiow) VALUES ('Katarzyna', 'Wójcik', 123459, '2001-08-30', 7, 3);
INSERT INTO Studenci (imie, nazwisko, nr_indeksu, data_urodzenia, id_kierunku, rok_studiow) VALUES ('Marek', 'Kowalczyk', 123460, '2003-01-12', 10, 1);
INSERT INTO Studenci (imie, nazwisko, nr_indeksu, data_urodzenia, id_kierunku, rok_studiow) VALUES ('Magdalena', 'Kamińska', 123461, '2002-07-05', 4, 2);
INSERT INTO Studenci (imie, nazwisko, nr_indeksu, data_urodzenia, id_kierunku, rok_studiow) VALUES ('Adam', 'Lewandowski', 123462, '2000-09-18', 11, 4);
INSERT INTO Studenci (imie, nazwisko, nr_indeksu, data_urodzenia, id_kierunku, rok_studiow) VALUES ('Agnieszka', 'Zielińska', 123463, '2001-12-25', 13, 3);
INSERT INTO Studenci (imie, nazwisko, nr_indeksu, data_urodzenia, id_kierunku, rok_studiow) VALUES ('Łukasz', 'Szymański', 123464, '2002-04-03', 1, 2);
INSERT INTO Studenci (imie, nazwisko, nr_indeksu, data_urodzenia, id_kierunku, rok_studiow) VALUES ('Ewa', 'Woźniak', 123465, '2003-06-20', 16, 1);
INSERT INTO Studenci (imie, nazwisko, nr_indeksu, data_urodzenia, id_kierunku, rok_studiow) VALUES ('Michał', 'Dąbrowski', 123466, '2001-02-28', 2, 3);
INSERT INTO Studenci (imie, nazwisko, nr_indeksu, data_urodzenia, id_kierunku, rok_studiow) VALUES ('Karolina', 'Kozłowska', 123467, '2000-05-14', 7, 5);
INSERT INTO Studenci (imie, nazwisko, nr_indeksu, data_urodzenia, id_kierunku, rok_studiow) VALUES ('Jakub', 'Jankowski', 123468, '2002-10-09', 1, 2);
INSERT INTO Studenci (imie, nazwisko, nr_indeksu, data_urodzenia, id_kierunku, rok_studiow) VALUES ('Zofia', 'Mazur', 123469, '2003-03-31', 19, 1);
INSERT INTO Studenci (imie, nazwisko, nr_indeksu, data_urodzenia, id_kierunku, rok_studiow) VALUES ('Tomasz', 'Kwiatkowski', 123470, '2001-07-17', 10, 3);
INSERT INTO Studenci (imie, nazwisko, nr_indeksu, data_urodzenia, id_kierunku, rok_studiow) VALUES ('Marta', 'Krawczyk', 123471, '2000-01-05', 4, 4);
INSERT INTO Studenci (imie, nazwisko, nr_indeksu, data_urodzenia, id_kierunku, rok_studiow) VALUES ('Paweł', 'Piotrowski', 123472, '2002-08-22', 11, 2);
INSERT INTO Studenci (imie, nazwisko, nr_indeksu, data_urodzenia, id_kierunku, rok_studiow) VALUES ('Monika', 'Grabowska', 123473, '2001-04-11', 13, 3);
INSERT INTO Studenci (imie, nazwisko, nr_indeksu, data_urodzenia, id_kierunku, rok_studiow) VALUES ('Krzysztof', 'Nowakowski', 123474, '2003-12-01', 1, 1);
INSERT INTO Studenci (imie, nazwisko, nr_indeksu, data_urodzenia, id_kierunku, rok_studiow) VALUES ('Natalia', 'Pawlak', 123475, '2000-06-25', 7, 4);

-- Tabela Przedmioty
CREATE TABLE Przedmioty (
    id_przedmiotu INTEGER PRIMARY KEY AUTOINCREMENT,
    nazwa_przedmiotu TEXT NOT NULL,
    ects INTEGER,
    id_kierunku INTEGER,
    FOREIGN KEY (id_kierunku) REFERENCES Kierunki(id_kierunku)
);

-- Dane dla tabeli Przedmioty (20 rekordów)
INSERT INTO Przedmioty (nazwa_przedmiotu, ects, id_kierunku) VALUES ('Bazy Danych', 5, 1);
INSERT INTO Przedmioty (nazwa_przedmiotu, ects, id_kierunku) VALUES ('Programowanie obiektowe', 6, 1);
INSERT INTO Przedmioty (nazwa_przedmiotu, ects, id_kierunku) VALUES ('Algorytmy i struktury danych', 6, 1);
INSERT INTO Przedmioty (nazwa_przedmiotu, ects, id_kierunku) VALUES ('Teoria sterowania', 5, 2);
INSERT INTO Przedmioty (nazwa_przedmiotu, ects, id_kierunku) VALUES ('Mikroprocesory', 4, 2);
INSERT INTO Przedmioty (nazwa_przedmiotu, ects, id_kierunku) VALUES ('Statyka', 5, 4);
INSERT INTO Przedmioty (nazwa_przedmiotu, ects, id_kierunku) VALUES ('Wytrzymałość materiałów', 6, 4);
INSERT INTO Przedmioty (nazwa_przedmiotu, ects, id_kierunku) VALUES ('Podstawy zarządzania', 3, 7);
INSERT INTO Przedmioty (nazwa_przedmiotu, ects, id_kierunku) VALUES ('Mikroekonomia', 4, 7);
INSERT INTO Przedmioty (nazwa_przedmiotu, ects, id_kierunku) VALUES ('Podstawy konstrukcji maszyn', 7, 10);
INSERT INTO Przedmioty (nazwa_przedmiotu, ects, id_kierunku) VALUES ('Termodynamika', 5, 10);
INSERT INTO Przedmioty (nazwa_przedmiotu, ects, id_kierunku) VALUES ('Aerodynamika', 6, 11);
INSERT INTO Przedmioty (nazwa_przedmiotu, ects, id_kierunku) VALUES ('Chemia organiczna', 6, 13);
INSERT INTO Przedmioty (nazwa_przedmiotu, ects, id_kierunku) VALUES ('Analiza matematyczna 1', 6, 16);
INSERT INTO Przedmioty (nazwa_przedmiotu, ects, id_kierunku) VALUES ('Logistyka produkcji', 5, 8);
INSERT INTO Przedmioty (nazwa_przedmiotu, ects, id_kierunku) VALUES ('Rachunkowość finansowa', 5, 9);
INSERT INTO Przedmioty (nazwa_przedmiotu, ects, id_kierunku) VALUES ('Fizyka kwantowa', 6, 17);
INSERT INTO Przedmioty (nazwa_przedmiotu, ects, id_kierunku) VALUES ('Historia architektury', 4, 5);
INSERT INTO Przedmioty (nazwa_przedmiotu, ects, id_kierunku) VALUES ('Mechanika płynów', 5, 11);
INSERT INTO Przedmioty (nazwa_przedmiotu, ects, id_kierunku) VALUES ('Socjologia ogólna', 3, 20);

-- Tabela Oceny
CREATE TABLE Oceny (
    id_oceny INTEGER PRIMARY KEY AUTOINCREMENT,
    id_studenta INTEGER,
    id_przedmiotu INTEGER,
    ocena REAL CHECK (ocena IN (2.0, 3.0, 3.5, 4.0, 4.5, 5.0)),
    data_wystawienia DATE,
    FOREIGN KEY (id_studenta) REFERENCES Studenci(id_studenta),
    FOREIGN KEY (id_przedmiotu) REFERENCES Przedmioty(id_przedmiotu)
);

-- Dane dla tabeli Oceny (co najmniej 20 rekordów - dam 40 dla ciekawych podzapytań)
INSERT INTO Oceny (id_studenta, id_przedmiotu, ocena, data_wystawienia) VALUES (1, 1, 4.5, '2023-06-15');
INSERT INTO Oceny (id_studenta, id_przedmiotu, ocena, data_wystawienia) VALUES (1, 2, 5.0, '2023-06-16');
INSERT INTO Oceny (id_studenta, id_przedmiotu, ocena, data_wystawienia) VALUES (2, 1, 3.0, '2023-06-15');
INSERT INTO Oceny (id_studenta, id_przedmiotu, ocena, data_wystawienia) VALUES (2, 2, 4.0, '2023-06-16');
INSERT INTO Oceny (id_studenta, id_przedmiotu, ocena, data_wystawienia) VALUES (3, 4, 3.5, '2023-06-10');
INSERT INTO Oceny (id_studenta, id_przedmiotu, ocena, data_wystawienia) VALUES (3, 5, 4.5, '2023-06-12');
INSERT INTO Oceny (id_studenta, id_przedmiotu, ocena, data_wystawienia) VALUES (4, 8, 5.0, '2023-06-14');
INSERT INTO Oceny (id_studenta, id_przedmiotu, ocena, data_wystawienia) VALUES (4, 9, 4.5, '2023-06-18');
INSERT INTO Oceny (id_studenta, id_przedmiotu, ocena, data_wystawienia) VALUES (5, 10, 2.0, '2023-06-20');
INSERT INTO Oceny (id_studenta, id_przedmiotu, ocena, data_wystawienia) VALUES (5, 11, 3.0, '2023-06-22');
INSERT INTO Oceny (id_studenta, id_przedmiotu, ocena, data_wystawienia) VALUES (6, 6, 4.0, '2023-06-15');
INSERT INTO Oceny (id_studenta, id_przedmiotu, ocena, data_wystawienia) VALUES (7, 12, 5.0, '2023-06-17');
INSERT INTO Oceny (id_studenta, id_przedmiotu, ocena, data_wystawienia) VALUES (8, 13, 3.5, '2023-06-15');
INSERT INTO Oceny (id_studenta, id_przedmiotu, ocena, data_wystawienia) VALUES (9, 1, 4.0, '2023-06-15');
INSERT INTO Oceny (id_studenta, id_przedmiotu, ocena, data_wystawienia) VALUES (10, 14, 5.0, '2023-06-10');
INSERT INTO Oceny (id_studenta, id_przedmiotu, ocena, data_wystawienia) VALUES (11, 4, 3.0, '2023-06-10');
INSERT INTO Oceny (id_studenta, id_przedmiotu, ocena, data_wystawienia) VALUES (12, 8, 4.5, '2023-06-14');
INSERT INTO Oceny (id_studenta, id_przedmiotu, ocena, data_wystawienia) VALUES (13, 1, 2.0, '2023-06-15');
INSERT INTO Oceny (id_studenta, id_przedmiotu, ocena, data_wystawienia) VALUES (14, 20, 5.0, '2023-06-18');
INSERT INTO Oceny (id_studenta, id_przedmiotu, ocena, data_wystawienia) VALUES (15, 10, 4.0, '2023-06-20');
INSERT INTO Oceny (id_studenta, id_przedmiotu, ocena, data_wystawienia) VALUES (16, 6, 3.0, '2023-06-15');
INSERT INTO Oceny (id_studenta, id_przedmiotu, ocena, data_wystawienia) VALUES (17, 12, 4.5, '2023-06-17');
INSERT INTO Oceny (id_studenta, id_przedmiotu, ocena, data_wystawienia) VALUES (18, 13, 5.0, '2023-06-15');
INSERT INTO Oceny (id_studenta, id_przedmiotu, ocena, data_wystawienia) VALUES (19, 1, 3.5, '2023-06-15');
INSERT INTO Oceny (id_studenta, id_przedmiotu, ocena, data_wystawienia) VALUES (20, 8, 4.0, '2023-06-14');
INSERT INTO Oceny (id_studenta, id_przedmiotu, ocena, data_wystawienia) VALUES (1, 3, 5.0, '2023-06-20');
INSERT INTO Oceny (id_studenta, id_przedmiotu, ocena, data_wystawienia) VALUES (2, 3, 4.0, '2023-06-20');
INSERT INTO Oceny (id_studenta, id_przedmiotu, ocena, data_wystawienia) VALUES (9, 3, 4.5, '2023-06-20');
INSERT INTO Oceny (id_studenta, id_przedmiotu, ocena, data_wystawienia) VALUES (13, 3, 3.0, '2023-06-20');
INSERT INTO Oceny (id_studenta, id_przedmiotu, ocena, data_wystawienia) VALUES (11, 5, 4.0, '2023-06-12');
INSERT INTO Oceny (id_studenta, id_przedmiotu, ocena, data_wystawienia) VALUES (3, 1, 4.0, '2023-06-15'); -- dodatkowa ocena dla studenta 3 z innego kierunku (możliwe?)
INSERT INTO Oceny (id_studenta, id_przedmiotu, ocena, data_wystawienia) VALUES (5, 1, 2.0, '2023-06-15');
INSERT INTO Oceny (id_studenta, id_przedmiotu, ocena, data_wystawienia) VALUES (1, 8, 5.0, '2023-06-14');
INSERT INTO Oceny (id_studenta, id_przedmiotu, ocena, data_wystawienia) VALUES (7, 19, 4.0, '2023-06-25');
INSERT INTO Oceny (id_studenta, id_przedmiotu, ocena, data_wystawienia) VALUES (17, 19, 3.5, '2023-06-25');
INSERT INTO Oceny (id_studenta, id_przedmiotu, ocena, data_wystawienia) VALUES (15, 11, 4.5, '2023-06-22');
INSERT INTO Oceny (id_studenta, id_przedmiotu, ocena, data_wystawienia) VALUES (4, 20, 5.0, '2023-06-18');
INSERT INTO Oceny (id_studenta, id_przedmiotu, ocena, data_wystawienia) VALUES (12, 9, 3.0, '2023-06-18');
INSERT INTO Oceny (id_studenta, id_przedmiotu, ocena, data_wystawienia) VALUES (20, 20, 4.5, '2023-06-18');
INSERT INTO Oceny (id_studenta, id_przedmiotu, ocena, data_wystawienia) VALUES (8, 1, 4.0, '2023-06-15');

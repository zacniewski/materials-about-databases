# Laboratorium 1: Podstawy SQL - DDL i DML (część 1)

## Cel laboratorium
Zapoznanie z podstawami języka SQL w zakresie definiowania struktury danych (DDL) oraz manipulacji danymi (DML).

## Podstawy teoretyczne

### Czym jest SQL?
**SQL** (Structured Query Language) to ustrukturyzowany język zapytań służący do zarządzania i operowania na danych w relacyjnych bazach danych (RDBMS). Pozwala on na tworzenie struktur bazy, dodawanie danych, ich modyfikację oraz pobieranie informacji spełniających określone kryteria.

### Architektura danych: Tabela
W relacyjnych bazach danych dane przechowywane są w **tabelach**. Tabela składa się z:
- **Kolumn (Pól)** – definiują rodzaj przechowywanych informacji (np. imię, cena, data). Każda kolumna ma określony typ danych.
- **Wierszy (Rekordów)** – konkretne wystąpienia danych w tabeli (np. konkretny produkt lub klient).

#### Przykład wizualny tabeli `Produkty`:
| id (PK) | nazwa | cena | ilosc |
|:---:|:---|:---:|:---:|
| 1 | Chleb | 4.50 | 10 |
| 2 | Mleko | 3.20 | 20 |

### Klucz Główny (Primary Key)
Każda tabela powinna posiadać **Klucz Główny (PK)**. Jest to kolumna (lub zestaw kolumn), która jednoznacznie identyfikuje każdy rekord w tabeli. Wartości w tej kolumnie muszą być unikalne i nie mogą być puste (`NOT NULL`).

### Podjęzyki SQL
Język SQL dzieli się na kilka grup poleceń w zależności od ich przeznaczenia:

1.  **DDL (Data Definition Language)** – Język definicji danych. Służy do tworzenia, modyfikowania i usuwania struktur bazy danych (tabel, widoków, indeksów).
    - `CREATE` – tworzenie nowych obiektów.
    - `ALTER` – zmiana struktury istniejących obiektów.
    - `DROP` – usuwanie obiektów.
2.  **DML (Data Manipulation Language)** – Język manipulacji danymi. Służy do pracy na konkretnych rekordach.
    - `INSERT` – dodawanie nowych wierszy.
    - `UPDATE` – modyfikacja istniejących danych.
    - `DELETE` – usuwanie wierszy.
3.  **DQL (Data Query Language)** – Język zapytań. Służy do pobierania danych z bazy.
    - `SELECT` – wybieranie danych.

### Typy danych w SQLite
Podczas tworzenia tabeli musimy określić, jakiego rodzaju dane będą przechowywane w kolumnach. Najpopularniejsze typy w SQLite to:
- `INTEGER` – liczby całkowite.
- `REAL` – liczby zmiennoprzecinkowe (dziesiętne).
- `TEXT` – ciągi znaków (napisy).
- `BLOB` – dane binarne (np. zdjęcia).
- `NULL` – brak wartości.

### Wizualizacja struktury (Diagram Mermaid)
Diagramy encji (ERD) pozwalają graficznie przedstawić strukturę bazy danych i relacje między tabelami.

```mermaid
erDiagram
    PRODUKTY {
        INTEGER id PK "Klucz główny, AUTOINCREMENT"
        TEXT nazwa "NOT NULL"
        REAL cena
        INTEGER ilosc
    }
    KLIENCI {
        INTEGER id PK
        TEXT imie
        TEXT nazwisko
        TEXT email "UNIQUE"
    }
```

### Podstawowe operacje SQL

#### 1. Pobieranie danych (DQL)
Podstawowym poleceniem służącym do odczytu danych jest `SELECT`.

- **SELECT** – wybiera określone kolumny (lub wszystkie przy użyciu `*`).
- **FROM** – wskazuje tabelę, z której pobieramy dane.
- **WHERE** – filtruje rekordy spełniające określone warunki.
- **ORDER BY** – sortuje wyniki (rosnąco `ASC` lub malejąco `DESC`).
- **LIMIT** – ogranicza liczbę zwracanych wierszy.

**Przykład:** Pobierz nazwę i cenę produktów droższych niż 4.00 zł, posortowanych od najdroższych.
```sql
SELECT nazwa, cena 
FROM Produkty 
WHERE cena > 4.00 
ORDER BY cena DESC;
```
**Wynik:**
| nazwa | cena |
|:---|:---:|
| Chleb | 4.50 |

#### 2. Wstawianie danych (DML)
Polecenie `INSERT INTO` służy do dodawania nowych rekordów.

**Przykład:**
```sql
INSERT INTO Produkty (nazwa, cena, ilosc) 
VALUES ('Masło', 7.50, 5);
```

#### 3. Aktualizacja danych (DML)
Polecenie `UPDATE` zmienia wartości w istniejących rekordach. **Ważne:** Zawsze używaj `WHERE`, aby nie zmienić wszystkich rekordów w tabeli!

**Przykład:** Zwiększ ilość dla produktu o `id = 1`.
```sql
UPDATE Produkty 
SET ilosc = ilosc + 5 
WHERE id = 1;
```

#### 4. Usuwanie danych (DML)
Polecenie `DELETE` usuwa rekordy z tabeli. Podobnie jak przy `UPDATE`, klauzula `WHERE` jest kluczowa.

**Przykład:** Usuń produkty, których ilość wynosi 0.
```sql
DELETE FROM Produkty 
WHERE ilosc = 0;
```

---

## Narzędzia
- **PostgreSQL** (główny system bazodanowy)
- pgAdmin lub `psql` (narzędzia klienckie)
- SQLite (opcjonalnie, jako lekka alternatywa)
- DB Browser for SQLite (opcjonalnie)

## Krótka instrukcja pracy z Markdownem
- Nagłówki: używaj `#`, `##`, `###` (więcej `#` = niższy poziom)
- Pogrubienie: `**tekst**`, kursywa: `*tekst*`
- Listy:
  - wypunktowanie: `-` lub `*`
  - numerowanie: `1.`, `2.`
- Kod w linii: `` `fragment` ``, blok kodu:
```md
```sql
SELECT * FROM Produkty;
```
```
- Link: `[tekst](https://adres)`
- Obraz: `![alt](sciezka/do/obrazu.png)`

## Zadanie 1: Tworzenie bazy danych i tabel (DDL)
Stwórz bazę danych `sklep`, a w niej tabelę `Produkty` o następującej strukturze:
- `id`: klucz główny, automatyczna inkrementacja (`SERIAL`)
- `nazwa`: tekst (`VARCHAR`), nie może być puste
- `cena`: liczba zmiennoprzecinkowa (`NUMERIC`)
- `ilosc`: liczba całkowita (`INTEGER`)

**Przykład dla PostgreSQL:**
```sql
CREATE TABLE Produkty (
    id SERIAL PRIMARY KEY,
    nazwa VARCHAR(100) NOT NULL,
    cena NUMERIC(10, 2),
    ilosc INTEGER
);
```

**Przykład dla SQLite (opcjonalnie):**
```sql
CREATE TABLE Produkty (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nazwa TEXT NOT NULL,
    cena REAL,
    ilosc INTEGER
);
```

### Przykładowy wynik (Oczekiwany rezultat)
Po wykonaniu polecenia `CREATE TABLE`, tabela zostanie utworzona. W `psql` możesz to sprawdzić poleceniem:
```sql
\dt
```
(W SQLite użyłbyś `.tables`)

**Wynik:**
```text
          List of relations
 Schema |   Name   | Type  |  Owner   
--------+----------+-------+----------
 public | produkty | table | postgres
```

## Zadanie 2: Dodawanie danych (DML - INSERT)
Wprowadź do tabeli 5 dowolnych produktów.

**Przykład dla PostgreSQL:**
```sql
INSERT INTO Produkty (nazwa, cena, ilosc) VALUES ('Chleb', 4.50, 10);
INSERT INTO Produkty (nazwa, cena, ilosc) VALUES ('Mleko', 3.20, 20);
-- Dodaj pozostałe 3 produkty
```

### Przykładowy wynik (Oczekiwany rezultat)
Aby sprawdzić, czy dane zostały dodane, wykonaj:
```sql
SELECT * FROM Produkty;
```
**Wynik (przykładowy):**
```text
 id | nazwa | cena | ilosc 
----+-------+------+-------
  1 | Chleb | 4.50 |    10
  2 | Mleko | 3.20 |    20
... (pozostałe rekordy)
```

## Zadanie 3: Modyfikacja i usuwanie danych (DML - UPDATE, DELETE)
1. Zmień cenę produktu o id=1.
2. Usuń produkt o nazwie 'Mleko'.

## Ćwiczenie do wykonania
Stwórz tabelę `Klienci` (id, imie, nazwisko, email) w PostgreSQL i dodaj do niej 3 rekordy. Skorzystaj z typu `SERIAL` dla id.

## Ćwiczenia dodatkowe
1. Dodaj do tabeli `Produkty` kolumnę `kategoria` (VARCHAR), uzupełnij ją dla istniejących rekordów i przygotuj zapytanie zwracające liczbę produktów w każdej kategorii.
2. Dodaj ograniczenie `CHECK` na kolumnie `ilosc`, aby wartość nie mogła być ujemna. Przetestuj działanie poprzez próbę wstawienia błędnego rekordu.

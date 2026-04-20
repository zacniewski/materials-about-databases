# Bazy Danych - Materiały Dydaktyczne

Repozytorium zawiera materiały dla przedmiotu "Bazy danych", obejmujące 14 godzin ćwiczeń laboratoryjnych, 14 godzin pracy projektowej oraz 2 godziny kolokwium podsumowującego.

## Spis treści

### [Laboratoria (14h)](./labs/)

1. [Laboratorium 1: Podstawy SQL - Zapytania SELECT (Baza Rembud)](./labs/lab01_sql_basics_1.md) - 2h
1. [Laboratorium 2: SQL - Podstawy kwerend i filtrowanie danych](./labs/lab02_sql_basics_2.md) - 2h
1. [Laboratorium 3: SQL - Łączenie tabel i funkcje agregujące](./labs/lab03_joins_aggregation.md) - 2h
1. [Laboratorium 4: SQL - Funkcje, operacje na zbiorach i wyrażenia regularne](./labs/lab05_functions_regex.md) - 2h
1. [Laboratorium 5: Funkcje w SQL](./labs/lab06_functions.md) - 2h
1. [Laboratorium 6: Grupowanie, Widoki i Podzapytania w SQL](./labs/lab07_grouping_subqueries.md) - 2h
1. **Kolokwium podsumowujące (2h)** - Sprawdzian wiedzy teoretycznej i praktycznej.

### [Projekt (14h)](./project/)

1. [Wstęp do projektu i wymagania](./project/README.md)
1. [Etap 1: Projektowanie relacyjnych baz danych](./project/step1_design.md) - 4h (zawiera teorię normalizacji)
1. [Etap 2: Proceduralne rozszerzenia w projekcie](./project/step2_procedural.md) - 2h
1. [Etap 3: Implementacja aplikacji bazodanowej](./project/step3_implementation.md) - 10h
1. [Etap 4: Analiza danych i raportowanie](./project/step4_analysis.md) - 1h

## Zasady zaliczenia i punktacja

Dla obu części przedmiotu (laboratoria i projekt) obowiązuje poniższa skala ocen oparta na uzyskanych punktach procentowych:

| Punkty (%) | Ocena      |
| :--------- | :--------- |
| 0% – 50%   | 2.0 (ndst) |
| 51% – 60%  | 3.0 (dst)  |
| 61% – 70%  | 3.5 (dst+) |
| 71% – 80%  | 4.0 (db)   |
| 81% – 90%  | 4.5 (db+)  |
| 91% – 100% | 5.0 (bdb)  |

## Narzędzia

- **Konfiguracja bazy danych:** [Instrukcja importu plików .sql](./labs/db_setup_guide.md)
- **Baza danych (główna):** PostgreSQL
- **Klient:** psql lub pgAdmin
- **Alternatywnie (opcjonalnie):** SQLite + DB Browser for SQLite
- **Język pomocniczy:** Python (np. `psycopg` dla PostgreSQL lub `sqlite3` dla SQLite)
- **Diagramy:** Mermaid (Markdown)

## Poradniki i formatowanie

- Przewodnik po Markdown (kawałki kodu SQL, podstawowe formatowanie, obrazy, tabele): [docs/markdown_guide.md](./docs/markdown_guide.md)

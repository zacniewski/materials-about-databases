# Bazy Danych - Materiały Dydaktyczne

Repozytorium zawiera materiały dla przedmiotu "Bazy danych", obejmujące 16 godzin ćwiczeń laboratoryjnych, 12 godzin pracy projektowej oraz 2 godziny kolokwium podsumowującego.

## Spis treści

### [Laboratoria (16h)](./labs/)
1. [Laboratorium 1: Podstawy SQL - DDL i DML (część 1)](./labs/lab01_sql_basics_1.md) - 2h
2. [Laboratorium 2: SQL - Podstawy kwerend i filtrowanie danych](./labs/lab02_sql_basics_2.md) - 2h
3. [Laboratorium 3: SQL - Łączenie tabel i funkcje agregujące](./labs/lab03_joins_aggregation.md) - 2h
4. [Laboratorium 4: Normalizacja – relacje bazodanowe](./labs/lab04_normalization.md) - 2h
5. [Laboratorium 5: SQL - Funkcje, operacje na zbiorach i integralność danych](./labs/lab05_integrity_functions.md) - 2h
6. [Laboratorium 6: Transakcje w bazach danych](./labs/lab06_transactions.md) - 2h
7. [Laboratorium 7: Proceduralne rozszerzenia SQL - PL/pgSQL i Python](./labs/lab07_procedural_1.md) - 2h
8. [Laboratorium 8: Wyzwalacze w PostgreSQL i SQLite](./labs/lab08_procedural_2.md) - 2h
9. **Kolokwium podsumowujące (2h)** - Sprawdzian wiedzy teoretycznej i praktycznej.

### [Projekt (12h)](./project/)
1. [Wstęp do projektu i wymagania](./project/README.md)
2. [Etap 1: Projektowanie relacyjnych baz danych](./project/step1_design.md) - 2h
3. [Etap 2: Proceduralne rozszerzenia w projekcie](./project/step2_procedural.md) - 2h
4. [Etap 3: Implementacja aplikacji bazodanowej](./project/step3_implementation.md) - 7h
5. [Etap 4: Analiza danych i raportowanie](./project/step4_analysis.md) - 1h

## Zasady zaliczenia i punktacja
Dla obu części przedmiotu (laboratoria i projekt) obowiązuje poniższa skala ocen oparta na uzyskanych punktach procentowych:

| Punkty (%) | Ocena |
| :--- | :--- |
| 0% – 50% | 2.0 (ndst) |
| 51% – 60% | 3.0 (dst) |
| 61% – 70% | 3.5 (dst+) |
| 71% – 80% | 4.0 (db) |
| 81% – 90% | 4.5 (db+) |
| 91% – 100% | 5.0 (bdb) |

## Narzędzia
- **Baza danych (główna):** PostgreSQL
- **Klient:** psql lub pgAdmin
- **Alternatywnie (opcjonalnie):** SQLite + DB Browser for SQLite
- **Język pomocniczy:** Python (np. `psycopg` dla PostgreSQL lub `sqlite3` dla SQLite)
- **Diagramy:** Mermaid (Markdown)

## Poradniki i formatowanie
- Przewodnik po Markdown (kawałki kodu SQL, podstawowe formatowanie, obrazy, tabele): [docs/markdown_guide.md](./docs/markdown_guide.md)

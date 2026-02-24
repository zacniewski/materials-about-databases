# Projekt: System Zarządzania Wypożyczalnią Filmów (VOD)

## Opis projektu
Celem projektu jest zaprojektowanie i implementacja bazy danych dla systemu typu VOD. System powinien pozwalać na zarządzanie filmami, użytkownikami, subskrypcjami oraz historią wypożyczeń.

## Wymagania funkcjonalne
1. Rejestracja i zarządzanie użytkownikami.
2. Katalog filmów z podziałem na gatunki i aktorów.
3. System oceniania filmów przez użytkowników.
4. Obsługa wypożyczeń (płatnych i w ramach abonamentu).
5. Generowanie raportów popularności.

## Harmonogram prac (15h)
1. **Etap 1 (2h):** Analiza wymagań i projektowanie modelu ER (diagram Mermaid), normalizacja bazy danych.
2. **Etap 2 (2h):** Implementacja procedur i wyzwalaczy (logika biznesowa w PL/pgSQL; opcjonalnie Python/SQLite).
3. **Etap 3 (10h):** Implementacja aplikacji (skrypty SQL i integracja z PostgreSQL), migracja danych.
4. **Etap 4 (1h):** Analiza danych i przygotowanie raportów końcowych (zapytania analityczne w PostgreSQL).

## Narzędzia
- PostgreSQL (główny)
- psql lub pgAdmin
- Python (opcjonalnie z `psycopg` lub `sqlite3` do wersji SQLite)
- SQLite (opcjonalnie)
- Mermaid (do diagramów w dokumentacji)

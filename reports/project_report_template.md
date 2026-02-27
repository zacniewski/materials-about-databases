# Wzór sprawozdania z projektu

## Informacje ogólne
- **Nazwa projektu**: 
- **Zespół** (imiona i numery albumów): 
- **Opiekun**: 
- **Okres realizacji**: 

## Podsumowanie wymagań (Checklist)

| Sekcja | Wymagane elementy | Status |
| :--- | :--- | :---: |
| **Projekt** | Diagram ER, normalizacja 3NF, klucze PK/FK, typy danych. | [ ] |
| **Implementacja** | Skrypt DDL, dane testowe (seed), min. 1 trigger, min. 1 funkcja. | [ ] |
| **Aplikacja** | Połączenie z DB (np. Python), obsługa transakcji, obsługa błędów. | [ ] |
| **Analiza** | TOP 3 raporty, agregacje, filtrowanie, wnioski biznesowe. | [ ] |
| **Dokumentacja** | Instrukcja uruchomienia, zrzuty ekranu, opis logiki. | [ ] |

## Streszczenie
Krótki opis problemu, celu projektu i najważniejszych rezultatów (5–8 zdań).

## Wymagania i zakres
- **Wymagania funkcjonalne**: (np. "Użytkownik może wypożyczyć film")
- **Wymagania niefunkcjonalne**: (np. "Czas odpowiedzi bazy < 100ms")
- **Zakres i ograniczenia**: (np. "System nie obsługuje płatności kartą")

## Projekt bazy danych
- Model pojęciowy i logiczny (diagram Mermaid lub obraz)
- Uzasadnienie doboru encji, atrybutów i kluczy
- Reguły integralności (PK, FK, UNIQUE, CHECK)
- Krótki opis procesu normalizacji (dlaczego ta struktura jest w 3NF?)

## Implementacja
- **DDL**: (Wklej najważniejsze fragmenty lub daj link do pliku SQL)
- **Dane przykładowe**: (Opis zestawu danych testowych)
- **Logika proceduralna**: (Kod wyzwalaczy i funkcji z opisem ich działania)
- **Integracje**: (Fragmenty kodu Python/DAO z opisem obsługi transakcji)

## Testy i walidacja
- Scenariusz 1: Poprawne wypożyczenie filmu.
- Scenariusz 2: Próba wypożyczenia przez użytkownika z długami (zadziałanie triggera).
- Scenariusz 3: Rejestracja na zajęty e-mail (zadziałanie `UniqueViolation`).

## Analiza danych (Raporty)
- Raport 1: Popularność (Zapytanie SQL + Wynik + Interpretacja)
- Raport 2: Finanse (Zapytanie SQL + Wynik + Interpretacja)

## Rezultaty i demonstracja
- Zrzuty ekranu z działania aplikacji (np. menu, lista filmów).
- Instrukcja uruchomienia (np. `psql -f schema.sql`, `python main.py`).

## Wnioski i dalszy rozwój
- Co udało się zrealizować?
- Z czym były największe problemy (np. "Trudności z relacjami M:N")?
- Pomysły na rozwój (np. "Dodanie rekomendacji filmów").

## Bibliografia i źródła
- Linki do dokumentacji PostgreSQL, psycopg, kursów SQL.

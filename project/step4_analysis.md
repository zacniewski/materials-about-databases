# Etap 4: Analiza danych i raportowanie (1h)

## Cel etapu
Wykorzystanie zaawansowanego SQL do wyciągnięcia wiedzy z bazy danych. Na tym etapie uczymy się, jak agregować dane, by wspierać decyzje biznesowe.

## Przydatne narzędzia analityczne

| Funkcja / Konstrukcja | Zastosowanie |
| :--- | :--- |
| `COUNT`, `SUM`, `AVG` | Podstawowe statystyki ilościowe i finansowe. |
| `GROUP BY` | Grupowanie wyników (np. sprzedaż wg kategorii). |
| `HAVING` | Filtrowanie wyników zagregowanych (np. tylko kategorie z > 100 wypożyczeniami). |
| `ORDER BY ... LIMIT` | Rankingi (np. TOP 5 filmów). |
| `EXTRACT` / `DATE_TRUNC` | Analiza czasowa (np. sprzedaż wg miesięcy). |

## Zadania (PostgreSQL)

1. [ ] **Analiza popularności:** Napisz zapytanie, które zwróci TOP 3 najczęściej wypożyczane filmy w ostatnim miesiącu.
2. [ ] **Analiza przychodów:** Oblicz całkowity przychód z wypożyczeń w podziale na gatunki filmowe.
3. [ ] **Aktywność użytkowników:** Znajdź "Power Users" – osoby, które wypożyczyły więcej niż 5 filmów.
4. [ ] **Wartość klienta (LTV):** Oblicz, ile średnio pieniędzy zostawia w systemie jeden użytkownik.

## Przykłady zaawansowanych raportów

### 1. TOP 3 filmy w ostatnim miesiącu
```sql
SELECT f.tytul, COUNT(w.id) AS liczba_wypozyczen
FROM film f
JOIN wypozyczenie w ON f.id = w.film_id
WHERE w.data_wypozyczenia >= NOW() - INTERVAL '1 month'
GROUP BY f.id, f.tytul
ORDER BY liczba_wypozyczen DESC
LIMIT 3;
```

### 2. Udział gatunków w przychodach
```sql
SELECT g.nazwa, SUM(f.cena) AS przychod, 
       ROUND(100.0 * SUM(f.cena) / (SELECT SUM(cena) FROM wypozyczenie JOIN film ON film.id = wypozyczenie.film_id), 2) || '%' AS procentowy_udzial
FROM gatunek g
JOIN film_gatunek fg ON g.id = fg.gatunek_id
JOIN film f ON f.id = fg.film_id
JOIN wypozyczenie w ON f.id = w.film_id
GROUP BY g.id, g.nazwa;
```

## Podsumowanie projektu (Raport Końcowy)

Efektem końcowym Twojej pracy powinien być dokument (np. w Markdown lub PDF) zawierający:

### Lista kontrolna dokumentacji:
- [ ] **Wstęp**: Opis systemu i jego założeń.
- [ ] **Projekt**: Diagram ER oraz opis najważniejszych tabel.
- [ ] **Implementacja**: Link do repozytorium/kodu, przykładowe triggery.
- [ ] **Instrukcja**: Jak uruchomić projekt (np. kolejność skryptów SQL).
- [ ] **Analiza**: Wyniki zapytań analitycznych (tabele lub wykresy wygenerowane na ich podstawie).
- [ ] **Wnioski**: Refleksja nad tym, co było najtrudniejsze i co można by ulepszyć.

---
*Gratulacje! Ukończenie wszystkich 4 etapów oznacza posiadanie solidnych podstaw w projektowaniu i wdrażaniu relacyjnych systemów bazodanowych.*

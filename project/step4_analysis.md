# Etap 4: Analiza danych i raportowanie (1h)

## Cel
Wyciągnięcie wartościowych informacji z bazy danych przy użyciu zaawansowanych zapytań SQL.

## Zadania (PostgreSQL)
1. **Analiza popularności:** Napisz zapytanie, które zwróci TOP 3 najczęściej wypożyczane filmy w ostatnim miesiącu (użyj `NOW() - INTERVAL '1 month'`).
2. **Analiza przychodów:** Oblicz całkowity przychód z wypożyczeń w podziale na gatunki filmowe (`SUM`, `GROUP BY`).
3. **Aktywność użytkowników:** Znajdź użytkowników, którzy wypożyczyli więcej niż 5 filmów (`GROUP BY`, `HAVING`).

## Przykład raportu (SQL – PostgreSQL)
```sql
SELECT f.tytul, COUNT(w.id) AS liczba_wypozyczen
FROM film f
JOIN wypozyczenie w ON f.id = w.film_id
WHERE w.data_wypozyczenia >= NOW() - INTERVAL '1 month'
GROUP BY f.id, f.tytul
ORDER BY liczba_wypozyczen DESC
LIMIT 3;
```

## Uwaga (opcjonalnie: SQLite)
W SQLite filtr dat wymaga funkcji `datetime('now','-1 month')` i odpowiednio dostosowanej kolumny daty.

## Podsumowanie projektu
Efektem końcowym powinien być dokument zawierający:
- Opis struktury bazy.
- Przykładowe zrzuty ekranu z działania aplikacji.
- Kod źródłowy z komentarzami.
- Wyniki przeprowadzonych analiz.

# Etap 4: Analiza danych i raportowanie (1h)

## Cel
Wyciągnięcie wartościowych informacji z bazy danych przy użyciu zaawansowanych zapytań SQL.

## Zadania
1. **Analiza popularności:** Napisz zapytanie, które zwróci TOP 3 najczęściej wypożyczane filmy w ostatnim miesiącu.
2. **Analiza przychodów:** Oblicz całkowity przychód z wypożyczeń w podziale na gatunki filmowe.
3. **Aktywność użytkowników:** Znajdź użytkowników, którzy wypożyczyli więcej niż 5 filmów (użyj `GROUP BY` i `HAVING`).

## Przykład raportu (SQL)
```sql
SELECT f.tytul, COUNT(w.id) as liczba_wypozyczen
FROM FILM f
JOIN WYPOZYCZENIE w ON f.id = w.film_id
GROUP BY f.id
ORDER BY liczba_wypozyczen DESC
LIMIT 3;
```

## Podsumowanie projektu
Efektem końcowym powinien być dokument zawierający:
- Opis struktury bazy.
- Przykładowe zrzuty ekranu z działania aplikacji.
- Kod źródłowy z komentarzami.
- Wyniki przeprowadzonych analiz.

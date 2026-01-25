# Laboratorium 4: SQL - Funkcje i operacje na zbiorach

## Cel laboratorium
Praca z wbudowanymi funkcjami (tekstowe, daty) oraz operatory zbiorowe (UNION, INTERSECT, EXCEPT).

## Zadania
1. **Funkcje tekstowe**: Zamień wszystkie nazwiska klientów na wielkie litery.
2. **Funkcje dat**: Wyciągnij rok z daty zamówienia.
3. **Operacje na zbiorach**: Pobierz listę produktów, które nigdy nie zostały zamówione (używając `EXCEPT`).

## Przykład UNION
```sql
SELECT imie FROM Klienci
UNION
SELECT nazwa FROM Produkty;
```

## Ćwiczenie
Znajdź wszystkich klientów, których nazwisko zaczyna się na literę 'K' (użyj `LIKE`).

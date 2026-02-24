# Laboratorium 7: Proceduralne rozszerzenia SQL - PL/pgSQL i Python

## Cel laboratorium
Zapoznanie z językami proceduralnymi w bazach danych na przykładzie PL/pgSQL (PostgreSQL) oraz integracji z językiem Python (SQLite).

## Podstawy teoretyczne

### Języki proceduralne w bazach danych
Profesjonalne systemy bazodanowe posiadają własne języki proceduralne, które pozwalają na pisanie skomplikowanej logiki (pętle, warunki, zmienne) bezpośrednio wewnątrz bazy:
- **PostgreSQL**: PL/pgSQL
- **Oracle**: PL/SQL
- **SQL Server**: T-SQL

Zalety:
- Mniejszy ruch sieciowy (logika blisko danych).
- Lepsza wydajność przy operacjach masowych.
- Enkapsulacja logiki biznesowej.

### PL/pgSQL (PostgreSQL)
Blokowa struktura kodu:
```sql
DO $$ 
DECLARE
    zmienna INTEGER := 10;
BEGIN
    RAISE NOTICE 'Wartość zmiennej: %', zmienna;
END $$;
```

### Integracja Python <-> SQLite (Opcjonalnie)
SQLite nie posiada wbudowanego języka proceduralnego, ale pozwala na rejestrowanie funkcji Pythona za pomocą biblioteki `sqlite3`.

## Zadanie 1: Funkcja w PL/pgSQL (PostgreSQL)
Stwórz funkcję obliczającą podatek VAT:

```sql
CREATE OR REPLACE FUNCTION oblicz_vat(cena NUMERIC)
RETURNS NUMERIC AS $$
BEGIN
    RETURN ROUND(cena * 0.23, 2);
END;
$$ LANGUAGE plpgsql;

-- Wywołanie funkcji
SELECT nazwa, cena, oblicz_vat(cena) FROM Produkty;
```

## Zadanie 2: Rejestracja funkcji w Pythonie (Opcjonalnie dla SQLite)
```python
import sqlite3

def podatek_vat(cena):
    return round(cena * 0.23, 2)

conn = sqlite3.connect('sklep.db')
conn.create_function("oblicz_vat", 1, podatek_vat)

cursor = conn.cursor()
for row in cursor.execute("SELECT nazwa, cena, oblicz_vat(cena) FROM Produkty"):
    print(row)

conn.close()
```

### Przykładowy wynik (Oczekiwany rezultat)
Zarówno PostgreSQL, jak i skrypt Pythona powinny zwrócić:
**Wynik:**
```text
 nazwa | cena | oblicz_vat 
-------+------+------------
 Chleb | 4.50 |       1.04
```

## Ćwiczenie
Napisz funkcję w PL/pgSQL, która przyjmuje cenę i ilość, a następnie zwraca łączną wartość (cena * ilosc) z uwzględnieniem 10% rabatu, jeśli ilosc jest większa niż 10.

## Ćwiczenia dodatkowe
1. Stwórz funkcję agregującą w PostgreSQL lub zarejestruj funkcję agregującą w Pythonie dla SQLite.
2. Zaimplementuj funkcję `waliduj_email(email)` w PL/pgSQL używając wyrażeń regularnych (`~` lub `regexp_match`).

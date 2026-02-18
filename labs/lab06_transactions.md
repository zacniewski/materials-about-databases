# Laboratorium 6: Transakcje w bazach danych

## Cel laboratorium
Zrozumienie koncepcji transakcji (ACID) oraz ich praktyczne zastosowanie w SQLite.

## Teoria: Właściwości ACID
1. **Atomicity (Atomowość)** - wszystko albo nic.
2. **Consistency (Spójność)** - przejście z jednego stanu poprawnego do drugiego.
3. **Isolation (Izolacja)** - transakcje nie wpływają na siebie nawzajem.
4. **Durability (Trwałość)** - po zatwierdzeniu dane są bezpieczne.

## Zadanie: Przelew bankowy
Wyobraźmy sobie tabelę `Konta`:
```sql
CREATE TABLE Konta (
    id_konta INTEGER PRIMARY KEY,
    wlasciciel TEXT,
    saldo REAL
);

INSERT INTO Konta VALUES (1, 'Jan Kowalski', 1000);
INSERT INTO Konta VALUES (2, 'Anna Nowak', 500);
```

### Wykonanie transakcji
```sql
BEGIN TRANSACTION;

UPDATE Konta SET saldo = saldo - 100 WHERE id_konta = 1;
UPDATE Konta SET saldo = saldo + 100 WHERE id_konta = 2;

-- Jeśli wszystko ok:
COMMIT;

-- Jeśli wystąpił błąd:
-- ROLLBACK;
```

## Ćwiczenie
Spróbuj wykonać transakcję, która kończy się błędem (np. naruszenie więzu CHECK na ujemne saldo) i wycofaj zmiany.

## Ćwiczenia dodatkowe
1. Zademonstruj użycie `SAVEPOINT`, `RELEASE` i `ROLLBACK TO` na przykładzie operacji częściowo udanych w ramach większej transakcji.
2. Porównaj `BEGIN DEFERRED`, `BEGIN IMMEDIATE` i `BEGIN EXCLUSIVE` w SQLite: przygotuj krótkie demo (nawet jednosesyjne), które pokazuje różnice w blokadach podczas wykonywania `UPDATE` na tej samej tabeli.

# Laboratorium 8: Wyzwalacze w PostgreSQL i SQLite

## Cel laboratorium
Poznanie mechanizmu wyzwalaczy (triggers) do automatyzacji zadań w bazie danych na przykładzie PostgreSQL oraz SQLite.

## Podstawy teoretyczne

### Wyzwalacze (Triggers)
Wyzwalacz to nazwany obiekt bazy danych, który jest automatycznie uruchamiany (**wyzwalany**) w odpowiedzi na określone zdarzenie (`INSERT`, `UPDATE`, `DELETE`) na konkretnej tabeli.

W **PostgreSQL** wyzwalacz zawsze wywołuje funkcję wyzwalającą (trigger function), natomiast w **SQLite** kod wyzwalacza jest definiowany bezpośrednio wewnątrz polecenia `CREATE TRIGGER`.

### Przykład: Logowanie zmian cen
Stwórzmy tabelę do przechowywania historii cen:
```sql
CREATE TABLE HistoriaCen (
    id_historia SERIAL PRIMARY KEY,
    id_produktu INTEGER,
    stara_cena NUMERIC(10, 2),
    nowa_cena NUMERIC(10, 2),
    data_zmiany TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

#### Realizacja w PostgreSQL (Główna)
1. Tworzymy funkcję wyzwalającą:
```sql
CREATE OR REPLACE FUNCTION loguj_zmiane_ceny()
RETURNS TRIGGER AS $$
BEGIN
    IF OLD.cena <> NEW.cena THEN
        INSERT INTO HistoriaCen (id_produktu, stara_cena, nowa_cena)
        VALUES (OLD.id, OLD.cena, NEW.cena);
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;
```

2. Tworzymy wyzwalacz:
```sql
CREATE TRIGGER trg_log_zmiany_cen
AFTER UPDATE OF cena ON Produkty
FOR EACH ROW
EXECUTE FUNCTION loguj_zmiane_ceny();
```

#### Realizacja w SQLite (Opcjonalnie)
```sql
CREATE TRIGGER log_zmiany_cen
AFTER UPDATE OF cena ON Produkty
BEGIN
    INSERT INTO HistoriaCen (id_produktu, stara_cena, nowa_cena)
    VALUES (OLD.id, OLD.cena, NEW.cena);
END;
```

### Przykładowy wynik (Oczekiwany rezultat)
W tabeli `HistoriaCen` powinien pojawić się wpis o zmianie:
**Wynik:**
```text
 id_historia | id_produktu | stara_cena | nowa_cena |        data_zmiany         
-------------+-------------+------------+-----------+----------------------------
           1 |           1 |       4.50 |      5.00 | 2023-10-21 12:00:00
```

## Zadanie: Walidacja danych przez wyzwalacz
Stwórz wyzwalacz w PostgreSQL `BEFORE INSERT`, który zablokuje dodanie produktu z ujemną ilością (używając `RAISE EXCEPTION`).

## Ćwiczenie
Stwórz wyzwalacz w PostgreSQL, który przy usuwaniu klienta automatycznie usuwa wszystkie jego zamówienia (kaskadowe usuwanie realizowane przez trigger, o ile nie zostało to zdefiniowane w więzach `FOREIGN KEY`).

## Ćwiczenia dodatkowe
1. Stwórz wyzwalacz `BEFORE UPDATE` na tabeli `Produkty`, który zablokuje ustawienie ujemnej ceny lub ilości.
2. Zademonstruj `INSTEAD OF` trigger na widoku w PostgreSQL: utwórz widok łączący `Klienci` i `Zamowienia`, a następnie wyzwalacz `INSTEAD OF INSERT` wstawiający dane do tabel bazowych.

# Laboratorium 8: Wyzwalacze i zaawansowana logika proceduralna

## Cel laboratorium
Poznanie mechanizmu wyzwalaczy (triggers) w SQLite do automatyzacji zadań w bazie danych.

## Wyzwalacze (Triggers)
Wyzwalacz to nazwany obiekt bazy danych, który jest automatycznie uruchamiany przy wystąpieniu określonego zdarzenia (INSERT, UPDATE, DELETE).

### Przykład: Logowanie zmian cen
Stwórzmy tabelę do przechowywania historii cen:
```sql
CREATE TABLE HistoriaCen (
    id_historia INTEGER PRIMARY KEY,
    id_produktu INTEGER,
    stara_cena REAL,
    nowa_cena REAL,
    data_zmiany TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

Tworzymy wyzwalacz:
```sql
CREATE TRIGGER log_zmiany_cen
AFTER UPDATE OF cena ON Produkty
BEGIN
    INSERT INTO HistoriaCen (id_produktu, stara_cena, nowa_cena)
    VALUES (OLD.id, OLD.cena, NEW.cena);
END;
```

## Zadanie: Walidacja danych przez wyzwalacz
Stwórz wyzwalacz `BEFORE INSERT`, który zablokuje dodanie produktu z ujemną ilością (używając funkcji `RAISE(ABORT, 'wiadomość')`).

## Ćwiczenie
Stwórz wyzwalacz, który przy usuwaniu klienta automatycznie usuwa wszystkie jego zamówienia (kaskadowe usuwanie realizowane przez trigger).

# Etap 2: Proceduralne rozszerzenia w projekcie (2h)

## Cel
Zaimplementowanie logiki biznesowej, która wykracza poza standardowy SQL.

## Zadania
1. **Wyzwalacze i funkcje w PL/pgSQL (PostgreSQL):**
   - Automatyczna aktualizacja daty ostatniego logowania użytkownika.
   - Blokowanie wypożyczenia filmu, jeśli użytkownik ma zaległości w płatnościach.
   - Logowanie usuniętych rekordów do tabeli archiwalnej.
2. **Funkcje i procedury w PL/pgSQL:**
   - Walidacja adresu e‑mail przy rejestracji (wyrażenia regularne).
   - Funkcja do wyliczania rabatu na podstawie liczby wypożyczeń użytkownika.
3. **Opcjonalnie: Integracja z Python/SQLite**
   - Generator raportu PDF/tekstowego.
   - Rejestracja funkcji pomocniczych w SQLite (jeśli korzystasz z alternatywnej bazy dla prototypu).

## Przykładowy wyzwalacz w PostgreSQL
Funkcja wyzwalająca i wyzwalacz blokujący wypożyczenie, jeśli użytkownik ma zaległości:
```sql
-- Funkcja wyzwalająca
CREATE OR REPLACE FUNCTION sprawdz_zaleglosci()
RETURNS TRIGGER AS $$
DECLARE
    ma_zaleglosci BOOLEAN;
BEGIN
    SELECT EXISTS (
        SELECT 1 FROM PLATNOSC p
        WHERE p.uzytkownik_id = NEW.uzytkownik_id
          AND p.status = 'ZALEGLOSC'
    ) INTO ma_zaleglosci;

    IF ma_zaleglosci THEN
        RAISE EXCEPTION 'Użytkownik posiada zaległości w płatnościach';
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Wyzwalacz
CREATE TRIGGER trg_sprawdz_zaleglosci
BEFORE INSERT ON WYPOZYCZENIE
FOR EACH ROW
EXECUTE FUNCTION sprawdz_zaleglosci();
```

## Procedura walidacji e‑mail (PostgreSQL)
```sql
CREATE OR REPLACE FUNCTION waliduj_email(email TEXT)
RETURNS BOOLEAN AS $$
BEGIN
    RETURN email ~ '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$';
END;
$$ LANGUAGE plpgsql;
```

## Integracja z Pythonem (opcjonalnie)
Jeśli chcesz dodać warstwę aplikacyjną w Pythonie, dla PostgreSQL użyj biblioteki `psycopg` i zarządzaj transakcjami w kodzie aplikacji. Dla prototypów SQLite można użyć `sqlite3` i rejestrować funkcje niestandardowe.

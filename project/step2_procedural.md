# Etap 2: Proceduralne rozszerzenia w projekcie (2h)

## Cel
Zaimplementowanie logiki biznesowej, która wykracza poza standardowy SQL.

## Zadania
1. **Wyzwalacze (SQL):**
   - Automatyczna aktualizacja daty ostatniego logowania użytkownika.
   - Blokowanie wypożyczenia filmu, jeśli użytkownik ma zaległości w płatnościach.
   - Logowanie usuniętych rekordów do tabeli archiwalnej.

2. **Funkcje proceduralne (Python):**
   - Generator raportu PDF/tekstowego (wykorzystujący dane z bazy).
   - Funkcja weryfikująca poprawność formatu adresu e-mail przy rejestracji.

## Przykładowy wyzwalacz (SQL)
```sql
CREATE TRIGGER sprawdz_wiek_uzytkownika
BEFORE INSERT ON WYPOZYCZENIE
FOR EACH ROW
BEGIN
    -- Przykładowa logika sprawdzająca ograniczenia wiekowe filmu
    -- (wymaga rozszerzenia tabeli FILM o kolumnę ograniczenie_wiekowe)
END;
```

## Integracja z Pythonem
Użyj `conn.create_function`, aby dodać własne algorytmy rekomendacji filmów oparte na historii wypożyczeń.

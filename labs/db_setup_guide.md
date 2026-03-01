# Instrukcja konfiguracji bazy danych

W każdym laboratorium znajduje się plik z rozszerzeniem `.sql` (np. `lab01_rembudSQL.sql`), który zawiera skrypt tworzący tabele oraz wypełniający je przykładowymi danymi. Poniżej znajduje się instrukcja, jak przygotować swoją bazę danych do pracy.

## 1. Dostęp do bazy danych

Każdy student posiada własną bazę danych w systemie PostgreSQL.
- **Nazwa bazy:** `s12345` (gdzie `12345` to Twój numer indeksu).
- **Narzędzie:** Do zarządzania bazą wykorzystujemy **pgAdmin**.

## 2. Importowanie struktury bazy danych (Plik .sql)

Aby utworzyć tabele na podstawie dostarczonego pliku `.sql`, wykonaj następujące kroki:

1. **Uruchom pgAdmin** i zaloguj się na serwer.
2. W drzewie po lewej stronie odszukaj swoją bazę danych (np. `s12345`).
3. Kliknij prawym przyciskiem myszy na nazwie swojej bazy i wybierz **Query Tool**.
4. W otwartym oknie edytora SQL możesz wczytać plik na dwa sposoby:
   - **Metoda A (Otwarcie pliku):** Kliknij ikonę folderu (*Open File*) na pasku narzędzi i wybierz odpowiedni plik `.sql` z dysku.
   - **Metoda B (Kopiuj-Wklej):** Otwórz plik `.sql` w dowolnym edytorze tekstowym (np. Notatnik, VS Code), skopiuj całą jego zawartość i wklej do okna *Query Tool* w pgAdmin.
5. Kliknij ikonę błyskawicy lub naciśnij klawisz **F5**, aby wykonać skrypt.
6. Sprawdź komunikaty w zakładce *Messages* na dole – powinien pojawić się komunikat o pomyślnym wykonaniu zapytania (np. `Query returned successfully`).

## 3. Weryfikacja poprawności

Po uruchomieniu skryptu warto upewnić się, że tabele zostały utworzone:
1. W drzewie obiektów (po lewej) rozwiń: `Schemas` -> `public` -> `Tables`.
2. Jeśli nie widzisz nowych tabel, kliknij prawym przyciskiem myszy na `Tables` i wybierz **Refresh**.
3. Możesz sprawdzić zawartość tabeli, wpisując w *Query Tool* polecenie:
   ```sql
   SELECT * FROM nazwa_tabeli LIMIT 10;
   ```

## Uwagi
- Pamiętaj, że niektóre skrypty mogą zawierać polecenia `DROP TABLE IF EXISTS`, co oznacza, że przy każdym uruchomieniu skryptu istniejące tabele o tych samych nazwach zostaną usunięte i utworzone na nowo (wszystkie Twoje zmiany w danych zostaną utracone).
- Przed przystąpieniem do nowego laboratorium upewnij się, że pracujesz na właściwym schemacie.

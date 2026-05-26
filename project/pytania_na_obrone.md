### Propozycje pytań na obronę projektu (Bazy Danych)

Poniżej znajduje się zestaw pytań podzielony na kategorie tematyczne, opracowany na podstawie wytycznych zawartych w pliku `Bazy danych - wytyczne do projektu.md`. Pytania mają na celu zweryfikowanie samodzielności wykonania pracy oraz stopnia zrozumienia mechanizmów bazodanowych przez studentów.

______________________________________________________________________

### 1. Projekt i struktura (Diagram ERD i Encje)

- **Logika biznesowa:** Wyjaśnij cel powstania Twojej bazy danych. Jakie kluczowe procesy wspomaga i dlaczego zdecydowałeś/aś się na takie, a nie inne encje (min. 5)?
- **Typy danych:** Wskaż kolumnę, dla której wybrałeś/aś specyficzny typ danych (np. `numeric`, `timestamp`, `boolean`). Dlaczego ten wybór jest optymalny dla przechowywanych tam informacji?
- **Struktura tabel:** W jaki sposób sprawdziłeś/aś strukturę swoich tabel po ich utworzeniu? Wyjaśnij wynik zapytania do `information_schema.columns` dla wybranej tabeli:

```sql
SELECT * FROM information_schema.COLUMNS
```

### 2. Relacje i integralność

- **Implementacja relacji:** Wskaż na diagramie ERD relację między dwiema tabelami. W jaki sposób zdefiniowałeś/aś tę relację w kodzie SQL (użycie `ALTER TABLE` i `FOREIGN KEY`)?
- **Integralność referencyjna:** Co oznacza opcja `ON DELETE CASCADE` w Twoich kluczach obcych? Jakie byłyby skutki usunięcia rekordu nadrzędnego bez tej opcji?
- **Klucze główne i unikalne:** Które kolumny pełnią rolę kluczy głównych (`PK`), a które posiadają ograniczenie `UNIQUE`? Dlaczego unikalność adresu e-mail lub innego identyfikatora jest ważna w Twoim systemie?

### 3. Widoki (Views)

- **Cel powstania:** Opisz, jakie zadanie realizuje Twój widok `v_raport_...`. Czy służy on do uproszczenia raportowania, czy może do łączenia danych z wielu tabel w celu prezentacji użytkownikowi?
- **Złączenia (Joins):** Wyjaśnij różnicę między `INNER JOIN` a `LEFT JOIN` w kontekście jednego z Twoich widoków. Co by się zmieniło w wynikach, gdybyś zmienił typ złączenia?

### 4. Funkcje (Functions)

- **Logika obliczeń:** Twoja funkcja zwraca tabelę wyników. Wyjaśnij krok po kroku, jakie obliczenia lub filtrowania (np. `WHERE`, `GROUP BY`) zachodzą wewnątrz jej kodu.
- **Parametryzacja:** Gdybyś miał/a dodać parametr wejściowy do swojej funkcji (np. zakres dat lub ID konkretnego użytkownika), w którym miejscu kodu należałoby wprowadzić zmianę?

### 5. Wyzwalacze (Triggers)

- **Moment wywołania:** Dlaczego Twój wyzwalacz działa w trybie `AFTER INSERT OR UPDATE`? Czy w Twoim przypadku tryb `BEFORE` również byłby uzasadniony?
- **Zmienne specjalne:** Wyjaśnij rolę rekordów `NEW` i `OLD` wewnątrz funkcji wyzwalacza. Do czego ich używasz w swoim kodzie? Pomocny [link](https://stackoverflow.com/questions/10639331/new-and-old-trigger-code).
- **Automatyzacja:** Opisz mechanizm działania logowania zmian. Co dokładnie zapisuje się w tabeli logów po wykonaniu operacji na tabeli głównej?

______________________________________________________________________

### Wskazówki dla studenta (na podstawie wytycznych):

- Pamiętaj o spójności między diagramem ERD a fizyczną strukturą bazy (klucze, typy danych).
- Bądź przygotowany/a na pokazanie efektu działania zapytań (wyniki w tabelach) – estetyka i czytelność raportu również podlegają ocenie (2 pkt).
- Wyzwalacze są najwyżej punktowanym elementem (12 pkt), więc przygotuj się na najbardziej dociekliwe pytania z tej sekcji.

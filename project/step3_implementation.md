# Etap 3: Implementacja aplikacji bazodanowej (10h)

## Zakres prac
Ten etap zajmuje najwięcej czasu i obejmuje stworzenie warstwy dostępowej do bazy danych (DAO/Repository) oraz prostego interfejsu (konsolowego lub GUI).

## Zadania
1. **Inicjalizacja bazy (PostgreSQL):** Skrypt SQL tworzący strukturę tabel (Schema). Preferuj `GENERATED ALWAYS AS IDENTITY` zamiast `SERIAL` w nowych projektach.
2. **Zasilenie bazy danymi (Seeding):** Dodanie min. 20 filmów, 10 użytkowników i 50 wypożyczeń (skrypt `INSERT`).
3. **Moduł Użytkownika:**
   - Logowanie / Rejestracja.
   - Przeglądanie katalogu filmów.
   - Wypożyczanie filmu (transakcje, blokady).
4. **Moduł Administratora:**
   - Dodawanie/Edycja filmów.
   - Zarządzanie użytkownikami.
   - Podgląd statystyk.

## Przykład struktury kodu (Python + PostgreSQL)
```python
import psycopg
from contextlib import contextmanager

@contextmanager
def get_conn():
    conn = psycopg.connect("dbname=vod user=postgres password=secret host=localhost")
    try:
        yield conn
    finally:
        conn.close()

class VODDatabase:
    def get_available_movies(self):
        with get_conn() as conn, conn.cursor() as cur:
            cur.execute("SELECT tytul, cena FROM film WHERE dostepny = TRUE")
            return cur.fetchall()

    def rent_movie(self, user_id: int, movie_id: int):
        with get_conn() as conn:
            with conn.transaction():
                with conn.cursor() as cur:
                    # przykładowa kontrola dostępności i wpis do WYPOZYCZENIE
                    cur.execute("""
                        INSERT INTO wypozyczenie (uzytkownik_id, film_id, data_wypozyczenia)
                        VALUES (%s, %s, NOW())
                        RETURNING id
                    """, (user_id, movie_id))
                    return cur.fetchone()[0]
```

## Wymagania techniczne
- Kod powinien być podzielony na moduły.
- Należy obsłużyć błędy połączenia i naruszenia więzów integralności (np. `UniqueViolation`, `ForeignKeyViolation`).
- Wszystkie operacje modyfikujące dane powinny być wykonywane w transakcjach (`with conn.transaction():`).
- Opcjonalnie: wersja prototypowa na SQLite (`sqlite3`) może być utrzymywana jako alternatywa.

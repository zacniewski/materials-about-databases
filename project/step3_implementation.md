# Etap 3: Implementacja aplikacji bazodanowej (10h)

## Zakres prac
Ten etap zajmuje najwięcej czasu i obejmuje stworzenie warstwy dostępowej do bazy danych (DAO/Repository) oraz prostego interfejsu (konsolowego lub GUI).

## Zadania
1. **Inicjalizacja bazy:** Skrypt SQL tworzący strukturę tabel (Schema).
2. **Zasilenie bazy danymi (Seeding):** Dodanie min. 20 filmów, 10 użytkowników i 50 wypożyczeń.
3. **Moduł Użytkownika:**
   - Logowanie / Rejestracja.
   - Przeglądanie katalogu filmów.
   - Wypożyczanie filmu.
4. **Moduł Administratora:**
   - Dodawanie/Edycja filmów.
   - Zarządzanie użytkownikami.
   - Podgląd statystyk.

## Przykład struktury kodu (Python)
```python
import sqlite3

class VODDatabase:
    def __init__(self, db_file):
        self.conn = sqlite3.connect(db_file)
    
    def get_available_movies(self):
        cursor = self.conn.cursor()
        cursor.execute("SELECT tytul, cena FROM FILM")
        return cursor.fetchall()

    def rent_movie(self, user_id, movie_id):
        # Implementacja transakcyjna
        pass
```

## Wymagania techniczne
- Kod powinien być podzielony na moduły.
- Należy obsłużyć błędy połączenia i naruszenia więzów integralności.
- Wszystkie operacje modyfikujące dane powinny być wykonywane w transakcjach.

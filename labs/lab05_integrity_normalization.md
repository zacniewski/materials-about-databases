# Laboratorium 5: Integralność danych i normalizacja

## Cel laboratorium
Zrozumienie więzów integralności oraz zasad projektowania baz danych (1NF, 2NF, 3NF).

## Integralność danych
SQLite wspiera:
- `NOT NULL`
- `UNIQUE`
- `PRIMARY KEY`
- `FOREIGN KEY`
- `CHECK`

### Przykład CHECK
```sql
ALTER TABLE Produkty ADD COLUMN status TEXT CHECK(status IN ('dostępny', 'brak'));
```

## Normalizacja
Zadanie polega na przekształceniu nieprawidłowo zaprojektowanej tabeli:
`Tabela_Nieznormalizowana (Klient, Adres, Produkt, Cena, Data_Zamowienia)`
do postaci znormalizowanej (3NF).

### Schemat po normalizacji:
- `Klienci (id_klienta, imie_nazwisko, adres)`
- `Produkty (id_produktu, nazwa, cena)`
- `Zamowienia (id_zamowienia, id_klienta, data)`
- `Pozycje_Zamowienia (id_zamowienia, id_produktu, ilosc)`

## Ćwiczenie
Zaprojektuj bazę danych dla biblioteki (książki, autorzy, wypożyczenia) i określ klucze obce.
Doprowadź projekt do 3 postaci normalnej.

## Ćwiczenia dodatkowe
1. Wskaż przykładowe zależności funkcyjne w tabeli `Pozycje_Zamowienia` oraz zaproponuj ewentualne dodatkowe więzy (np. `CHECK(ilosc > 0)`).
2. Przygotuj skrypty DDL tworzące wszystkie tabele po normalizacji (3NF) wraz z kluczami obcymi i ograniczeniami integralności (NOT NULL, UNIQUE, CHECK).

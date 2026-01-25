# Laboratorium 2: SQL - Zapytania, złączenia i agregacja (część 2)

## Cel laboratorium
Opanowanie umiejętności pobierania danych z wielu tabel, filtrowania wyników oraz korzystania z funkcji agregujących.

## Zadania
1. **SELECT z filtrowaniem**: Pobierz produkty o cenie wyższej niż 5.00.
2. **JOIN**: Połącz tabelę `Zamowienia` (którą należy utworzyć) z tabelą `Klienci`.
3. **Agregacja**: Oblicz średnią cenę produktów w sklepie.

## Przykład JOIN
```sql
CREATE TABLE Zamowienia (
    id_zamowienia INTEGER PRIMARY KEY,
    id_klienta INTEGER,
    data TEXT,
    FOREIGN KEY(id_klienta) REFERENCES Klienci(id)
);

SELECT Klienci.imie, Klienci.nazwisko, Zamowienia.data
FROM Klienci
JOIN Zamowienia ON Klienci.id = Zamowienia.id_klienta;
```

## Ćwiczenie
Wyświetl liczbę produktów w poszczególnych kategoriach (dodaj kolumnę `kategoria` do tabeli `Produkty`).

# Laboratorium 3: Zaawansowany SQL - Podzapytania i widoki

## Cel laboratorium
Poznanie mechanizmów podzapytań (subqueries) oraz tworzenia wirtualnych tabel (widoków).

## Zadania
1. **Podzapytania nieskorelowane**: Znajdź produkty, których cena jest wyższa od średniej ceny wszystkich produktów.
2. **Podzapytania skorelowane**: Znajdź klientów, którzy złożyli przynajmniej jedno zamówienie.
3. **Widoki (Views)**: Stwórz widok `PodsumowanieSprzedazy`, który łączy informacje o produktach, zamówieniach i klientach.

## Przykład Widoku
```sql
CREATE VIEW WidokZamowien AS
SELECT z.id_zamowienia, k.nazwisko, z.data
FROM Zamowienia z
JOIN Klienci k ON z.id_klienta = k.id;

SELECT * FROM WidokZamowien;
```

## Ćwiczenie
Stwórz widok, który pokazuje tylko produkty o niskim stanie magazynowym (np. `ilosc < 5`).

## Ćwiczenia dodatkowe
1. Używając `EXISTS`, znajdź klientów, którzy zamówili przynajmniej jeden produkt z kategorii "Napoje".
2. Utwórz widok agregujący `SprzedazNaKlienta`, który zwraca `id_klienta`, `liczba_zamowien` oraz `laczna_wartosc` (suma wartości pozycji zamówień) i zaprezentuj zapytanie odczytujące top 5 klientów po wartości.

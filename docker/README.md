# Środowisko Docker – Bazy danych (laboratoria)

Skonteneryzowane środowisko PostgreSQL 18 do realizacji wszystkich ćwiczeń laboratoryjnych.

## Wymagania

- [Docker](https://docs.docker.com/get-docker/) (≥ 24)
- [Docker Compose](https://docs.docker.com/compose/install/) (≥ 2)

## Szybki start

```bash
cd docker
docker compose up -d
```

Przy pierwszym uruchomieniu:

1. Zostanie pobrany obraz **PostgreSQL 18** oraz **Adminer**.
1. Automatycznie utworzą się bazy danych dla każdego laboratorium (`lab01` – `lab07`).
1. Do każdej bazy zostaną zaimportowane odpowiednie skrypty SQL.

## Dane dostępowe

| Parametr      | Wartość     |
| ------------- | ----------- |
| Host          | `localhost` |
| Port          | `5432`      |
| Użytkownik    | `student`   |
| Hasło         | `student`   |
| Baza domyślna | `labs`      |

## Bazy danych dla laboratoriów

| Baza    | Skrypt SQL                  | Temat                         |
| ------- | --------------------------- | ----------------------------- |
| `lab01` | `lab01_rembudSQL.sql`       | Sklep remontowo-budowlany     |
| `lab02` | `lab02_computer_shop.sql`   | Sklep komputerowy             |
| `lab03` | `lab03_football_league.sql` | Liga piłkarska                |
| `lab04` | `lab04_employees.sql`       | Pracownicy                    |
| `lab05` | `lab05_cars.sql`            | Sprzedaż samochodów           |
| `lab06` | `lab06_cities.sql`          | Miasta świata                 |
| `lab07` | `lab07_university.sql`      | System zarządzania studentami |

## Łączenie z bazą danych

### psql (z terminala)

```bash
# Połączenie z konkretną bazą laboratorium, np. lab01:
docker exec -it labs-postgres psql -U student -d lab01
```

### Adminer (interfejs webowy)

Otwórz w przeglądarce: [http://localhost:8080](http://localhost:8080)

- **System**: PostgreSQL
- **Serwer**: `postgres`
- **Użytkownik**: `student`
- **Hasło**: `student`
- **Baza danych**: np. `lab01`

### Zewnętrzne narzędzia (DBeaver, DataGrip, pgAdmin itp.)

Użyj danych z tabeli powyżej — host `localhost`, port `5432`.

## Przydatne polecenia

```bash
# Uruchomienie środowiska
docker compose up -d

# Zatrzymanie środowiska (dane pozostają)
docker compose down

# Zatrzymanie i usunięcie danych (pełny reset)
docker compose down -v

# Podgląd logów PostgreSQL
docker compose logs -f postgres

# Lista baz danych
docker exec -it labs-postgres psql -U student -d labs -c "\l"
```

## Resetowanie danych

Aby ponownie zaimportować dane od zera:

```bash
docker compose down -v
docker compose up -d
```

Usunięcie wolumenu (`-v`) powoduje ponowne wykonanie skryptów inicjalizacyjnych przy następnym starcie.

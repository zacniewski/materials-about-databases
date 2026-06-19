#!/bin/bash
set -e

# Tworzymy osobną bazę danych dla każdego laboratorium
for i in 1 2 3 4 5 6 7; do
  psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-SQL
    CREATE DATABASE lab0${i};
SQL
done

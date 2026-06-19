#!/bin/bash
set -e

# Mapowanie: baza -> plik SQL
declare -A LAB_FILES
LAB_FILES[lab01]="lab01_rembudSQL.sql"
LAB_FILES[lab02]="lab02_computer_shop.sql"
LAB_FILES[lab03]="lab03_football_league.sql"
LAB_FILES[lab04]="lab04_employees.sql"
LAB_FILES[lab05]="lab05_cars.sql"
LAB_FILES[lab06]="lab06_cities.sql"
LAB_FILES[lab07]="lab07_university.sql"

SCRIPT_DIR="/docker-entrypoint-initdb.d/sql"

for db in "${!LAB_FILES[@]}"; do
  file="${LAB_FILES[$db]}"
  if [ -f "$SCRIPT_DIR/$file" ]; then
    echo ">>> Importowanie $file do bazy $db ..."
    psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$db" -f "$SCRIPT_DIR/$file"
  else
    echo ">>> UWAGA: Plik $file nie znaleziony, pomijam."
  fi
done

echo ">>> Import zakończony pomyślnie."

#!/bin/bash

FOLDER="$1"

if [ -z "$FOLDER" ]; then
  echo "Usage: $0 <folder> [--all | script.sql]"
  echo "  <folder>      - Folder containing SQL scripts"
  echo "  --all         - Run all SQL files in the folder (in alphabetical order)"
  echo "  script.sql    - Run a specific SQL file from the folder"
  exit 1
fi

shift

if [ "$1" == "--all" ]; then
  echo "Running all SQL files from $FOLDER..."
  for file in "$FOLDER"/*.sql; do
    if [ -f "$file" ]; then
      echo "Executing: $(basename "$file")"
      docker exec -i postgres_bdp psql -U postgres -d postgres < "$file"
      echo "---"
    fi
  done
  echo "All scripts executed."
elif [ $# -ge 1 ]; then
  file="$1"
  echo "Executing: $file"
  docker exec -i postgres_bdp psql -U postgres -d postgres < "$FOLDER/$file"
else
  echo "Usage: $0 <folder> [--all | script.sql]"
  echo "  <folder>      - Folder containing SQL scripts"
  echo "  --all         - Run all SQL files in the folder (in alphabetical order)"
  echo "  script.sql    - Run a specific SQL file from the folder"
  exit 1
fi
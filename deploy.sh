#!/bin/bash

# JazzLike GitHub Deploy Skript
# Führt alle nötigen Schritte aus, um Änderungen zu committen und zu pushen

# Prüfen, ob ein Git-Repo existiert
if [ ! -d .git ]; then
  echo "Initialisiere Git-Repository..."
  git init
  git branch -M main
  git remote add origin https://github.com/lisalockituda/jazzlike-site.git
fi

# Dateien hinzufügen
echo "Füge alle Dateien hinzu..."
git add .

# Commit mit automatischem Zeitstempel
echo "Commit wird erstellt..."
git commit -m "Update: $(date '+%Y-%m-%d %H:%M:%S')"

# Push zum GitHub-Repository
echo "Push zu GitHub..."
git push -u origin main

# Erfolgsmeldung
echo "✔️ Änderungen wurden erfolgreich auf GitHub übertragen."


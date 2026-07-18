# Klimaanlagen Rechner PWA

Diese Version ist für den einfachen GitHub-Upload vorbereitet.

Alle wichtigen Dateien liegen direkt im Hauptordner. Es muessen keine Unterordner hochgeladen werden.

## Hochladen

1. Auf GitHub im Repository auf `Add file` klicken.
2. `Upload files` auswaehlen.
3. Alle Dateien aus diesem Ordner markieren und hochladen.
4. Bestehende Dateien ersetzen lassen.
5. Auf `Commit changes` klicken.

## GitHub Pages aktivieren

1. Im Repository auf `Settings` klicken.
2. Links auf `Pages` klicken.
3. Bei `Build and deployment` als Source `Deploy from a branch` waehlen.
4. Branch `main` waehlen.
5. Folder `/ (root)` waehlen.
6. Auf `Save` klicken.

## Funktionen

- Auswahl Single-Split je Raum oder Multi-Split bei mehreren Raeumen
- Geraeteauswahl pro Raum
- Rohrlaenge bis maximal 60 m
- direkte PDF-Erstellung für das Richtangebot ohne Browser-Kopfzeile
- Datenbank-Button für Preise und Einstellwerte
- Passwortgeschuetzte Preisliste: Geraetepakete und Zusatzarbeiten hinzufuegen oder loeschen
- Standard-Passwort: `KLIMA2026`

## Wichtig

`index.html` muss direkt im Hauptverzeichnis liegen. Wenn GitHub Pages eine 404-Seite zeigt, ist meistens `index.html` im falschen Ordner oder Pages ist noch nicht auf `/ (root)` gestellt.

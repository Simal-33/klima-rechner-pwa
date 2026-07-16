# Klimaanlagen Rechner PWA

Kundenfreundliche Progressive Web App zur Richtpreis- und Kuehllast-Kalkulation fuer Klimaanlagen.

Die App ist komplett statisch und braucht kein Backend. Sie kann direkt ueber GitHub Pages veroeffentlicht werden.

## Funktionen

- Kundenformular fuer Raeume, Leitungslaenge, Kanal, Kernbohrung, Aussengeraet und Zusatzarbeiten
- Kuehllast-Richtwert je Raum mit Flaeche, Raumhoehe, Fensterflaeche, U-Wert, Sonnenseite, Daemmung, Personen und Dachgeschoss
- Richtpreis mit Netto, USt. und Brutto
- bearbeitbare Preisliste ueber `prices.json`
- PWA-Manifest, App-Icons und Offline-Cache
- optimiert fuer Smartphone, Tablet und Desktop

## Lokaler Test

Im Projektordner starten:

```powershell
python -m http.server 8787 --bind 127.0.0.1
```

Dann oeffnen:

```text
http://127.0.0.1:8787/index.html
```

Wichtig: PWA-Installation und Service Worker funktionieren nur ueber `localhost`, `127.0.0.1` oder HTTPS. Direktes Oeffnen ueber `file://` ist nur fuer eine schnelle Ansicht geeignet.

## GitHub Pages

1. Neues GitHub-Repository erstellen.
2. Alle Dateien aus diesem Ordner in das Repository hochladen oder per Git pushen.
3. In GitHub unter `Settings > Pages` als Quelle `GitHub Actions` auswaehlen.
4. Auf den Branch `main` pushen.
5. Die Action `Deploy PWA to GitHub Pages` veroeffentlicht die App automatisch.

Danach ist die App unter der GitHub-Pages-Adresse des Repositories erreichbar.

## Git push

Im Projektordner ausfuehren und `DEIN-BENUTZER` sowie `DEIN-REPO` ersetzen:

```powershell
git init
git branch -M main
git add .
git commit -m "Initiale Klima PWA"
git remote add origin https://github.com/DEIN-BENUTZER/DEIN-REPO.git
git push -u origin main
```

## Preise anpassen

Die Kalkulationswerte stehen in `prices.json`.

- `devicePackages`: Geraetepakete und Zuschlaege je Leistung/Raum
- `mounting`: Montage, Kernbohrung, Leitung, Kanal, Aussengeraet, Strom, Kondensatpumpe
- `risks`: Zusatzarbeiten und Risikofaktoren
- `taxRates`: Mehrwertsteuer fuer AT/DE
- `markupFactor`: pauschaler Kalkulationsaufschlag

Nach einer Aenderung an `prices.json` neu deployen oder neu laden. Bei installierter PWA die App einmal komplett schliessen und neu oeffnen.

## Projektstruktur

```text
.
+-- .github/workflows/pages.yml
+-- .nojekyll
+-- assets/logo.png
+-- icons/icon-192.png
+-- icons/icon-512.png
+-- index.html
+-- manifest.webmanifest
+-- prices.json
+-- service-worker.js
+-- start-klima-pwa.bat
+-- start-klima-pwa.ps1
```

## Hinweis

Die Berechnung ist ein Angebots- und Richtwert-Tool. Fuer ein verbindliches Angebot sollten die Werte nach Besichtigung, Herstellerdatenblatt, Montageort und Elektroanschluss geprueft werden.

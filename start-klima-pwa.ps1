$ErrorActionPreference = 'Stop'

$port = 8787
$appDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$url = "http://127.0.0.1:$port/index.html"

$pythonCandidates = @()
$bundledPython = 'C:\Users\marku\.cache\codex-runtimes\codex-primary-runtime\dependencies\python\python.exe'
if (Test-Path -LiteralPath $bundledPython) { $pythonCandidates += $bundledPython }

$pythonCmd = Get-Command python -ErrorAction SilentlyContinue
if ($pythonCmd) { $pythonCandidates += $pythonCmd.Source }

$pyCmd = Get-Command py -ErrorAction SilentlyContinue
if ($pyCmd) { $pythonCandidates += $pyCmd.Source }

if ($pythonCandidates.Count -eq 0) {
  Write-Host 'Python wurde nicht gefunden. Bitte Python installieren oder die App ueber einen lokalen Webserver starten.'
  Read-Host 'Enter druecken zum Beenden'
  exit 1
}

$python = $pythonCandidates[0]
$listener = Get-NetTCPConnection -LocalPort $port -State Listen -ErrorAction SilentlyContinue

if (-not $listener) {
  Start-Process -FilePath $python -ArgumentList @('-m', 'http.server', "$port", '--bind', '127.0.0.1') -WorkingDirectory $appDir -WindowStyle Hidden
  Start-Sleep -Milliseconds 900
}

Start-Process $url
Write-Host "Klima PWA gestartet: $url"

$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$dist = Join-Path $root "dist"

Write-Host "Building static bundle into $dist"

if (Test-Path $dist) {
  Remove-Item -Recurse -Force $dist
}

New-Item -ItemType Directory -Path $dist | Out-Null
New-Item -ItemType Directory -Path (Join-Path $dist "css") | Out-Null
New-Item -ItemType Directory -Path (Join-Path $dist "js") | Out-Null

Copy-Item (Join-Path $root "index.html") (Join-Path $dist "index.html") -Force
Copy-Item (Join-Path $root "css\style.css") (Join-Path $dist "css\style.css") -Force
Copy-Item (Join-Path $root "js\erc.js") (Join-Path $dist "js\erc.js") -Force

Write-Host "Done. Upload the contents of the dist\ folder."


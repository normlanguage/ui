param([string]$Output = 'build/repository')
$ErrorActionPreference = 'Stop'
$root = Split-Path $PSScriptRoot -Parent
New-Item -ItemType Directory -Force (Join-Path $root 'ui/resources/META-INF/licenses/ui') | Out-Null
Copy-Item -LiteralPath (Join-Path $root 'LICENSE') -Destination (Join-Path $root 'ui/resources/META-INF/licenses/ui/LICENSE')
$executable = if ($env:NORM_EXECUTABLE) { $env:NORM_EXECUTABLE } else { 'norm' }
& $executable package (Join-Path $root 'ui') --output $Output
if ($LASTEXITCODE -ne 0) { throw 'Module packaging failed' }

param(
    [string]$CodexHome = $(
        if ($env:CODEX_HOME) {
            $env:CODEX_HOME
        } else {
            Join-Path $env:USERPROFILE '.codex'
        }
    )
)

$ErrorActionPreference = 'Stop'

$packageRoot = Join-Path $PSScriptRoot '..\pet'
$targetDir = Join-Path $CodexHome 'pets\rin-cyber-idol'

New-Item -ItemType Directory -Force -Path $targetDir | Out-Null
Copy-Item -LiteralPath (Join-Path $packageRoot 'pet.json') -Destination $targetDir -Force
Copy-Item -LiteralPath (Join-Path $packageRoot 'spritesheet.webp') -Destination $targetDir -Force

Write-Host "Installed 氷色りん to $targetDir"

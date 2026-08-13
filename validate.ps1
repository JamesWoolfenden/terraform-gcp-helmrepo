#!/usr/bin/env pwsh
$ErrorActionPreference ="Stop"
tofu fmt --recursive
Push-Location
Set-Location example/examplea
Remove-Item .terraform -Recurse -ErrorAction SilentlyContinue
tofu init -upgrade
tofu validate
make valid
Pop-Location

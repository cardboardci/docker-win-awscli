New-Item -Path "$HOME\.docker" -Type Directory -Force
Move-Item -Destination "$HOME\.docker\config.json" -Path "$PSScriptRoot/config.json"

Set-Content -Path "C:\ProgramData\Docker\config\daemon.json" -Value ( @{ "experimental" = $true } | ConvertTo-Json )
Get-Content -Path "C:\ProgramData\Docker\config\daemon.json"

restart-service *docker*
Start-Sleep -Seconds 5
docker version
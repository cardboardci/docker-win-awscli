New-Item -Path "$HOME\.docker" -Type Directory -Force
Set-Content -Path "C:\ProgramData\Docker\config\daemon.json" -Value ( @{ "experimental" = $true } | ConvertTo-Json )
Move-Item -Destination "$HOME\.docker\config.json" -Path "build/cli.json"
Get-Content -Path "C:\ProgramData\Docker\config\daemon.json"
Get-Content -Path "$HOME\.docker\config.json"
docker version
restart-service *docker*
Start-Sleep -Seconds 5
docker version
docker manifest --help 
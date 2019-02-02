New-Item -Path "$HOME\.docker" -Type Directory -Force
Set-Content -Path "C:\ProgramData\Docker\config\daemon.json" -Value ( @{ "experimental" = $true } | ConvertTo-Json )
Set-Content -Path "$HOME\.docker\config.json" -Value ( @{ "experimental" = "enabled" } | ConvertTo-Json )
docker version
restart-service *docker*
Start-Sleep -Seconds 5
docker version
docker manifest --help 
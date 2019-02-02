New-Item -Path "$HOME\.docker" -Type Directory -Force
Set-Content -Path "C:\ProgramData\Docker\config\daemon.json" -Value ( @{ "experimental" = $true } | ConvertTo-Json )

$cli = @{
  "HttpHeaders": @{
    "User-Agent": "Docker-Client/18.04.0-ce (linux)"
  },
  "experimental": "enabled"
}

Set-Content -Path "$HOME\.docker\config.json" -Value ( $cli | ConvertTo-Json )
Get-Content -Path "C:\ProgramData\Docker\config\daemon.json"
Get-Content -Path "$HOME\.docker\config.json"
docker version
restart-service *docker*
Start-Sleep -Seconds 5
docker version
docker manifest --help 
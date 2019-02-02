Write-Host "Starting build"
Set-Content -Path "C:\ProgramData\Docker\config\daemon.json" -Value ( @{ "experimental" = $true } | ConvertTo-Json )
Get-Content -Path "$HOME/.docker/config.json"

$cli = Get-Content -Path "$HOME/.docker/config.json" | ConvertFrom-Json
$cli["experimental"] = $true

Set-Content -Path "$HOME/.docker/config.json" -Value ( $cli | ConvertTo-Json )

docker version
restart-service *docker*
Start-Sleep -Seconds 5
docker version
docker manifest --help 

# docker login -u "$env:CI_REGISTRY_USER" -p "$env:CI_REGISTRY_PASSWORD" $env:CI_REGISTRY
# docker build --pull -t $image -f Dockerfile .
# docker images

# Write-Host Starting deploy
# docker push "$image"

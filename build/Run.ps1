Write-Host "Starting build"
New-Item -Path "$HOME\.docker" -Type Directory -Force
Set-Content -Path "C:\ProgramData\Docker\config\daemon.json" -Value ( @{ "experimental" = $true } | ConvertTo-Json )
Set-Content -Path "$HOME\.docker\config.json" -Value ( @{ "experimental" = "true" } | ConvertTo-Json )

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

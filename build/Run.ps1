Write-Host "Starting build"
Set-Content -Path "C:\ProgramData\Docker\config\daemon.json" -Value ( @{ "experimental" = $true } | ConvertTo-Json )
docker images
docker manifest --help 

# docker login -u "$env:CI_REGISTRY_USER" -p "$env:CI_REGISTRY_PASSWORD" $env:CI_REGISTRY
# docker build --pull -t $image -f Dockerfile .
# docker images

# Write-Host Starting deploy
# docker push "$image"


New-Item -Path "$HOME\.docker" -Type Directory -Force
Set-Content -Path "C:\ProgramData\Docker\config\daemon.json" -Value ( @{ "experimental" = $true } | ConvertTo-Json )
Set-Content -Path "$HOME\.docker\config.json" -Value ( @{ "experimental" = "enabled" } | ConvertTo-Json )
restart-service *docker*
Start-Sleep -Seconds 5

docker version

Write-Host "Starting build"
# docker build --pull -t cardboardci/awscli:windows -f Dockerfile .
# docker push cardboardci/awscli:windows
docker manifest create 
    cardboardci/awscli:edge 
    cardboardci/awscli:linux 
    cardboardci/awscli:windows
docker manifest push cardboardci/awscli:latest 


# docker build --pull -t $image -f Dockerfile .
# docker images

# Write-Host Starting deploy

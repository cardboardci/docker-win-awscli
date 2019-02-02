Function Enable-DockerExperimental() {
  New-Item -Path "$HOME\.docker" -Type Directory -Force
  Set-Content -Path "C:\ProgramData\Docker\config\daemon.json" -Value ( @{ "experimental" = $true } | ConvertTo-Json )
  Set-Content -Path "$HOME\.docker\config.json" -Value ( @{ "experimental" = "enabled" } | ConvertTo-Json )
  restart-service *docker*
  Start-Sleep -Seconds 5
}

Enable-DockerExperimental

Write-Host "Starting build"
docker manifest inspect cardboardci/awscli:edge
# docker manifest create 
#     cardboardci/awscli:latest 
#     cardboardci/awscli:linux 
#     cardboardci/awscli:windows

# docker manifest push cardboardci/awscli:latest 

# docker login -u "$env:CI_REGISTRY_USER" -p "$env:CI_REGISTRY_PASSWORD" $env:CI_REGISTRY
# docker build --pull -t $image -f Dockerfile .
# docker images

# Write-Host Starting deploy
# docker push "$image"

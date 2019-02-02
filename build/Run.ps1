Write-Host "Starting build"

try {
  Get-ChildItem "C:\"
  Get-ChildItem "C:\ProgramData\"
  Get-ChildItem "C:\ProgramData\Docker\"
  Get-ChildItem "C:\ProgramData\Docker\config"
  Get-Content "C:\ProgramData\Docker\config\daemon.json"
} catch {
  Write-Host "Could not find the file"
}

docker images
docker manifest --help 

# docker login -u "$env:CI_REGISTRY_USER" -p "$env:CI_REGISTRY_PASSWORD" $env:CI_REGISTRY
# docker build --pull -t $image -f Dockerfile .
# docker images

# Write-Host Starting deploy
# docker push "$image"

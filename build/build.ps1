#$ErrorActionPreference = 'Stop';
Write-Host Starting build
$image = "quay.io/cardboardci/awscli:windows"

if (! (Test-Path Env:\CI_REGISTRY)) {
  Write-Host "No registry provided. Skip publishing."
  exit 0
}

if (! (Test-Path Env:\CI_REGISTRY_USER)) {
  Write-Host "No registry user provided. Skip publishing."
  exit 0
}

if (! (Test-Path Env:\CI_REGISTRY_PASSWORD)) {
  Write-Host "No password provided. Skip publishing."
  exit 0
}

docker login -u "$env:CI_REGISTRY_USER" -p "$env:CI_REGISTRY_PASSWORD" $env:CI_REGISTRY

# docker build --pull -t $image -f Dockerfile .
# docker images

# Write-Host Starting deploy
# docker push "$image"

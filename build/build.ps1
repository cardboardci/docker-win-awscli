$ErrorActionPreference = 'Stop';
Write-Host Starting build
$image = "cardboardci/awscli:windows"

docker build --pull -t $image -f Dockerfile .
docker images

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

docker login -u "$CI_REGISTRY_USER" -p "$CI_REGISTRY_PASSWORD" $CI_REGISTRY

Write-Host Starting deploy
docker push "$image"

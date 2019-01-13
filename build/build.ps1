$ErrorActionPreference = 'Stop';
Write-Host Starting build

if ($isWindows) {
  docker build --pull -t whoami -f Dockerfile .
} else {
  docker build -t whoami .
}

docker images
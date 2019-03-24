Write-Output "Starting build"
docker build -t cardboardci/awscli:windows -f Dockerfile .
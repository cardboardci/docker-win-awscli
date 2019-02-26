Write-Output "Starting build"
docker build --pull -t cardboardci/awscli:windows -f Dockerfile .
docker push cardboardci/awscli:windows
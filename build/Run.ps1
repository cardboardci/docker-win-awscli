Write-Output "Starting build"
# docker build --pull -t cardboardci/awscli:windows -f Dockerfile .
# docker push cardboardci/awscli:windows
docker manifest create
    cardboardci/awscli:edge
    cardboardci/awscli:linux
    cardboardci/awscli:windows
docker manifest push cardboardci/awscli:latest
# docker build --pull -t $image -f Dockerfile .
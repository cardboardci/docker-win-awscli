$image = "cardboardci/awscli:windows"
Write-Output "Starting deploy of $image"
docker push "$image"

$container_list = docker container ls -aq

if ($container_list -eq "") {
    Write-Host "No Containers to remove"
}
else {
    docker container stop $(docker container ls -aq)
    docker container rm $(docker container ls -aq)
}

# Run as a docker container

```
docker image build  -f ./docker/Dockerfile  --tag fbndc-nginx:1.0-SNAPSHOT .
```

Then 

```
#See https://github.com/qoomon/docker-host

docker run --name 'dockerhost' \
  --cap-add=NET_ADMIN --cap-add=NET_RAW \
  --restart on-failure \
  -d qoomon/docker-host
docker run --rm  --name fbndc_nginx_container --link 'dockerhost' -p 80:80  fbndc-nginx:1.0-SNAPSHOT
```
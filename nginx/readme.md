# Run as a docker container

```
docker image build  -f ./docker/Dockerfile  --tag fbndc-nginx:1.0-SNAPSHOT .
```

Then 

```
docker run --rm  --name fbndc_nginx_container --network="host" fbndc-nginx:1.0-SNAPSHOT
```
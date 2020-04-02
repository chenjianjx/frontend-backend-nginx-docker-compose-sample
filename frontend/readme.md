# Run as a docker container

```
docker image build  -f ./docker/Dockerfile  --tag fbndc-frontend:1.0-SNAPSHOT .
```

Then 

```
docker run --rm  --name fbndc_frontend_container -p 3000:3000  fbndc-frontend:1.0-SNAPSHOT
```
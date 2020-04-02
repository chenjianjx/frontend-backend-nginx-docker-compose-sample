# Run as a docker container

```
docker image build --tag fbndc-backend:1.0-SNAPSHOT .
```

Then 

```
docker run --rm  --name fbndc_backend_container -p 8080:8080  fbndc-backend:1.0-SNAPSHOT
```
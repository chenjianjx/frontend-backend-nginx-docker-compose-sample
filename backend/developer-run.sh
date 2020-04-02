#!/usr/bin/env bash

mvn clean install -DskipTests
docker image build   -f ./docker/developer.Dockerfile  --tag fbndc-backend-developer:1.0-SNAPSHOT .
docker run --rm  --name fbndc_backend_developer_container -p 8080:8080  fbndc-backend-developer:1.0-SNAPSHOT
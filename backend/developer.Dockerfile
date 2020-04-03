FROM maven:3.6-jdk-8-alpine

WORKDIR /usr/code/backend
ENTRYPOINT ["mvn", "spring-boot:run", "-Dagentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=8000"]
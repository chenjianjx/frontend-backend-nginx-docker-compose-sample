FROM maven:3.6-jdk-8-alpine

COPY target/fbndc-backend-0.0.1-SNAPSHOT.jar /usr/app/
WORKDIR /usr/app

EXPOSE 8080

CMD ["java", "-jar", "fbndc-backend-0.0.1-SNAPSHOT.jar"]
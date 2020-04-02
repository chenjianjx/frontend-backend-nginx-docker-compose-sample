FROM tomcat:8.5.53-jdk8-openjdk

RUN apt-get update -y && apt-get install maven -y


COPY src /usr/app/src
COPY pom.xml /usr/app

WORKDIR /usr/app
RUN mvn clean install -DskipTests
COPY target/fbndc-backend-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

ENTRYPOINT ["catalina.sh", "run"]
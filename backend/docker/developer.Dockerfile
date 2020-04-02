FROM tomcat:8.5.53-jdk8-openjdk
COPY target/fbndc-backend-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

ENV JPDA_ADDRESS="8000"
ENV JPDA_TRANSPORT="dt_socket"

EXPOSE 8080 8000
ENTRYPOINT ["catalina.sh", "jpda", "run"]
FROM openjdk:8-jdk-alpine
ARG version
COPY target/petclinic-${version}.war app.war
EXPOSE 8080
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.war"]

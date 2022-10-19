FROM openjdk:11-alpine
VOLUME /tmp
WORKDIR /src/api
COPY target/*.jar api.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-Dspring.profiles.active=prd","-XX:+UseSerialGC","-XX:+TieredCompilation","-XX:TieredStopAtLevel=1","-jar","api.jar"]
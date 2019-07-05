FROM openjdk:8-jdk-alpine

# Add Maintainer Info
LABEL maintainer="p.reclaw@apsystems.tech"

COPY /target/eureka-ms-0.0.1-SNAPSHOT.jar eureka-ms.jar

# Make port 8080 available to the world outside this container
EXPOSE 7010

# Run the jar file
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/eureka-ms.jar"]
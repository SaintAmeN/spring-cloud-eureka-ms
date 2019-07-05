FROM openjdk:8-jdk-alpine

# Add Maintainer Info
LABEL maintainer="p.reclaw@apsystems.tech"

# Make port 8080 available to the world outside this container
EXPOSE 8011

# Run the jar file
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/eureka-ms.jar"]
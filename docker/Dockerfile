FROM openjdk:8-jdk-alpine

# Add Maintainer Info
LABEL maintainer="p.reclaw@apsystems.tech"

# Add a volume pointing to /tmp
VOLUME /tmp

# Make port 8080 available to the world outside this container
EXPOSE 18010

#COPY target/apss-eureka-ms-0.0.1-SNAPSHOT.jar .

# The application's jar file
ARG JAR_FILE=target/apss-eureka-ms-0.0.1-SNAPSHOT.jar

# Add the application's jar to the container
ADD ${JAR_FILE} apss-eureka-ms.jar

# Run the jar file 
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/apss-eureka-ms.jar"]

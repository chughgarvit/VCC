# Base image
FROM openjdk:8-jdk-alpine

# Maintainer Info
LABEL maintainer="Garvit Chugh"

# Adding a volume
VOLUME /tmp

# Exposing the port
EXPOSE 8080

# The application's jar file
ARG JAR_FILE=target/scala-**/vcc_project_2.12-0.1.jar

# Add jar to the container
ADD ${JAR_FILE} vccProject.jar 

# Run the jar file
ENTRYPOINT ["java","-jar","/vccProject.jar"]

# Use a base image with Java installed
FROM openjdk:17-jdk-alpine

# Set the working directory
WORKDIR /app

# Copy the JAR file from the target directory to the container
COPY target/bff-0.0.1-SNAPSHOT.jar /app/spring-boot-application.jar

# Expose the port the application runs on
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "spring-boot-application.jar"]

# Use an official OpenJDK runtime as the base image
FROM openjdk:17-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file from the local machine to the container
COPY target/*.jar app.jar

# Copy the wait-for-it.sh script to the container
COPY wait-for-it.sh /wait-for-it.sh

# Make the wait-for-it.sh script executable
RUN chmod +x /wait-for-it.sh

# Expose the application port
EXPOSE 8080

# Run the wait-for-it.sh script before starting the JAR file
ENTRYPOINT ["/wait-for-it.sh", "db:5432", "--", "java", "-jar", "app.jar"]

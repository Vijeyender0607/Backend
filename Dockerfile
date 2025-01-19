# Build stage
FROM maven:3.8.4-openjdk-17 AS build
WORKDIR /app
RUN ls /app
COPY . .
RUN mvn clean package -DskipTests
RUN ls /app/target

# Package stage
FROM openjdk:17-jdk-slim
WORKDIR /app
COPY --from=build /app/target/*.jar /app/application.jar
ENTRYPOINT ["java","-jar","/app/application.jar"]

FROM openjdk:17

EXPOSE 8082

ARG JAR_FILE=target/bff-0.0.1-SNAPSHOT.jar

COPY ${JAR_FILE} spring-app.jar

ENTRYPOINT ["java","-jar","/spring-app.jar"]


FROM openjdk:21-jdk-slim

EXPOSE 8080

ARG JAR_FILE=./build/libs/deathpoint-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} /app/java-rest/app.jar
ENTRYPOINT ["java", "-jar", "/app/java-rest/app.jar"]

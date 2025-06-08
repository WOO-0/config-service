FROM eclipse-temurin:17 AS builder
WORKDIR /app
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} config-service.jar
ENTRYPOINT ["java", "-jar", "config-service.jar"]
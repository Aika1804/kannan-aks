FROM eclipse-temurin:21-jdk-jammy AS builder
WORKDIR /app
COPY mvnw .
COPY .mvn .mvn
COPY pom.xml .
RUN ./mvnw dependency:go-offline -B
COPY src src
RUN ./mvnw package -DskipTests




FROM openjdk:26-ea-slim

WORKDIR /app

COPY --from=builder /app/target/*.jar spring-boot-docker.jar

EXPOSE 8080

CMD [ "java", "-jar", "/spring-boot-docker.jar" ]
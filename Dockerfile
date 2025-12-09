FROM openjdk:26-ea-slim

RUN mkdir /app

WORKDIR /app

ADD target/spring-boot-docker.jar /app/spring-boot-docker.jar

EXPOSE 8080

CMD [ "java", "-jar", "/app/spring-boot-docker.jar" ]
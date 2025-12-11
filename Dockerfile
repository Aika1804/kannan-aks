FROM openjdk:26-ea-slim

RUN mkdir /app

WORKDIR /app

COPY ./target/.*jar spring-boot-docker.jar

COPY ./src/main/resources /app/

COPY . . 

EXPOSE 8080

CMD [ "java", "-jar", "/spring-boot-docker.jar" ]
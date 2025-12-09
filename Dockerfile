FROM openjdk:26-ea-slim

ADD target/spring-boot-docker.jar spring-boot-docker.jar

EXPOSE 8080

CMD [ "java", "-jar", "/spring-boot-docker.jar" ]
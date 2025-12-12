FROM mcr.microsoft.com/openjdk/jdk:21-ubuntu
EXPOSE 8080
ADD ./target/spring-boot-docker.jar spring-boot-docker.jar
ENTRYPOINT ["java","-jar","/spring-boot-docker.jar"]
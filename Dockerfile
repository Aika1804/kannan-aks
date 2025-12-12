FROM mcr.microsoft.com/openjdk/jdk:21-ubuntu
EXPOSE 8080
ADD target/spring-boot-docker spring-boot-docker
ENTRYPOINT ["java","-jar","/spring-boot-docker"]
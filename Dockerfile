# FROM bellsoft/liberica-openjdk-alpine:17
FROM cepgbaseacr.azurecr.io/docker.io/openjdk:19-slim

VOLUME /tmp

ARG JAR_FILE=target/*.jar

COPY ${JAR_FILE} sampleapp1-82022072.jar

EXPOSE 8080

ENTRYPOINT ["java","-jar","/sampleapp1-82022072.jar"]
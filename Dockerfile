# syntax=docker/dockerfile:1

FROM openjdk:17-alpine3.13

WORKDIR /alictus

COPY .mvn/ .mvn
COPY mvnw pom.xml ./

RUN ./mvnw dependency:go-offline

COPY src ./src

CMD ["./mvnw","spring-boot:run"]
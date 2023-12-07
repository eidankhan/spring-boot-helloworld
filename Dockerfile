# syntax=docker/dockerfile:1

FROM eclipse-temurin:17-jdk-jammy

EXPOSE 8029

WORKDIR /app

COPY .mvn/ .mvn
COPY mvnw pom.xml ./
# gRUN ./mvnw dependency:resolve

COPY src ./src

CMD ["./mvnw", "spring-boot:run"]
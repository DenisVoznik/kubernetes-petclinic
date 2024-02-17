FROM eclipse-temurin:17-jdk-jammy AS build
ENV HOME=/usr/app
RUN mkdir -p $HOME
WORKDIR $HOME
ADD . $HOME
RUN --mount=type=cache,target=/root/.m2 ./mvnw -f $HOME/pom.xml clean package

FROM openjdk:19-jdk-alpine3.16
ARG JAR_FILE=/usr/app/target/*.jar
COPY --from=build $JAR_FILE /app/petclinic.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app/petclinic.jar"]

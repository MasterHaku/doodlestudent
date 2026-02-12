FROM eclipse-temurin:17-jdk

WORKDIR /app

COPY pom.xml .
COPY mvnw .
COPY .mvn .mvn

COPY src src
RUN ./mvnw package -DskipTests

EXPOSE 8080

CMD ["java", "-jar", "target/quarkus-app/quarkus-run.jar"]
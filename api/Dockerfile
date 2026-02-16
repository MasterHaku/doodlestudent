FROM eclipse-temurin:17-jdk

# Set the working directory inside the container 
WORKDIR /app

# Copy the Maven Configuration
COPY pom.xml .
COPY mvnw .
COPY .mvn .mvn

# Install dos2union and make mvnw executable 
RUN apt-get update && apt-get install -y dos2unix && dos2unix mvnw && chmod +x mvnw

# Copy the source code
COPY src src

# Install the app via maven
RUN ./mvnw package -DskipTests

EXPOSE 8080

# Start the application with Quarkus
CMD ["java", "-jar", "target/quarkus-app/quarkus-run.jar"]
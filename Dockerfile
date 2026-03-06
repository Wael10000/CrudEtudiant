FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y openjdk-17-jdk && \
    apt-get clean

WORKDIR /app

# Copy the runnable Spring Boot JAR
COPY target/crudEtudiant-0.0.1-SNAPSHOT.jar app.jar

# Run the Spring Boot app
ENTRYPOINT ["java", "-jar", "app.jar"]


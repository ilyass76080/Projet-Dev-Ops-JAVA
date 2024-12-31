FROM openjdk:21-jdk-slim

WORKDIR /app

# Check if the target JAR exists before copying
COPY target/airline-reservation.jar app.jar

EXPOSE 8080

CMD ["java", "-jar", "app.jar"]

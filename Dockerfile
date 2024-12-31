FROM openjdk:21-jdk-slim


WORKDIR /app

COPY target/airline-reservation.jar app.jar

EXPOSE 8080

CMD ["java", "-jar", "app.jar"]
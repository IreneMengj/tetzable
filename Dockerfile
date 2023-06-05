FROM openjdk:17-jdk-slim

COPY target/api.jar /api.jar

EXPOSE 8080

CMD ["java", "-jar", "/api.jar"]
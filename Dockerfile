# Dockerfile approach when moving to production, now we are using direct image
FROM eclipse-temurin:21-jdk
WORKDIR /app
COPY target/api-gateway-*.jar api-gateway.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "api-gateway.jar"]
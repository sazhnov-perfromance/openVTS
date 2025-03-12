# Use OpenJDK as base image
FROM openjdk:21-jdk-slim

# Set working directory
WORKDIR /app

# Copy built application JAR
COPY target/*.jar app.jar

# Expose the application port
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]

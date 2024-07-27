# Use an up-to-date base image with JRE
FROM openjdk:8-jre-slim

# Set a working directory for the application
WORKDIR /app

# Copy the JAR file into the container
ADD target/positionsimulator-0.0.1-SNAPSHOT.jar webapp.jar

# Optionally expose the port that your application uses
# EXPOSE 8080

# Run the JAR file
CMD ["java", "-jar", "webapp.jar"]

# Metadata as described above
LABEL maintainer="your.email@example.com"

# Stage 1: Build the application
FROM maven:3.8.4-openjdk-17 AS build

# Set the working directory
WORKDIR /app

# Copy the pom.xml file and source code into the container
COPY pom.xml .
COPY src ./src

# Build the application
RUN mvn clean package

# Stage 2: Create the runtime image
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the jar file from the build stage
COPY --from=build /app/target/IT-Landscape-1.0-SNAPSHOT.jar IT-Landscape.jar

# Command to run the application
ENTRYPOINT ["java", "-jar", "IT-Landscape.jar"]

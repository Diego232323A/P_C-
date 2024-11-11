# C# Project

This project is a simple C# console application, demonstrating the basics of Docker containerization for a C# .NET project. The project consists of a small "Hello World" program to test Docker builds, tagging, and pushing to Docker Hub.

## Requirements

- **Docker**: Ensure Docker is installed and running on your system.
- **.NET SDK**: Not required for Docker use, but having it locally can be useful for development.

## Project Structure

- `hello.cs`: The main program file containing a "Hello World" application in C#.
- `Dockerfile`: Docker configuration file to build and run the C# project in a container.


## Usage

Follow these steps to build, tag, and push the Docker image to Docker Hub.

### Step 1: Build the Docker Image

    docker build -t csharp_project .

### Step 2: Tag the Docker Image
Replace <dockerhub_username> with your actual Docker Hub username.

    docker tag csharp_project <dockerhub_username>/csharp_project:latest

### Step 3: Push the Docker Image
Push the tagged image to Docker Hub:

    docker push <dockerhub_username>/csharp_project:latest

## Running the Docker Container
To run the Docker container locally, use:

    docker run csharp_project

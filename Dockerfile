FROM nginx:latest
# This command sets the base image for the container.
# It tells Docker to use the latest version of Nginx from Docker Hub as the starting point.
# Nginx is a web server, often used as a reverse proxy or load balancer.

WORKDIR /app
# This sets the working directory inside the container to /app.
# Any subsequent commands (such as COPY or RUN) will be executed relative to this directory.
# If /app doesn’t exist, it will be created automatically.

EXPOSE 80
# This declares that the container will listen on port 80 (default HTTP port).
# It does not actually publish the port but acts as metadata for tools like Docker Compose or Kubernetes.
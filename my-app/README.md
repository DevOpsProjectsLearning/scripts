# Exercise 1: Run a NGINX server in a Docker container on local. It needs to run in background and use localhost:8080 to open it

## 1. Create a Docker file that installs NGINX, set the working directory to /app and expose the port to 80
### FROM nginx:latest
- This command sets the base image for the container
- It tells Docker to use the latest version of Nginx from Docker Hub as the starting point
- Nginx is a web server, often used as a reverse proxy or load balancer

### WORKDIR /app
- This sets the working directory inside the container to /app
- Any subsequent commands (such as COPY or RUN) will be executed relative to this directory
- If /app doesn’t exist, it will be created automatically

### EXPOSE 80
- This declares that the container will listen on port 80 (default HTTP port)
- It does not actually publish the port but acts as metadata for tools like Docker Compose or Kubernetes

## 2. Build the Docker image
### docker build -t myapp . 
- docker build - This tells Docker to build a new image
- -t myapp - The -t flag assigns a tag (name) to the image. Here, the image is named myapp. If you don't specify a tag, Docker will use latest by default (e.g., myapp:latest)
- . (dot) - This specifies the build context, meaning Docker will look for a Dockerfile in the current directory (.). The build context includes all files in the directory unless a .dockerignore file excludes them

## 3. Start a new container from the image
### docker run -d -p 8080:80 --name my-nginx myapp
- docker run - This starts a new container from an image
- -d (detached mode) - Runs the container in the background, so it doesn’t block the terminal
- -p 8080:80 (port mapping) - Maps port 80 inside the container to port 8080 on your local machine. This allows you to access the Nginx server at http://localhost:8080
- --name my-nginx - Assigns the container a custom name (my-nginx). Without this flag, Docker assigns a random name
- myapp - This is the name of the image to use. It must match the image name created with docker build -t myapp .
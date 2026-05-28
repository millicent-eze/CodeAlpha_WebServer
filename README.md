# CodeAlpha Web Server using Docker

## Objective
Deploy a simple web server using Docker containerization.

## Tools Used
- Docker
- Nginx
- HTML
- GitHub

## Steps Performed
1. Created a simple HTML page
2. Created Dockerfile
3. Built Docker image
4. Ran Docker container
5. Exposed application on localhost

## Commands Used

### Build Image
docker build -t codealpha-webserver .

### Run Container
docker run -d -p 8080:80 codealpha-webserver

## Output
Application successfully running on:
http://localhost:8080

## What I Learned
- Docker image creation
- Container lifecycle
- Port mapping
- Web server deployment using Docker
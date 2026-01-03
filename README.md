# Coworking Analytics Microservice

## Project Overview
The Coworking Space Service is a set of APIs that enables users to request one-time tokens and allows administrators to authorize access to a coworking space.  
This service follows a microservice architecture, with APIs split into independent services that can be deployed and managed separately.  

For this project, you act as a DevOps engineer supporting a team building an API for business analysts. The API provides analytics on user activity in the coworking space. Your role is to create a CI/CD pipeline and deploy the application to Kubernetes.
## Infrastructure
- **Database:** PostgreSQL.  
- **Containerization:** Docker is used to package the Python application.  
- **Orchestration:** Kubernetes manages deployments, services. 
- **Image Registry:** Amazon ECR
- **CI/CD:** AWS CodeBuild & GitHub Integration
- **Configuration:** ConfigMaps store non-sensitive environment variables, and Secrets store sensitive data like database passwords.

## CI/CD Pipeline
AWS CodeBuild automates continuous integration and delivery. The `buildspec.yaml` file defines the build pipeline to:  
1. Log in to Amazon ECR.  
2. Build and tag Docker images.  
3. Push images to the ECR repository.  

The pipeline triggers automatically when updates are pushed to the GitHub repository. CloudWatch Container Insights monitors application logs and metrics.

## Developer Notes
To release a new version:  
1. Push code changes to GitHub.  
2. CodeBuild builds and pushes the updated Docker image to ECR.  

Ensure IAM roles allow access to ECR and CloudWatch logs.


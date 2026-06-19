# ReactJS Ecommerce Deployment

ReactJS Ecommerce Deployment Project
Project Overview

This project demonstrates a complete DevOps CI/CD pipeline for deploying a production-ready ReactJS Ecommerce application on AWS.

The application was containerized using Docker, automated through Jenkins CI/CD pipelines, version-controlled with GitHub, stored in DockerHub repositories, deployed on an AWS EC2 instance, and monitored using Uptime Kuma.

The objective was to build a production-like deployment workflow following DevOps best practices.

Technology Stack
ReactJS
Docker
Docker Compose
Bash Scripting
Git & GitHub
Jenkins
DockerHub
AWS EC2
Uptime Kuma Monitoring
Project Architecture
GitHub (Dev Branch)
        │
        ▼
     Jenkins
        │
        ▼
 Build Docker Image
        │
        ▼
 Push to DockerHub Dev Repository
        │
        ▼
 Merge Dev → Master
        │
        ▼
 Jenkins Production Pipeline
        │
        ▼
 Push to DockerHub Prod Repository
        │
        ▼
 AWS EC2 Deployment
        │
        ▼
 Uptime Kuma Monitoring
        │
        ▼
 Email Notifications
Application Repository

Original Repository:

https://github.com/sriram-R-krishnan/devops-build

Project Repository:

https://github.com/JoyceJasmine-24/Reactjs-ecommerce-deployment
Docker Implementation
Dockerfile

A Dockerfile was created to containerize the ReactJS application.

Functions:

Uses Node.js base image
Installs dependencies
Builds React application
Exposes application through HTTP
Creates production-ready container image
Docker Compose

A docker-compose.yml file was created to simplify container deployment and management.

Functions:

Container creation
Port mapping
Image deployment
Service management
Bash Scripts
build.sh

Purpose:

Build Docker image
Tag Docker image
Prepare image for DockerHub push
deploy.sh

Purpose:

Pull latest Docker image
Stop existing container
Deploy updated container
Run application on EC2
Version Control

Git was used for source code management.

Branches used:

Dev Branch

Purpose:

Development and testing environment

Actions:

Build Docker Image
Push image to DockerHub Dev Repository
Master Branch

Purpose:

Production environment

Actions:

Push production image to DockerHub Prod Repository
Deploy production application
DockerHub Repositories
Development Repository

Repository:

joycejasmine24-dev

Visibility:

Public
Production Repository

Repository:

joycejasmine24-prod

Visibility:

Private
Jenkins CI/CD Pipeline

Jenkins was installed and configured on AWS EC2.

Pipeline stages:

Checkout

Pull source code from GitHub.

Build Docker Image

Create Docker image from source code.

Docker Login

Authenticate with DockerHub.

Push Docker Image

Push image to DockerHub repository.

Post Actions

Display build results and status.

GitHub Webhook Integration

GitHub webhooks were configured to automatically trigger Jenkins builds.

Dev Branch Trigger

When code is pushed to:

dev

Jenkins automatically:

Builds Docker Image
Pushes image to DockerHub Dev Repository
Master Branch Trigger

When code is merged into:

master

Jenkins automatically:

Builds Production Image
Pushes image to DockerHub Prod Repository
AWS Deployment

AWS EC2 Instance Type:

t2.micro

Operating System:

Ubuntu 24.04 LTS
Security Group Configuration
Public Access

Application Ports:

80
443
8080
8081
3001

Source:

0.0.0.0/0
SSH Access

Port:

22

Source:

My Public IP Only

This ensures secure administrative access to the EC2 instance.

Application Deployment

Application successfully deployed on AWS EC2.

Application URL:

http://13.207.57.27

Application runs on:

Port 80 (HTTP)
Monitoring

Monitoring solution used:

Uptime Kuma

Purpose:

Health monitoring
Availability monitoring
Response time tracking
Downtime detection
Email Notification Configuration

Email notifications were configured using Gmail SMTP.

Notifications are automatically sent when:

Application becomes unavailable

This helps ensure quick incident response.

Project Deliverables

Completed Deliverables:

Dockerfile
Docker Compose File
build.sh Script
deploy.sh Script
GitHub Repository
Jenkins CI/CD Pipeline
DockerHub Dev Repository
DockerHub Prod Repository
AWS EC2 Deployment
Uptime Kuma Monitoring
Email Alert Configuration
Project Documentation
Deployment Screenshots
Screenshots

Project screenshots are available inside:

Screenshot/

The screenshots include:

Docker Build Process
DockerHub Push
Jenkins Configuration
Jenkins Pipeline Execution
AWS EC2 Configuration
Security Group Rules
Application Deployment
GitHub Webhook Setup
Uptime Kuma Monitoring
Email Notification Testing
Challenges Faced
Docker container port mapping issues during deployment.
Jenkins Docker permission issues while executing Docker commands.
DockerHub authentication failures due to credential configuration.
GitHub webhook configuration and automatic build trigger troubleshooting.
EC2 security group configuration for application accessibility.
Monitoring setup and notification integration.
Conclusion

Successfully implemented a complete end-to-end DevOps deployment pipeline for a ReactJS Ecommerce application.

The project demonstrates Infrastructure Management, Containerization, Continuous Integration, Continuous Deployment, Cloud Deployment, Monitoring, and Production Deployment practices using industry-standard DevOps tools.

The application is successfully deployed on AWS EC2, integrated with Jenkins CI/CD, stored in DockerHub repositories, monitored through Uptime Kuma, and configured with automated email notifications for service availability monitoring.

Webhook trigger test

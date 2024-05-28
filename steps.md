# Deploying a Web Application on Kubernetes Using Docker

This guide provides a step-by-step approach to deploying a web application using Docker containers on Kubernetes, with a focus on local deployment using Minikube and cloud deployment using AWS EKS.

## Prerequisites
Before starting this assignment, ensure you have the following:
- A basic understanding of Docker and Kubernetes.
- Docker and Minikube installed on your computer.
- An AWS account and a DockerHub account.
- `kubectl` installed on your computer.

## Part 1: Creating an Application
Create a simple To-Do web application using Flask and MongoDB. The starter code is provided under Files -> Assignment 3 starter code.

## Part 2: Containerizing the Application Using Docker
- **Install Docker** from [Docker's official website](https://www.docker.com/products/docker-desktop).
- **Create a Dockerfile** for the Flask application including instructions to set the working directory, copy the application code into the container, and specify the command to run the application.
- **Build the Docker image** using the Docker CLI.
- **Create a docker-compose file** to define services for the Flask app and MongoDB, specifying images, ports, and volumes.
- **Test the application locally** by running `docker-compose`, ensuring both containers for the Flask app and MongoDB are operational.
- **Push the Docker image** to Docker Hub using Docker CLI.

## Part 3: Deploying the Application on Minikube
- **Install Minikube** by following [official documentation](https://minikube.sigs.k8s.io/docs/start/).
- **Start Minikube** and create Kubernetes deployments for the Flask app and MongoDB using images from DockerHub.
- **Expose the deployments** using Kubernetes services for external access and load balancing.
- **Test the application** on Minikube using the service URL.

## Part 4: Deploying the Application on AWS EKS
- **Create an AWS EKS cluster** using the AWS Management Console or the AWS CLI with `eksctl`.
- **Configure `kubectl`** to connect to your EKS cluster.
- **Create and expose Kubernetes deployments** on EKS similar to the Minikube setup.
- **Test the application** on AWS EKS to ensure it is accessible from outside the cluster.

## Part 5: Replication Controller Feature
- **Create a replication controller** or specify replicas in the deployment to maintain the desired number of pods.
- **Test the replication controller** by deleting a pod and observing the automatic creation of a new one to maintain the desired count.

## Part 6: Rolling Update Strategy
- **Set the update strategy** to `rollingUpdate`.
- **Trigger a rolling update** by updating the Docker image to a new version and applying the update.
- **Monitor the update** using `kubectl` or the Kubernetes Dashboard.
- **Test the updated application**.

## Part 7: Health Monitoring
- **Set up liveness and readiness probes** in the Kubernetes configuration.
- **Configure actions for failed probes**, such as restarting pods.
- **Monitor pod health** using `kubectl` or the Kubernetes Dashboard.
- **Test the health monitoring** by causing intentional failures.

## Part 8: Alerting
- **Configure alerting** with Kubernetes and set up Prometheus for monitoring.
- **Set up a notification service** such as Slack to receive alerts.
- **Test the alerting system** by causing a failure and verifying that alerts are sent correctly.

This comprehensive guide covers the deployment of a web application from local development environments to production-ready deployments on AWS EKS, ensuring high availability, monitoring, and alerting are in place.
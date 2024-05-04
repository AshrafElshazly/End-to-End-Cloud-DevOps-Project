# AWS DevOps Project

## Infrastructure Architecture Diagram

![Infrastructure Architecture Diagram](Project-Diagram.jpg)

Welcome to this AWS DevOps project! This project blends the capabilities of Ansible, Terraform, Docker, and AWS services to create a cost-optimized, high-performance, and secure infrastructure for deploying and managing applications.

## Project Overview

This project is designed to automate the setup and management of a modern web application infrastructure on AWS. It includes provisioning infrastructure using Terraform, configuration management with Ansible, Docker containerization for applications, and integration with AWS services like AWS WAF for security.

## Key Features

- **Automated Infrastructure Provisioning**: Leveraging Terraform, the infrastructure is provisioned in a modular and scalable manner, ensuring cost efficiency and flexibility.
- **Configuration Management with Ansible**: Ansible automates the setup of MySQL Master-Slave replication, scheduling backups to S3, and managing common MySQL configurations, with a modular approach for customization and maintenance.
- **Dockerized Application**: The Node.js application is containerized using Docker, ensuring consistency and portability across different environments, and is connected to a MySQL database for data persistence.
- **CI/CD Workflows with GitHub Actions**: CI/CD workflows using GitHub Actions automate testing, building, and deployment of the application on AWS ECS, with separate workflows for infrastructure provisioning, ensuring smooth and reliable deployments.
- **Integration with AWS WAF**: AWS WAF enhances the security of the application by protecting against common web exploits and attacks, ensuring a secure user experience.

## Architecture Highlights

- **Cost Optimization**: The architecture is designed with cost optimization in mind, leveraging AWS services like Terraform to provision resources efficiently and manage costs effectively, with AWS cost management tools for monitoring and optimization.
- **High Performance**: The infrastructure is built for high performance, utilizing AWS ECS for container orchestration, optimizing resource utilization, and leveraging AWS managed services for improved performance.
- **Secure Architectural Design**: Security is a top priority, with practices such as using AWS WAF for web application security, implementing encryption at rest and in transit, and following least privilege principles for access control.

## Getting Started

To get started with this project, follow these steps:

1. Clone the repository to your local environment.
2. Set up AWS credentials and configure Terraform variables.
3. Customize Ansible roles and configurations as needed for the application.
4. Build and deploy the Dockerized application using the provided CI/CD workflows.
5. Monitor the infrastructure using AWS CloudWatch and other AWS monitoring tools.

For detailed instructions, refer to the documentation in each component's directory.

## Contributor

- [Ashraf Elshazly](https://github.com/ashrafelshazly)

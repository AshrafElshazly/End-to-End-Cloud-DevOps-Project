# AWS DevOps Automation Project

# Infrastructure Architecture Diagram

![Project Diagram](Project-Diagram.jpg)

## Overview

The **AWS DevOps Automation Project** leverages AWS cloud services to create a robust, scalable, and secure infrastructure for deploying and managing applications. It combines a mix of self-managed services like MySQL Master-Slave replication and automated failover in Node.js with fully managed services like ECS Fargate to achieve cost optimization, high performance, and security.

## Key Features

- **Automated Infrastructure Provisioning**: Leveraging Terraform, the infrastructure is provisioned in a modular and scalable manner, ensuring cost efficiency and flexibility.
- **Terraform State Management**: Terraform state files are stored securely in an S3 bucket to maintain state and facilitate collaboration among team members. Additionally, a DynamoDB table is used to apply locks, preventing concurrent access to the same Terraform state file from multiple users or automation processes.
- **Configuration Management with Ansible**: Ansible automates the setup of MySQL Master-Slave replication, scheduling backups to S3, and managing common MySQL configurations, with a modular approach for customization and maintenance.
- **Dockerized Application**: The Node.js application is containerized using Docker, ensuring consistency and portability across different environments, and is connected to a MySQL database for data persistence. Automated failover is implemented to seamlessly switch to the slave database in case of master failure.
- **CI/CD Workflows with GitHub Actions**: CI/CD workflows using GitHub Actions automate building, releasing, and deployment of the application on AWS ECS, with separate workflows for infrastructure provisioning, ensuring smooth and reliable deployments.
- **Integration with AWS WAF**: AWS WAF enhances the security of the application by protecting against common web exploits and attacks, ensuring a secure user experience.
- **High Performance**: The infrastructure is built for high performance, utilizing AWS ECS Fargate for container orchestration, optimizing resource utilization, and leveraging AWS managed services for improved performance.
- **High Availability**: The architecture ensures high availability of the application through auto-scaling capabilities and an Application Load Balancer (ALB) that distributes incoming traffic across multiple ECS Fargate instances, ensuring redundancy and fault tolerance.

## Prerequisites

- GitHub account for code version control and CI/CD workflows.
- AWS account with appropriate permissions to create and manage resources.

## Configuration

- **MySQL Master-Slave Replication**: Configure MySQL Master-Slave replication settings in the Ansible playbook located in the `Ansible` directory.
- **Security**: Customize AWS WAF rules and bastion host configurations to meet specific security requirements.
- **GitHub Actions Secrets**: Ensure you have configured necessary secrets in your GitHub repository settings to securely access sensitive information required for CI/CD workflows. These secrets might include AWS access keys, SSH private keys, and any other credentials needed for automated deployments.

## Author

- [Ashraf Elshazly](https://github.com/ashrafelshazly)

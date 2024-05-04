# AWS DevOps Project

## Infrastructure Architecture Diagram

![Infrastructure Architecture Diagram](Project-Diagram.jpg)

Welcome to our AWS DevOps project! This project combines the power of Ansible, Terraform, Docker, and AWS services to provide a cost-optimized, high-performance, and secure infrastructure for deploying and managing applications.

## Project Overview

Our project is designed to automate the setup and management of a modern web application infrastructure on AWS. It includes provisioning infrastructure using Terraform, configuration management with Ansible, Docker containerization for applications, and integration with AWS services like AWS WAF for security.

## Key Features

- **Automated Infrastructure Provisioning**: We leverage Terraform to provision AWS infrastructure in a modular and scalable manner, ensuring cost efficiency and flexibility.
- **Configuration Management with Ansible**: Ansible is used to automate the setup of MySQL Master-Slave replication, scheduling backups to S3, and managing common MySQL configurations. Its modular approach allows for easy customization and maintenance.
- **Dockerized Application**: Our Node.js application is containerized using Docker, providing consistency and portability across different environments. It's connected to a MySQL database for data persistence.
- **CI/CD Workflows with GitHub Actions**: We have implemented CI/CD workflows using GitHub Actions for automated testing, building, and deployment of the application on AWS ECS. Separate workflows handle infrastructure provisioning, ensuring smooth and reliable deployments.
- **Integration with AWS WAF**: We enhance the security of our application by integrating AWS WAF, which protects against common web exploits and attacks, ensuring a secure user experience.

## Architecture Highlights

- **Cost Optimization**: Our architecture is designed with cost optimization in mind, leveraging AWS services like Terraform, which allows us to provision resources efficiently and manage costs effectively. We also employ AWS cost management tools to monitor and optimize spending.
- **High Performance**: Our infrastructure is built to deliver high performance, with components like AWS ECS for container orchestration, ensuring scalability and responsiveness to varying workloads. We optimize resource utilization and leverage AWS managed services for improved performance.
- **Secure Architectural Design**: Security is a top priority in our architecture. We implement secure practices such as using AWS WAF for web application security, implementing encryption at rest and in transit, and following least privilege principles for access control.

## Getting Started

To get started with our project, follow these steps:

1. Clone the repository to your local environment.
2. Set up AWS credentials and configure Terraform variables.
3. Customize Ansible roles and configurations as needed for your application.
4. Build and deploy your Dockerized application using the provided CI/CD workflows.
5. Monitor your infrastructure using AWS CloudWatch and other AWS monitoring tools.

For detailed instructions, refer to the documentation in each component's directory.

## Contributors

- [Ashraf Elshazly](https://github.com/ashrafelshazly)

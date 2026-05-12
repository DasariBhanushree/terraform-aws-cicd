Hi, I'm BhanuShree 👋

# Terraform AWS CI/CD Project

## Project Overview

This project demonstrates a real-world DevOps Infrastructure-as-Code (IaC) workflow using Terraform, AWS, and GitHub Actions CI/CD.

The infrastructure is provisioned automatically on AWS using Terraform and deployed through a GitHub Actions pipeline.

The project focuses on:

* Infrastructure as Code (IaC)
* Terraform remote backend
* State locking with DynamoDB
* Modular Terraform structure
* AWS infrastructure automation
* GitHub Actions CI/CD pipeline
* DevOps best practices

---

# Technologies Used

* Terraform
* AWS
* GitHub Actions
* Amazon EC2
* Amazon VPC
* Amazon S3
* DynamoDB
* Git
* GitHub

---

# Project Architecture

```text
Developer Pushes Code
        ↓
GitHub Actions CI/CD Pipeline
        ↓
Terraform Init
Terraform Validate
Terraform Plan
Terraform Apply
        ↓
AWS Infrastructure Provisioned
```

---

# Infrastructure Created

The following AWS resources are provisioned using Terraform:

* VPC
* Public Subnet
* Internet Gateway
* Route Table
* Security Group
* EC2 Instance
* S3 Backend Bucket
* DynamoDB State Lock Table

---

# Terraform Features Implemented

## Remote Backend

Terraform state is stored remotely in Amazon S3.

Benefits:

* Centralized state management
* Team collaboration
* State backup
* Better reliability

---

## State Locking

DynamoDB is used for Terraform state locking.

Benefits:

* Prevents simultaneous Terraform execution
* Avoids state corruption
* Safe team collaboration

---

## Modular Terraform Structure

The EC2 resource is created using Terraform modules.

Benefits:

* Reusability
* Cleaner code structure
* Easier maintenance
* Scalable infrastructure design

---

# CI/CD Pipeline

GitHub Actions automates the Terraform workflow.

Pipeline Stages:

```text
Terraform Init
Terraform Format Check
Terraform Validate
Terraform Plan
Terraform Apply
```

The pipeline runs automatically whenever code is pushed to the main branch.

---

# Folder Structure

```text
terraform-aws-cicd/
│
├── .github/
│   └── workflows/
│       └── deploy.yml
│
├── terraform/
│   ├── backend.tf
│   ├── main.tf
│   ├── provider.tf
│   ├── variables.tf
│   ├── outputs.tf
│   │
│   └── modules/
│       └── ec2/
│           ├── main.tf
│           ├── variables.tf
│           └── outputs.tf
│
└── .gitignore
```

---

# Terraform Commands Used

## Initialize Terraform

```bash
terraform init
```

## Validate Configuration

```bash
terraform validate
```

## Review Infrastructure Changes

```bash
terraform plan
```

## Apply Infrastructure

```bash
terraform apply
```

## Destroy Infrastructure

```bash
terraform destroy
```

---

# Security Best Practices Implemented

* Remote backend enabled
* State locking enabled
* Sensitive files ignored using .gitignore
* AWS credentials stored in GitHub Secrets
* Infrastructure version controlled using Git
* Modular Terraform architecture used

---

# GitHub Secrets Used

The following GitHub repository secrets are configured:

```text
AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY
```

---

# Key DevOps Concepts Demonstrated

* Infrastructure as Code
* CI/CD Automation
* Cloud Infrastructure Provisioning
* Terraform Modules
* Remote State Management
* State Locking
* GitOps Workflow
* Infrastructure Automation

---

# Learning Outcomes

Through this project, the following concepts were learned and implemented:

* Terraform basics and modules
* AWS infrastructure provisioning
* Terraform remote backend setup
* DynamoDB state locking
* GitHub Actions CI/CD integration
* Infrastructure automation workflow
* DevOps project structuring
* Terraform state management

---

# Future Enhancements

* Terraform Workspaces
* Multi-environment setup
* OIDC Authentication
* ECS/EKS Deployment
* Terraform Cloud Integration
* Security Scanning
* SonarQube Integration
* Monitoring and Alerting

---

# Conclusion

This project demonstrates a practical DevOps workflow using Terraform and GitHub Actions to provision and automate AWS infrastructure using Infrastructure as Code principles.

It showcases real-world Terraform practices including remote backend configuration, modular architecture, state locking, CI/CD automation, and infrastructure management using GitOps workflows.

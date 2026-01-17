# 🔐 Secure File Platform

**DevOps Project**
**Developed by:** Megh Gohil
**Duration:** January 2026
**Status:** ✅ Project Completed Successfully

---

## 📌 Project Overview

The **Secure File Platform** is an end-to-end DevOps project that demonstrates secure file handling, cloud infrastructure automation, containerization, CI/CD, and Kubernetes deployment.

Files are encrypted locally using **GPG**, stored securely in **AWS S3**, and accessed using **IAM roles**.
The infrastructure and deployment are fully automated using **Terraform, Docker, Ansible, GitLab CI/CD, and Kubernetes**, following real-world DevOps best practices.

---

## 🛠️ Technologies Used

* **AWS:** S3, IAM
* **Terraform:** Infrastructure as Code
* **Bash & GPG:** Encryption & automation
* **Docker:** Containerization
* **Ansible:** Configuration management
* **GitLab CI/CD:** Automation pipeline
* **Kubernetes:** Container orchestration
* **Git & GitHub:** Version control

---

## 📁 Project Folder Structure

```
secure-file-platform/
├── K8s/            # Kubernetes manifests
├── ansible/        # Ansible playbooks
├── docker/         # Dockerfile and configs
├── git-lab/        # GitLab CI/CD pipeline files
├── scripts/        # Upload & download scripts
├── terraform/      # Terraform IaC files
├── .gitignore
├── README.md
```

---

## 📆 Day-Wise Project Progress & Learnings

---

### 🟢 Day 1 – Project Planning & GitHub Setup

**Completed Tasks**

* Created GitHub repository
* Designed complete project folder structure
* Planned DevOps workflow from development to deployment

**Key Learnings**

* How to structure a real DevOps project
* Importance of version control and clean repo structure
* Planning before implementation

---

### 🟢 Day 2 – AWS & IAM Configuration

**Completed Tasks**

* Created AWS S3 bucket for secure storage
* Created IAM role (**SecureFileS3Role**)
* Applied least-privilege IAM policy
* Configured AWS CLI securely

**Key Learnings**

* IAM roles vs IAM users
* Least privilege security principle
* Secure access without hardcoding credentials

---

### 🟢 Day 3 – Bash Scripting & GPG Encryption

**Completed Tasks**

* Installed and configured GPG
* Created scripts:

  * `upload.sh` → Encrypt & upload files
  * `download.sh` → Download & decrypt files
* Verified secure file handling

**Key Learnings**

* File encryption & decryption using GPG
* Bash scripting for automation
* End-to-end data security concepts

---

### 🟢 Day 4 – Terraform (Infrastructure as Code)

**Completed Tasks**

* Imported existing S3 bucket into Terraform
* Created IAM role & policy using Terraform
* Applied Terraform configuration

**Key Learnings**

* Terraform import & state management
* IaC benefits (repeatable, version-controlled infra)
* Terraform commands:

  * init, plan, apply, import

---

### 🟢 Day 5 – Docker Containerization

**Completed Tasks**

* Created Dockerfile for the application
* Built and tested Docker images
* Ensured scripts work inside containers

**Key Learnings**

* Docker image lifecycle
* Containerizing scripts & tools
* Difference between container and VM

---

### 🟢 Day 6 – Ansible Automation

**Completed Tasks**

* Created Ansible playbooks
* Automated server configuration
* Managed dependencies and environment setup

**Key Learnings**

* Configuration management concepts
* Idempotency in Ansible
* Automation of repetitive tasks

---

### 🟢 Day 7 – GitLab CI/CD Integration

**Completed Tasks**

* Created GitLab CI pipeline files
* Automated build and deployment steps
* Integrated CI/CD with repository

**Key Learnings**

* CI/CD pipeline stages
* Automated testing & deployment
* DevOps lifecycle automation

---

### 🟢 Day 8 – Kubernetes Deployment

**Completed Tasks**

* Created Kubernetes manifests
* Deployed containerized app to K8s
* Managed pods and services

**Key Learnings**

* Kubernetes architecture
* Pods, deployments, and services
* Container orchestration concepts

---

## 📚 Overall Key Learnings

* Secure cloud storage using AWS S3 & IAM
* Encryption using GPG
* Infrastructure automation with Terraform
* Containerization using Docker
* Configuration management using Ansible
* CI/CD pipelines using GitLab
* Kubernetes orchestration
* Real-world DevOps workflow

---

## 📌 Final Project Status

✅ **All Days Completed**
✅ **All Components Implemented**
✅ **Tested & Verified**

**S3 Bucket:** `secure-file-platform-bucket`
**IAM Role:** `SecureFileS3Role`

---

## 🚀 Conclusion

This project demonstrates a **complete DevOps lifecycle**, from secure file handling to automated deployment using modern DevOps tools.
It is **production-ready, resume-ready, and interview-ready**.

---

⭐ *This project reflects real-world DevOps skills and best practices.*

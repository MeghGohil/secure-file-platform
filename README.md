# Secure File Platform

**DevOps Project** | Developed by: Megh Gohil  
**Date:** January 2026  
**Technologies Used:** AWS (S3, IAM), Terraform, Bash, GPG, GitHub  

---

## **Project Overview**

The **Secure File Platform** is a cloud-based application designed to provide **secure file upload, storage, and retrieval**.  
Files are **encrypted locally using GPG** before upload to AWS S3, ensuring **end-to-end data security**.  
The project is built following **DevOps best practices**, including infrastructure-as-code, automation, and version control.

---

## **Key Features**

- **Secure File Handling**
  - Files are encrypted using **GPG** before uploading.
  - Only authorized IAM roles can access files.

- **AWS S3 Integration**
  - Files stored securely in an **AWS S3 bucket**.
  - Bucket managed through **Terraform** (infrastructure-as-code).

- **IAM Role Access**
  - Dedicated IAM role with **least privilege policy** for accessing S3.
  - Securely integrated with scripts to avoid exposing credentials.

- **Terraform Automation**
  - Existing S3 bucket imported and managed in Terraform.
  - IAM roles and policies automated.
  - Enables **repeatable and safe deployments**.

- **DevOps Practices**
  - GitHub used for **version control** and project tracking.
  - `.gitignore` configured to avoid committing secrets and temporary files.
  - Project structured to be **scalable and maintainable**.

---

## **Project Structure**
secure-file-platform/
├── terraform/
│ ├── main.tf # Terraform resources for S3 & IAM
│ ├── variables.tf # Variables for bucket name and region
│ ├── outputs.tf # Outputs for bucket and IAM role
├── scripts/
│ ├── upload.sh # Bash script to encrypt and upload file
│ ├── download.sh # Bash script to download and decrypt file
├── .gitignore # Ignore sensitive and temporary files
├── README.md # Project documentation


---

## **Day-wise Progress & Key Learnings**

### **Day 1 – Project Planning & GitHub Setup**
- Initialized **GitHub repository** for the project.
- Planned project workflow and **folder structure**.
- Reviewed **tools and technologies** needed for DevOps workflow:
  - Git/GitHub, AWS, Terraform, Bash, GPG.

### **Day 2 – AWS Basics & IAM**
- Created **AWS IAM role** for S3 access.
- Learned about **IAM policies, roles, and least privilege principle**.
- Installed and configured **AWS CLI** for secure interaction with AWS.

### **Day 3 – Bash Scripts & GPG Encryption**
- Installed **GPG** on Linux.
- Created scripts:
  - `upload.sh` → encrypt & upload files to S3.
  - `download.sh` → download & decrypt files.
- Verified **secure upload and download** functionality.

### **Day 4 – Terraform & Infrastructure-as-Code**
- Imported **existing S3 bucket** into Terraform.
- Created **IAM role and policy** via Terraform.
- Learned **Terraform commands**:
  - `terraform init`, `terraform import`, `terraform plan`, `terraform apply`
- Ensured **infrastructure is reproducible, safe, and version-controlled**.

---

## **Key Learnings So Far**

- Understanding **AWS IAM** and secure access for services.
- Managing **S3 buckets securely** and avoiding unnecessary costs.
- Automating infrastructure using **Terraform**.
- Writing **Bash scripts for encryption** using GPG.
- Version controlling **infrastructure and scripts** in GitHub.
- Using **.gitignore** to keep sensitive data safe.

---

## **Next Steps**
- Automate server configuration using **Ansible**.
- Integrate **GitLab CI/CD** for automated deployment.
- Containerize the platform using **Docker** and deploy on **Kubernetes**.
- Make project **fully resume-ready** and interview-proof.

---

## **References**
- [AWS Documentation](https://aws.amazon.com/documentation/)
- [Terraform Documentation](https://www.terraform.io/docs/)
- [GPG Encryption Guide](https://gnupg.org/documentation/)
- [GitHub Docs](https://docs.github.com/)

---

**Project Status:** ✅ Active – Day 4 Completed (Terraform applied successfully)  
**Bucket Name:** `secure-file-platform-bucket`  
**IAM Role:** `SecureFileS3Role`

---

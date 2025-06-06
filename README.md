# 🚀 AWS DevOps Starter

## 📌 Project Overview
This project demonstrates **Infrastructure as Code (IaC)** by automating EC2 instance creation using AWS CLI and Terraform. It showcases **DevOps automation**, cloud provisioning, and deployment best practices.

## 🛠 Technologies Used
- **AWS CLI** – Automate cloud resources from the command line.
- **Bash** – Write automation scripts for EC2 provisioning.
- **Terraform** – Infrastructure automation & scalability.
- **GitHub** – Version control & project documentation.

## 🔧 Setup Instructions

### **1️⃣ Prerequisites**
- AWS account with IAM credentials configured (`aws configure`)
- SSH key pair for EC2 instances
- AWS CLI installed (`aws --version` to check)
- Terraform installed (`terraform --version` to check)

### **2️⃣ Clone the Repo**
```bash
git clone https://github.com/panpiii/aws-devops-starter.git
cd aws-devops-starter
```  

## 🔧 Managing EC2 Instances
To stop an instance without deleting it:
```bash
aws ec2 stop-instances --instance-ids <INSTANCE_ID>
```
To restart a stopped instance:
```bash
aws ec2 start-instances --instance-ids <INSTANCE_ID>
```
To permanently delete an instance:
```bash
aws ec2 terminate-instances --instance-ids <INSTANCE_ID>  
```

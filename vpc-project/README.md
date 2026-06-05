# 🚀 Terraform Project: AWS VPC Infrastructure Using Reusable Modules

## 📌 Overview

In this project, I built and provisioned a complete AWS networking infrastructure using **Terraform** and a **modular Infrastructure as Code (IaC)** approach.

The project demonstrates how reusable Terraform modules can be used to manage multiple environments efficiently while following DevOps best practices.

---

## 📂 GitHub Repository

```text
https://github.com/yogeshade/Terraform-Projects/tree/main/vpc-project
```

---

# 🛠 Technologies Used

* Terraform
* AWS VPC
* Internet Gateway
* Route Tables
* Subnets
* EC2
* Linux
* Git & GitHub
* Infrastructure as Code (IaC)

---

# 📁 Project Structure

```text
vpc-project/
│
├── Modules/
│   └── vpc/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
│
├── vpc.tf
├── provider.tf
├── variables.tf
└── terraform.tfvars
```

---

# 🏗 Infrastructure Created

Three separate VPC environments were created:

| Environment | CIDR Block     |
| ----------- | -------------- |
| Dev         | 10.0.0.0/16    |
| Test        | 172.16.0.0/16  |
| Prod        | 192.168.0.0/16 |

---

# Components Created in Each VPC

### ✅ VPC

Dedicated network for each environment.

### ✅ Public Subnet

Allows internet-facing resources.

### ✅ Private Subnet

Used for internal resources.

### ✅ Internet Gateway

Provides internet connectivity.

### ✅ Route Table

Controls network traffic.

### ✅ Route Table Association

Associates route tables with subnets.

### ✅ DNS Hostnames Enabled

Supports DNS resolution inside the VPC.

---

# 🚀 Terraform Workflow

## Step 1: Initialize Terraform

```bash
terraform init
```

Terraform downloaded the required providers and initialized the working directory successfully.

---

## Step 2: Review Execution Plan

```bash
terraform plan
```

Terraform generated the execution plan and identified the resources that would be created.

### Resources Planned

* VPCs
* Public Subnets
* Private Subnets
* Internet Gateways
* Route Tables
* Route Table Associations

---

## Step 3: Provision Infrastructure

```bash
terraform apply
```

Terraform successfully provisioned all resources.

```text
Apply complete!
Resources: 18 added, 0 changed, 0 destroyed.
```

---

# 📊 Total Resources Created

### 3 VPCs

* dev-vpc
* test-vpc
* prod-vpc

### 6 Subnets

* 3 Public Subnets
* 3 Private Subnets

### 3 Internet Gateways

### 3 Route Tables

### 3 Route Table Associations

---

# 🔍 Verification

After provisioning, the infrastructure was verified through the AWS Management Console.

### ✔ Dev VPC

* CIDR: 10.0.0.0/16
* Public Subnet
* Private Subnet
* Internet Gateway
* Route Table

### ✔ Test VPC

* CIDR: 172.16.0.0/16
* Public Subnet
* Private Subnet
* Internet Gateway
* Route Table

### ✔ Prod VPC

* CIDR: 192.168.0.0/16
* Public Subnet
* Private Subnet
* Internet Gateway
* Route Table

---

# 📚 Key Learnings

* Building reusable Terraform modules.
* Managing infrastructure using Infrastructure as Code (IaC).
* Creating multiple environments with minimal code duplication.
* Understanding AWS networking fundamentals.
* Working with VPCs, Subnets, Internet Gateways, and Route Tables.
* Using Terraform commands:

```bash
terraform init
terraform plan
terraform apply
terraform destroy
```

* Validating infrastructure from the AWS Console.

---

# 🎯 Outcome

Successfully provisioned and managed AWS networking resources using reusable Terraform modules while following Infrastructure as Code best practices.

This project strengthened my understanding of:

* Terraform Modules
* AWS Networking
* Infrastructure Automation
* DevOps Fundamentals

---

## Repository

```text
https://github.com/yogeshade/Terraform-Projects/tree/main/vpc-project
```

---

# 🔖 Tags

`Terraform` `AWS` `DevOps` `Infrastructure as Code` `VPC` `Subnets`
`Internet Gateway` `Route Tables` `Linux` `GitHub`

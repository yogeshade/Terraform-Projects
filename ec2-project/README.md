# 🚀 AWS EC2 Provisioning Using Terraform Modules

This project demonstrates how to provision an **Amazon EC2 instance** on AWS using **Terraform** and a **modular Infrastructure as Code (IaC)** approach.

By separating the infrastructure into reusable modules, the project becomes easier to manage, maintain, and scale.

---

## 📌 Project Overview

This project creates an AWS EC2 instance using:

* Terraform v1.15.5
* AWS Provider
* Reusable Terraform Modules
* Output Variables
* Ubuntu Linux

---

## 📂 Project Structure

```text
ec2-project/
│
├── ec2.tf
├── output.tf
│
└── modules/
    └── ec2/
        ├── main.tf
        ├── variables.tf
        └── output.tf
```

---

## ⚙️ Technologies Used

* Terraform
* AWS EC2
* AWS Provider
* Ubuntu Linux
* Git & GitHub

---

## 📖 Terraform Workflow

### 1. Clone Repository

```bash
git clone https://github.com/yogeshade/Terraform-Projects.git

cd Terraform-Projects/ec2-project
```

---

### 2. Initialize Terraform

```bash
terraform init
```

Terraform downloads the required provider plugins and initializes the working directory.

---

### 3. Review Execution Plan

```bash
terraform plan
```

This command displays the resources Terraform will create before applying changes.

---

### 4. Create Infrastructure

```bash
terraform apply --auto-approve
```

Terraform provisions the EC2 instance automatically.

---

### 5. Verify Resources

After successful deployment, Terraform displays outputs similar to:

```text
Outputs:

instance_id = "i-0cb9124ddf7b99424"
private_ip  = "172.31.35.160"
public_ip   = "34.201.167.190"
```

The EC2 instance can also be verified from the AWS Management Console.

---

## 📷 Deployment Results

### ✅ Terraform Initialization

* Provider installation completed successfully.
* Backend initialized.

### ✅ Terraform Plan

* 1 resource to add
* 0 resources to change
* 0 resources to destroy

### ✅ Terraform Apply

Resource created successfully:

```text
Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
```

---

## 📤 Outputs

The project returns:

| Output      | Description        |
| ----------- | ------------------ |
| instance_id | EC2 Instance ID    |
| public_ip   | Public IP address  |
| private_ip  | Private IP address |

---

## 🔥 Key Concepts Covered

* Infrastructure as Code (IaC)
* Terraform Modules
* Variables
* Outputs
* AWS Provider
* EC2 Instance Provisioning
* Reusable Infrastructure
* Terraform Workflow

---

## 🛠 Commands Used

Initialize Terraform:

```bash
terraform init
```

Generate Execution Plan:

```bash
terraform plan
```

Provision Infrastructure:

```bash
terraform apply --auto-approve
```

Destroy Infrastructure:

```bash
terraform destroy
```

---

## 📚 Learning Outcomes

After completing this project, I gained practical experience with:

* Creating reusable Terraform modules.
* Working with AWS providers.
* Managing outputs and variables.
* Deploying infrastructure using Infrastructure as Code.
* Following Terraform best practices for project structure.

---

## 📸 AWS Console Verification

Successfully verified the created EC2 instance in the AWS Management Console.

* Instance State: Running
* Instance Type: t3.micro
* Region: us-east-1

---

## 📌 Author

### Yogesh Ade

Aspiring DevOps Engineer

GitHub: https://github.com/yogeshade

---

## ⭐ If you found this project useful, feel free to star the repository!

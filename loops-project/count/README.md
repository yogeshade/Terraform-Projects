# 🚀 Terraform Count Meta-Argument Project

This project demonstrates how to use Terraform's **`count` meta-argument** to provision multiple AWS EC2 instances using a single resource block. Each instance is assigned a unique name dynamically using **`count.index`**.

## 📄 Configuration

```hcl
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  count         = 3
  ami           = "ami-091138d0f0d41ff90"
  instance_type = "t3.micro"

  tags = {
    Name = "yogesh-${count.index}"
  }
}
```

## 🚀 Usage

Initialize Terraform:

```bash
terraform init
```

Preview the execution plan:

```bash
terraform plan
```

Provision the infrastructure:

```bash
terraform apply
```

Destroy the infrastructure:

```bash
terraform destroy
```

## ☁️ Outcome

Terraform provisions three EC2 instances with the following names:

* `yogesh-0`
* `yogesh-1`
* `yogesh-2`

## 📚 Key Concepts

* Terraform Provider Configuration
* AWS EC2 Resource Creation
* `count` Meta-Argument
* Dynamic Naming with `count.index`
* Terraform Workflow (`init`, `plan`, `apply`, and `destroy`)

---

**Author:** **Yogesh Ade**
🚀 *DevOps Engineer Aspirant*

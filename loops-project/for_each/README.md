# 🚀 Terraform `for_each` Meta-Argument Project

This project demonstrates how to use Terraform's **`for_each` meta-argument** to provision multiple AWS EC2 instances dynamically. By leveraging a map variable, Terraform creates separate resources for different environments while maintaining clean, scalable, and reusable Infrastructure as Code (IaC).

---

## 📖 Overview

The `for_each` meta-argument allows Terraform to iterate over a collection and create multiple resources from a single resource block. In this project, three EC2 instances are created for the following environments:

* **Development (`dev`)**
* **Testing (`test`)**
* **Production (`prod`)**

Each instance is assigned a unique name and its ID is exported using Terraform outputs.

---

## 📂 Project Structure

```text
for_each/
├── resource.tf     # AWS provider and EC2 resource definitions
├── variable.tf     # Input variables
├── output.tf       # Output values
└── README.md
```

---

## ⚙️ Technologies Used

* **Terraform**
* **AWS EC2**
* **Infrastructure as Code (IaC)**

---

## 📝 Variable Configuration

### `variable.tf`

```hcl
variable "aws_region" {
  default = "us-east-1"
}

variable "instance" {
  type = map(string)

  default = {
    dev  = "t3.micro"
    test = "t3.micro"
    prod = "t3.micro"
  }
}
```

---

## 🏗 Resource Definition

### `resource.tf`

```hcl
provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "ec2" {

  for_each = var.instance

  ami           = "ami-091138d0f0d41ff90"
  instance_type = each.value

  tags = {
    Name = "yogesh-${each.key}"
  }

}
```

---

## 📤 Output Configuration

### `output.tf`

```hcl
output "instance_ids" {

  value = {
    for key, instance in aws_instance.ec2 :
    key => instance.id
  }

}
```

---

## 🔍 Understanding `for_each`

Terraform iterates through the following map:

```hcl
{
  dev  = "t3.micro"
  test = "t3.micro"
  prod = "t3.micro"
}
```

and creates the following resources:

* `aws_instance.ec2["dev"]`
* `aws_instance.ec2["test"]`
* `aws_instance.ec2["prod"]`

---

## 🔑 Using `each.key`

`each.key` represents the key of the map:

```text
dev
test
prod
```

It is used to dynamically assign names to the EC2 instances:

```hcl
tags = {
  Name = "yogesh-${each.key}"
}
```

Resulting resource names:

* `yogesh-dev`
* `yogesh-test`
* `yogesh-prod`

---

## 🔑 Using `each.value`

`each.value` represents the value associated with each key:

```text
t3.micro
```

It is used to define the EC2 instance type:

```hcl
instance_type = each.value
```

---

## 📤 Sample Output

```text
instance_ids = {
  dev  = "i-037379de76ac39032"
  prod = "i-00f41e47c3e3146fd"
  test = "i-03ac565f9fa980ce5"
}
```

---

## 🚀 Deployment Steps

### Initialize Terraform

```bash
terraform init
```

### Review Execution Plan

```bash
terraform plan
```

### Provision Infrastructure

```bash
terraform apply
```

### View Outputs

```bash
terraform output
```

### List Managed Resources

```bash
terraform state list
```

### Destroy Infrastructure

```bash
terraform destroy
```

---

## ✅ Resources Created

| Environment | Instance Name |
| ----------- | ------------- |
| Development | yogesh-dev    |
| Testing     | yogesh-test   |
| Production  | yogesh-prod   |

---

## 🎯 Key Concepts Covered

* Terraform Meta-Arguments
* `for_each`
* `each.key`
* `each.value`
* Map Variables
* For Expressions
* Outputs
* AWS EC2 Provisioning
* Infrastructure as Code (IaC)

---

## 📋 Prerequisites

Before running this project, ensure that you have:

* An AWS Account
* IAM User with appropriate permissions
* AWS CLI configured
* Terraform installed
* Basic understanding of AWS and Terraform

---

## 🔗 Repository

```text
https://github.com/yogeshade/Terraform-Projects/tree/main/loops-project/for_each
```

---

## 🎓 Learning Outcome

Through this project, I gained practical experience with Terraform's **`for_each` meta-argument** and learned how to efficiently manage multiple resources using Infrastructure as Code. This approach improves scalability, reduces code duplication, and promotes reusable and maintainable infrastructure configurations.

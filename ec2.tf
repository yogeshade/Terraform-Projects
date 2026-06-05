provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my-ec2-instance" {
  ami = "ami-091138d0f0d41ff90"
  instance_type = "t3.micro"
  tags = {
    Name = "my-ec2-instance"
  }
}

resource "aws_instance" "my-ec2-instance-1" {
  ami = "ami-091138d0f0d41ff90"
  instance_type = "t3.micro"
  tags = {
    Name = "new-ec2-instance-1"
  }
}

output "instance_id" {
    value = aws_instance.my-ec2-instance.id
  
}

output "instance_id1" {
    value = aws_instance.my-ec2-instance.id
  
}

variable "instance_count" {
  default = 2
}
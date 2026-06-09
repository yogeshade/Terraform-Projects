provider "aws" {
    region = var.aws_region
  
}

resource "aws_instance" "ec2" {


    for_each = var.instance

    ami = "ami-091138d0f0d41ff90"
    instance_type = each.value

    tags = {
        Name = "yogesh-${each.key}"
    }

}
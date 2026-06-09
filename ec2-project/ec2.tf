provider "aws" {
  region = "us-east-1"
}

module "ec2" {
  source = "./modules/ec2"

  ami_id            = "ami-091138d0f0d41ff90"
  instance_type     = "t3.micro"
  subnet_id         = "subnet-0f634a055feef926e"
  security_group_ids = ["sg-047c580e5c0638edd"]
  key_name          = "YOGESH"
  instance_name     = "ec2-terraform"
}
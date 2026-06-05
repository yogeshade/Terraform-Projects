provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "yogesh-demo-bucket-2026"
 tags = {
    Name = "MyBucket"
    Environment = "Dev"
  }
}
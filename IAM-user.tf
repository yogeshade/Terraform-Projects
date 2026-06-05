provider "aws" {
  region = "us-east-1"
}

#IAM User

resource "aws_iam_user" "my_user" {
  name = "yogesh-user"
}

resource "aws_iam_user_policy_attachment" "admin_policy" {
  user = aws_iam_user.my_user.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

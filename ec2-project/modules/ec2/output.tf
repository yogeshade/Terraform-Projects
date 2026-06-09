output "instance_id" {
  value = aws_instance.yogesh.id
}

output "public_ip" {
  value = aws_instance.yogesh.public_ip
}

output "private_ip" {
  value = aws_instance.yogesh.private_ip
}
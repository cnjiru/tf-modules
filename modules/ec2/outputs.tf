output "instance_id" {
  description = "ID of the EC2 instance."
  value       = aws_instance.this.id
}

output "private_ip" {
  description = "Private IP of the instance."
  value       = aws_instance.this.private_ip
}

output "public_ip" {
  description = "Public IP (null if none assigned)."
  value       = aws_instance.this.public_ip
}

output "security_group_id" {
  description = "ID of the instance security group."
  value       = aws_security_group.this.id
}
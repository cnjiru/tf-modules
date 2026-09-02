output "vpc_id" {
  description = "ID of the web EC2 instance."
  value       = aws_vpc.main.id
}
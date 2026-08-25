output "web_instance_id" {
  description = "ID of the web EC2 instance."
  value       = module.web.instance_id
}

output "web_public_ip" {
  description = "Public IP of the web instance."
  value       = module.web.public_ip
}

output "web_private_ip" {
  description = "Private IP of the web instance."
  value       = module.web.private_ip
}
variable "region" {
  description = "AWS region to deploy into."
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Deployment environment."
  type        = string
  default     = "dev"
}

variable "my_ip_cidr" {
  description = "Your public IP in CIDR form for SSH access, e.g. 41.90.1.2/32."
  type        = string
  default     = null
}
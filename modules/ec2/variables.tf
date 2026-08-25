variable "name" {
  description = "Name for the instance and its security group."
  type        = string
}

variable "environment" {
  description = "Deployment environment (dev, staging, prod)."
  type        = string

  validation {
    condition     = contains(["dev", "staging", "prod"], var.environment)
    error_message = "environment must be one of: dev, staging, prod."
  }
}

variable "vpc_id" {
  description = "VPC the security group is created in."
  type        = string
}

variable "subnet_id" {
  description = "Subnet to launch the instance in."
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type."
  type        = string
  default     = "t3.micro"
}

variable "ami_id" {
  description = "AMI to launch. Null = latest Amazon Linux 2023."
  type        = string
  default     = null
}

variable "associate_public_ip" {
  description = "Assign a public IP to the instance."
  type        = bool
  default     = false
}

variable "allowed_ssh_cidrs" {
  description = "CIDRs allowed to SSH. Empty = no SSH ingress."
  type        = list(string)
  default     = []
}

variable "key_name" {
  description = "Existing EC2 key pair name for SSH. Null = none."
  type        = string
  default     = null
}

variable "root_volume_size" {
  description = "Root EBS volume size in GiB."
  type        = number
  default     = 20
}

variable "tags" {
  description = "Extra tags for all resources."
  type        = map(string)
  default     = {}
}
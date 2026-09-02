variable "cidr_block" {
  description = "VPC CIDR."
  type        = string
}

variable "instance_tenancy" {
  description = "instance_tenancy default or dedicated"
  type        = string
  default     = "default"
}

variable "name" {
  description = "Name of the vpc"
  type        = string
}

variable "public_subnet" {
  description = "cidr for the public subnet"
  type        = string
}

variable "private_subnet" {
  description = "cidr for the private subnet"
  type        = string
}
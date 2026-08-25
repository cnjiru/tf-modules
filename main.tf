# --- Default VPC lookups -----------------------------------------------
# Temporary: replaced by your own VPC module later. Only these data
# blocks change then — the ec2 module stays exactly as-is.

data "aws_vpc" "default" {
  default = true
}

data "aws_subnets" "default" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }
}

# -----------------------------------------------------------------------

module "web" {
  source = "./modules/ec2"

  name        = "web"
  environment = var.environment

  vpc_id    = data.aws_vpc.default.id
  subnet_id = data.aws_subnets.default.ids[0]

  instance_type       = "t3.micro"
  associate_public_ip = true

  allowed_ssh_cidrs = var.my_ip_cidr != null ? [var.my_ip_cidr] : []

  tags = {
    Team = "platform"
  }
}

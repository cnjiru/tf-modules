# terraform/backend.tf (in your ec2 root, not bootstrap)
terraform {
  backend "s3" {
    bucket       = "mycompany-tfstate-prod"
    key          = "ec2/terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true
  }
}
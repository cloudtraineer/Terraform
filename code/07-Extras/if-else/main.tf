# Configure the AWS provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
}
provider "aws" {
  region = "ap-south-1"
  profile = "<profile_name>"
}

# Create an EC2 instance
resource "aws_instance" "example" {
  count         = 2  
  ami           = "ami-0b41f7055516b991a"
  instance_type = var.env == "prod" ? "t2.small" : "t2.micro"
}
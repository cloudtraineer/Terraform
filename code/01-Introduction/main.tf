# Configure the AWS provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.67.0"
    }
  }
  }

provider "aws" {
  region = "ap-south-1"
}

# # Create an EC2 instance
# resource "aws_instance" "example" {
#   ami           = "<ami_name>"
#   instance_type = "<instance_type_name>"
# }
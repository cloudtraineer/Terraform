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
  profile = "<profile_name>"
}

# Create an EC2 instance
 resource "aws_instance" "example" {
    ami           = "ami-001843b876406202a"
    instance_type = "t2.micro"
 }

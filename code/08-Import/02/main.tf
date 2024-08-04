#This method is supported only with newer terraform version (1.6.x ++)

# Configure the AWS provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.23"
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
    instance_type = "t2.small"
}

import {
  to = aws_instance.example
  id = "" //ec2-instance id from console
}

#This method is supported only with newer terraform version (1.6.x ++)

# Configure the AWS provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.23"
    }
  }
}
provider "aws" {
  region = "ap-south-1"
}

# Create an EC2 instance
resource "aws_instance" "example" {
  ami           = "ami-0b41f7055516b991a"
  instance_type = "t2.micro"
}

import {
  to = aws_instance.example
  id = "" //ec2-instance id from console
}
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
}

# Create an EC2 instance
resource "aws_instance" "example" {
  ami           = "ami-0b41f7055516b991a"
  instance_type = "t2.micro"
}
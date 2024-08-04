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
  assume_role {
    role_arn = "arn:aws:iam::<account>:role/<role_name>"
    session_name = "myseesion"
  }
}


# Create a S3 bucket
resource "aws_s3_bucket" "aws_bucket" {
  bucket		  = "firstbucket"
}

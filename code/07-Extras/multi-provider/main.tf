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
#declaring second provider
provider "aws" {
  alias = "second"
  region = "us-east-1"
  profile = "<profile_name>"
}

# Create a S3 bucket
resource "aws_s3_bucket" "aws_bucket" {
  bucket		  = "firstbucket7596"
}

resource "aws_s3_bucket" "aws_bucket_second" {
  provider = aws.second
  bucket		  = "secondbucket5210"
}
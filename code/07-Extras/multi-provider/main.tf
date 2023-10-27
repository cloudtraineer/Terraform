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
#declaring second provider
provider "aws" {
  alias = "second"
  region = "us-east-1"
}

# Create a S3 bucket
resource "aws_s3_bucket" "aws_bucket" {
  bucket		  = "firstbucket"
}

resource "aws_s3_bucket" "aws_bucket_second" {
  provider = aws.second
  bucket		  = "secondbucket"
}
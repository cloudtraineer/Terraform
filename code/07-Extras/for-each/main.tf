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

# Create a S3 bucket
resource "aws_s3_bucket" "aws_bucket" {
  for_each =  {first_bucket = "bucket145454",second_bucket = "bucke569822"}
  bucket		  = each.value
}
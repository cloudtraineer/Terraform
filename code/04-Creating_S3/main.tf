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

# Create a S3 bucket
resource "aws_s3_bucket" "aws_bucket" {
  #bucket =  "aws-${var.bucket_name}"            #Referencing variable along with String    
  bucket		  = var.bucket_name                  #Referencing variable Directly
}

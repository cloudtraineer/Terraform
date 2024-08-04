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
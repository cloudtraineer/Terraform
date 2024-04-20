# Define Terraform backend using a S3 bucket for storing the Terraform state
terraform {
  backend "s3" {
    bucket = "<backend_bucket_name>"
    key = "terraform-state/terraform.tfstate"
    region = "ap-south-1"
    profile = "<profile_name>"
 }
}
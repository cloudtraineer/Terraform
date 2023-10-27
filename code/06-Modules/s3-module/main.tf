
# Create a S3 bucket
resource "aws_s3_bucket" "aws_bucket" {
  bucket		  = "${var.bucket_name}"
}
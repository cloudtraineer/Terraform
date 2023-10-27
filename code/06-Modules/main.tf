module "my_module_bucket" {
    source = "./s3-module"
    bucket_name = "test524570"
    
}
output "bucket_details" {
  value = module.my_module_bucket.*
}
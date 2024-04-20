module "my_module_bucket" {
    source = "./s3-module"
    bucket_name = "modulebucketdemo45"
    
}


output "bucket_details" {
  value = module.my_module_bucket.*
}
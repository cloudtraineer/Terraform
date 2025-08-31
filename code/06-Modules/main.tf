module "my_module_bucket" {
    #source = "github.com/cloudtraineer/terraform-s3-module"          # used to reference Terraform Module form Github
    source = "./s3-module"                                            # used to reference Terraform Module form Local
    bucket_name = "modulebucketdemo45"
    
}


output "bucket_details" {
  value = module.my_module_bucket.*
}

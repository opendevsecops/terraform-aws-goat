module "bucket" {
  source = "../_bucket"
  
  acl = "public-read-write"
}

module "bucket_object_readme" {
  source = "../_bucket_object"
  
  bucket = "${module.bucket.id}"
  key = "README.txt"
  file = "${path.module}/contents/README.txt"
}

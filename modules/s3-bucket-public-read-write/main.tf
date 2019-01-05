module "bucket" {
  source = "../_s3_bucket"

  acl = "public-read-write"
}

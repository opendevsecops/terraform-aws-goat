locals {
  bucket = "${var.bucket == "" ? module.bucket.id : var.bucket}"
}

module "bucket" {
  source = "../_name"
}

resource "aws_s3_bucket" "main" {
  bucket = "${local.bucket}"
  
  acl = "${var.acl}"
  policy = "${var.policy}"
}

output "s3_bucket_public_read_id" {
  value = "${module.s3_bucket_public_read.id}"
}

output "s3_bucket_public_read_write_id" {
  value = "${module.s3_bucket_public_read_write.id}"
}

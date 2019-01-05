output "s3_bucket_public_read_id" {
  value = "${module.s3_bucket_public_read.id}"
}

output "s3_bucket_public_read_write_id" {
  value = "${module.s3_bucket_public_read_write.id}"
}

output "sns_topic_public_subscribe_arn" {
  value = "${module.sns_topic_public_subscribe.arn}"
}

output "sns_topic_public_subscribe_publish_arn" {
  value = "${module.sns_topic_public_subscribe_publish.arn}"
}

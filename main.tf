module "iam_role_public_assumerole" {
  source = "modules/iam-role-public-assumerole"
}

module "s3_bucket_public_read" {
  source = "modules/s3-bucket-public-read"
}

module "s3_bucket_public_read_write" {
  source = "modules/s3-bucket-public-read-write"
}

module "sns_topic_public_subscribe" {
  source = "modules/sns-topic-public-subscribe"
}

module "sns_topic_public_subscribe_publish" {
  source = "modules/sns-topic-public-subscribe-publish"
}

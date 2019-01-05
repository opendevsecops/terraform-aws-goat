resource "aws_s3_bucket_object" "main" {
  bucket = "${var.bucket}"
  key    = "${var.key}"
  source = "${var.file}"
  etag   = "${md5(file(var.file))}"
}

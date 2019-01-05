module "role" {
  source = "../_iam_role"

  assume_role_policy = "${data.aws_iam_policy_document.default_iam_assume_role_policy.json}"
  policy             = "${var.policy}"
}

data "aws_iam_policy_document" "default_iam_assume_role_policy" {
  statement {
    effect = "Allow"

    actions = [
      "sts:AssumeRole",
    ]

    principals {
      type        = "AWS"
      identifiers = ["*"]
    }
  }
}

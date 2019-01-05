module "topic" {
  source = "../_sns_topic"
}

resource "aws_sns_topic_policy" "default" {
  arn = "${module.topic.arn}"

  policy = "${data.aws_iam_policy_document.default_sns_topic_policy.json}"
}

data "aws_iam_policy_document" "default_sns_topic_policy" {
  statement {
    effect = "Allow"

    actions = [
      "SNS:Subscribe",
      "SNS:GetTopicAttributes",
    ]

    principals {
      type        = "AWS"
      identifiers = ["*"]
    }

    resources = [
      "${module.topic.arn}",
    ]
  }
}

locals {
  name = "${var.name == "" ? module.name.id : var.name}"
}

module "name" {
  source = "../_name"
}

resource "aws_iam_role" "main" {
  name = "${local.name}"

  assume_role_policy = "${var.assume_role_policy}"
}

resource "aws_iam_role_policy" "default" {
  count = "${var.policy == "" ? 0 : 1 }"

  role   = "${aws_iam_role.main.id}"
  policy = "${var.policy}"
}

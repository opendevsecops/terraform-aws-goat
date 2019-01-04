resource "random_pet" "name" {
  length = "${var.length}"
  separator = "${var.separator}"
}

locals {
  name = "${random_pet.name.id}"
}

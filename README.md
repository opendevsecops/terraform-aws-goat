[![Follow on Twitter](https://img.shields.io/twitter/follow/opendevsecops.svg?logo=twitter)](https://twitter.com/opendevsecops)
[![Codacy Badge](https://api.codacy.com/project/badge/Grade/c19ccb0ca68a4b5dbc6a9cdd122339e3)](https://www.codacy.com/app/OpenDevSecOps/terraform-aws-goat?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=opendevsecops/terraform-aws-goat&amp;utm_campaign=Badge_Grade)

# AWS Goat Terraform Module

Terraform module which deploy various vulnerable resources useful teaching, testing and understanding AWS security vulnerabilities.

## Getting Started

Getting started is easy. Here is a complete example:

```terraform
module "goat" {
  source = "opendevsecops/goat/aws"
}
```

This module is automatically published to the Terraform Module Registry. More information about the available inputs, outputs, dependencies, and instructions on how to use the module can be found at the official page [here](https://registry.terraform.io/modules/opendevsecops/goat).

provider "aws" {
  region = var.AWS_REGION

  default_tags {
    tags = local.tags
  }
}

locals {
  tags = {
    Environment = var.ENVIRONMENT
    Application = var.APPLICATION
  }
}

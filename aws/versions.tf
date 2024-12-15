terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket="terraform-20220803205515755700000001"
    key="root"
    region="eu-west-1"
    profile="root-account"
  }
}

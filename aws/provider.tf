provider "aws" {
  region = "eu-west-1"
  allowed_account_ids = ["477988886247"]
  profile = "root-account"
}

provider "aws" {
  profile = "root-account"
  region = "eu-west-1"

  assume_role {
    role_arn = "arn:aws:iam::${aws_organizations_account.this["movie-releases"].id}:role/OrganizationAccountAccessRole"
  }
  alias = "movie-releases"
}

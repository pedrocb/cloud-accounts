resource "aws_organizations_organization" "org" {}

resource "aws_organizations_account" "this" {
  for_each = var.accounts
  name = each.key
  email = "${each.key}+pbelem1995@gmail.com"

}

module "movie-releases_state_backend" {
  source = "terraform-aws-modules/s3-bucket/aws"

  block_public_acls = true
  block_public_policy = true
  ignore_public_acls = true
  restrict_public_buckets = true

  providers = {
    aws = aws.movie-releases
  }
}

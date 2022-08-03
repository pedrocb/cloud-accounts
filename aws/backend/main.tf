module "state_backend" {
  source = "terraform-aws-modules/s3-bucket/aws"

  block_public_acls = true
  block_public_policy = true
}

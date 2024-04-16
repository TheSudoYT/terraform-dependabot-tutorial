module "s3_bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "~> 4.1.2"

  bucket = "mugiwara-unique-bucket-${random_pet.bucket_id.id}"
  acl    = "private"
}

resource "random_pet" "bucket_id" {
  length    = 3
  separator = "-"
}

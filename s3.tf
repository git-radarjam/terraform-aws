resource "aws_s3_bucket" "terra-s3-bucket" {
  bucket = "terra-s3-bucket"

  versioning {
    enabled = true
  }

  lifecycle_rule {
    id      = "auto-delete-after-1-day"
    prefix  = "test"
    enabled = true
  }
}

resource "aws_s3_bucket_public_access_block" "terra-s3-bucket" {
  bucket = "${aws_s3_bucket.terra-s3-bucket.id}"

  restrict_public_buckets = true
  block_public_acls       = true
  block_public_policy     = true
}


resource "aws_s3_bucket" "bucket" {
  bucket        = var.bucket_name
  acl           = var.bucket_acl

 lifecycle {
    prevent_destroy = true
  }

  versioning {
    enabled = true
  }

  tags = {
    name        = var.purpose_of_bucket
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

# Manages S3 bucket-level Public Access Block configuration.
# https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-control-block-public-access.html
# resource "aws_s3_bucket_public_access_block" "s3block" {
#   bucket                  = aws_s3_bucket.bucket.id
#   block_public_acls       = true
#   block_public_policy     = true
#   ignore_public_acls      = true
#   restrict_public_buckets = true
# }

resource "aws_s3_bucket_policy" "s3policy" {
  bucket = aws_s3_bucket.bucket.id
  policy = data.aws_iam_policy_document.s3policy.json
}
provider "aws" {
    region = "us-east-2"
}

resource "aws_s3_bucket" "s3_backend" {
  bucket = var.bucket_name
  acl    = "private"

  tags = local.tags

  lifecycle {
    prevent_destroy = true
  }

  versioning {
    enabled = true
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = var.sse_algorithm
      }
    }
  }
}

resource "aws_dynamodb_table" "db_backend" {
  name         = var.dynamodb_name
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = local.tags
}

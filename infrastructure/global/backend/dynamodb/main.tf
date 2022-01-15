provider "aws" {
    region = "us-east-2"
}

resource "aws_dynamodb_table" "naumanen_click_locks" {
  name         = "naumanen-click-locks"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
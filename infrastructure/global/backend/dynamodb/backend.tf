terraform {
  backend "s3" {
    bucket               = "naumanen-click-backend"
    key                  = "global/dynamodb/terraform.tfstate"
    region               = "us-east-2"
    workspace_key_prefix = "naumanen"
    dynamodb_table       = "naumanen-click-locks"
    encrypt              = true
  }
}
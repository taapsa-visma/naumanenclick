terraform {
  backend "s3" {
    bucket               = "taapsa-terraform-backend"
    key                  = "website/terraform.tfstate"
    region               = "us-east-2"
    workspace_key_prefix = "naumanen"
    dynamodb_table       = "taapsa-db-backend"
    encrypt              = true
  }
}
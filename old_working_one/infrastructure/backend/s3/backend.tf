terraform {
  backend "remote" {
      hostname     =   "app.terraform.io"
      organization = "taapsa"

      workspaces {
        name = "terraform-s3-backend"
      }
  }
}
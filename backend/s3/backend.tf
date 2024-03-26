//Creates a new workspace in Terraform Cloud
terraform {
  cloud {
    hostname     = "app.terraform.io"
    organization = "nicktsan"

    workspaces {
      name = "terraform-s3-cookiefield-backend"
    }
  }
}

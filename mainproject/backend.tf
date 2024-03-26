terraform {
  backend "s3" {
    # bucket = "cookiefield-terraform-backend"
    bucket               = "cookiefield-terraform-backend"
    key                  = "terraform.tfstate"
    region               = "us-east-1"
    workspace_key_prefix = "cookiefield-project"
    dynamodb_table       = "cookiefield-db-backend"
    encrypt              = true
  }
}

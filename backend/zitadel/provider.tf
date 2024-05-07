terraform {
  required_providers {
    zitadel = {
      source  = "zitadel/zitadel"
      version = "1.1.0"
    }
  }
  required_version = "~> 1.6.6"
}

provider "zitadel" {
  domain           = "localhost"
  insecure         = "true"
  port             = "8080"
  jwt_profile_file = "local-token"
}

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.26.0"
    }
  }
  required_version = "~> 1.6.6"
}

provider "google" {
  project = var.project_id #project id
  region  = var.region
  zone    = var.zone
}

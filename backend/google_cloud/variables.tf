variable "project_id" {
  description = "Google Cloud Provider Project ID"
  type        = string
}

variable "google_storage_bucket_location" {
  description = "location for google_storage_bucket"
  type        = string
}

variable "region" {
  description = "region of gcp bucket"
  type        = string
}

variable "zone" {
  description = "region zone of gcp bucket"
  type        = string
}

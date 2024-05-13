resource "random_id" "bucket_prefix" {
  byte_length = 8
}

resource "google_storage_bucket" "cookiedeck_bucket" {
  name          = "${random_id.bucket_prefix.hex}-bucket-tfstate"
  force_destroy = true
  location      = var.google_storage_bucket_location
  storage_class = "STANDARD"
  versioning {
    enabled = true
  }
}

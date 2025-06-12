resource "random_id" "id" {
  byte_length = 4
}

resource "google_storage_bucket" "bucket" {
  name                        = "${var.bucket_prefix}-${random_id.id.id}"
  location                    = var.region
  force_destroy               = true
  uniform_bucket_level_access = true
}
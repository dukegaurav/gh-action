mock_provider "google" {
}

variables {
  region        = "asia-south1"
  bucket_prefix = "gaurav-test"
}

override_resource {
  override_during = plan
  target          = random_id.id
  values = {
    id = "ab12"
  }
}

run "valid_string_concat" {
  command = plan
  assert {
    condition     = google_storage_bucket.bucket.name == "gaurav-test-ab12"
    error_message = "the bucket name did not match expected."
  }
}

run "valid_region" {
  command = plan
  assert {
    condition     = google_storage_bucket.bucket.location == "asia-south1"
    error_message = "the bucket name did not match expected."
  }
}
provider "google" {
  #credentials = var.service_account_json_path
  project = var.project_id
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_storage_bucket" "bucket" {
  name          = "${var.bucket_name}-${var.project_id}"
  project       = var.project_id
  location      = var.gcs_location
  force_destroy = var.force_destroy
  storage_class = var.storage_class
 
  versioning {
    enabled = var.enable_versioning
  }
 
  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }
}
 
resource "google_storage_bucket_iam_binding" "binding" {
  bucket = google_storage_bucket.bucket.name
  role = "roles/storage.admin"
  members = [
   "allAuthenticatedUsers",
   "allUsers"
  ]
}

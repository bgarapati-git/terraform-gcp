provider "google" {
  project = "{{YOUR GCP PROJECT}}"
  region  = "us-central1"
  zone    = "us-central1-c"
}

 
resource "google_storage_bucket" "image-storessssssssssss" {
  name     = "image-storessssssssssss-bucket"
  location = "EU"
 
  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }
}
 
resource "google_storage_bucket_iam_binding" "binding" {
  bucket = google_storage_bucket.image-storessssssssssss.name
  role = "roles/storage.admin"
  members = [
   "allAuthenticatedUsers",
   "allUsers"
  ]
}

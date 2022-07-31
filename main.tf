provider "google" {
  project = var.project_id
  region  = "us-central1"
  zone    = "us-central1-c"
}

module "CloudStorage" {
    source = "./modules/CloudStorage"
    bucket_name = "var.bucket_name"
    project_id = "var.project_id "
    gcs_location = "var.gcs_location"
    force_destroy = force_destroy
    storage_class = var.storage_class
    enable_versioning = true
}

module "CloudRun" {
    source = "./modules/CloudRun"
    cloudrun_location = var.cloudrun_location
}
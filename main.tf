provider "google" {
  project = var.project_id
  region  = "us-central1"
  zone    = "us-central1-c"
}

module "CloudStorage" {
    source = "./modules/CloudStorage"
}

module "CloudRun" {
    source = "./modules/CloudRun"
}
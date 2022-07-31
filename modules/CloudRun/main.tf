resource "google_cloud_run_service" "default" {
  name     = "cloudrun-srv"
  location = var.cloudrun_location
  project  = var.project_id

  template {
    spec {
      containers {
        image = "us-docker.pkg.dev/cloudrun/container/hello"
      }
    }
  }
}

data "google_iam_policy" "noauth" {
  binding {
    role = "roles/run.invoker"
    members = [
      "allUsers",
    ]
  }
}


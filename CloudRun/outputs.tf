output "website_bucket_name" {
  description = "Name (id) of the bucket"
  value       = google_storage_bucket.bucket.name
}

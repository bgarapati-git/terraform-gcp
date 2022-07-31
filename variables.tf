# Input variable definitions

variable "project_id" {
  description = "Project ID."
  type        = string
}

variable "bucket_name" {
  description = "Google Cloud Storage (GCS) bucket Name."
  type        = string
}


variable "gcs_location" {
  description = "GCS Location."
  type        = string
  default     = "EU"
}

variable "force_destroy" {
  description = "Delete all objects when deleting bucket."
  type        = bool
  default     = false
}

variable "storage_class" {
  description = <<EOF
The Storage class of the GCS bucket.
Supported Values - STANDARD, MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE.
EOF
  type        = string
  default     = "STANDARD"
}

variable "enable_versioning" {
  description = "Enable GCS Bucket versioning."
  type        = bool
  default     = false
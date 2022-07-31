# Input variable definitions

variable "cloudrun_location" {
  description = "Cloud Run Location."
  type        = string
  default     = "EU"
}

variable "project_id" {
  description = "Run Project ID."
  type        = string
}

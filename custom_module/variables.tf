variable "project_id" {
  description = "The ID of the project in which to provision resources."
  type        = string
  default     = "qwiklabs-gcp-03-c5cc624bebf1"

}

variable "name" {
  description = "Name of the buckets to create."
  type        = string
  default     = "pras-test-bucket-v3"
}

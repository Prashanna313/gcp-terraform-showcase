variable "project_id" {
    type = string
    description = "(required) The GCP project ID"
}

variable "network_name" {
  description = "The name of the VPC network being created"
  default     = "example-vpc"
}

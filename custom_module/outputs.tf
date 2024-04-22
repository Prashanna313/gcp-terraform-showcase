output "bucket-name" {
  description = "Bucket name"
  value       = module.gcs-static-website-bucket.bucket
}

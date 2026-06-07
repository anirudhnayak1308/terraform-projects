# Simple output
output "bucket_name" {
  description = "The full name of the S3 bucket"
  value       = aws_s3_bucket.project_bucket.id
}

output "bucket_arn" {
  description = "ARN of the S3 bucket"
  value       = aws_s3_bucket.project_bucket.arn
}

# Output a computed local value
output "computed_bucket_name" {
  description = "The computed bucket name from locals"
  value       = local.bucket_full_name
}

# Sensitive output — value is hidden in CLI output
output "all_tags" {
  description = "All tags applied to resources"
  value       = local.common_tags
}

output "versioning_status" {
  description = "Whether versioning is enabled based on environment"
  value       = var.environment == "production" ? "Enabled" : "Suspended"
}

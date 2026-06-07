output "bucket_name" {
  description = "Name of the created S3 bucket"
  value       = aws_s3_bucket.my_bucket.id
}

output "bucket_arn" {
  description = "ARN of the S3 bucket"
  value       = aws_s3_bucket.my_bucket.arn
}

output "bucket_region" {
  description = "Region where the bucket is created"
  value       = aws_s3_bucket.my_bucket.region
}

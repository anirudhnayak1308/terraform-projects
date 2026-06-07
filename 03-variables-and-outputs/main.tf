terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

# Locals: computed values derived from variables
locals {
  bucket_full_name = "${var.project_name}-${var.environment}-${var.bucket_suffix}"
  common_tags = {
    Project     = var.project_name
    Environment = var.environment
    ManagedBy   = "Terraform"
    Owner       = var.owner_name
  }
}

# S3 bucket using locals for name and tags
resource "aws_s3_bucket" "project_bucket" {
  bucket = local.bucket_full_name
  tags   = local.common_tags
}

# Enable versioning conditionally based on environment
resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.project_bucket.id

  versioning_configuration {
    status = var.environment == "production" ? "Enabled" : "Suspended"
  }
}

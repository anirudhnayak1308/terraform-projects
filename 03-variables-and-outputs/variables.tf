# String variable with default
variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

# Variable with validation
variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"

  validation {
    condition     = contains(["dev", "staging", "production"], var.environment)
    error_message = "Environment must be one of: dev, staging, production."
  }
}

variable "project_name" {
  description = "Name of the project (used as resource prefix)"
  type        = string
  default     = "myapp"
}

variable "bucket_suffix" {
  description = "Suffix to ensure bucket name uniqueness"
  type        = string
  default     = "tf-demo-2024"
}

variable "owner_name" {
  description = "Name of the resource owner"
  type        = string
  default     = "anirudh"
}

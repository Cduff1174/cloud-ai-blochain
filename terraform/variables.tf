# AWS region
variable "aws_region" {
  description = "AWS region to deploy resources in"
  type        = string
  default     = "us-east-1"
}

# S3 bucket name for Lambda to use
variable "s3_bucket_name" {
  description = "Name of the S3 bucket used by the Lambda function"
  type        = string
}

# Blockchain Admin Password
variable "blockchain_admin_password" {
  description = "Fabric admin password for the Managed Blockchain member"
  type        = string
  sensitive   = true
}


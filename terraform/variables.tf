variable "s3_bucket_name" {
  type        = string
  description = "Name of the S3 bucket used by the Lambda function"
}

variable "blockchain_admin_password" {
  type        = string
  description = "Fabric admin password for the Managed Blockchain member"
  sensitive   = true
}


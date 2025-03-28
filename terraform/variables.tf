# AWS region
variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-east-1"
}

# S3 bucket name for Lambda to use
variable "s3_bucket_name" {
  description = "Name of the S3 bucket used by the Lambda function"
  type        = string
}

# Lambda function name
variable "lambda_function_name" {
  description = "The name of the Lambda function"
  type        = string
  default     = "main_lambda"
}

# Lambda runtime (optional override)
variable "lambda_runtime" {
  description = "The runtime environment for the Lambda function"
  type        = string
  default     = "python3.11"
}

# Lambda handler (optional override)
variable "lambda_handler" {
  description = "The function entrypoint in your Lambda code"
  type        = string
  default     = "index.handler"
}

# Environment stage
variable "env" {
  description = "Deployment environment name"
  type        = string
  default     = "dev"
}

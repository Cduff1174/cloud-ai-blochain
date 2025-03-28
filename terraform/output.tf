# API Gateway invoke URL
output "api_gateway_url" {
  description = "Base invoke URL for the deployed API Gateway"
  value       = "${aws_api_gateway_deployment.deployment.invoke_url}/prod"
}

# Lambda function name
output "lambda_function_name" {
  description = "The name of the deployed Lambda function"
  value       = aws_lambda_function.main_lambda.function_name
}

# Lambda ARN
output "lambda_function_arn" {
  description = "The ARN of the deployed Lambda function"
  value       = aws_lambda_function.main_lambda.arn
}

# S3 bucket name
output "s3_bucket_name" {
  description = "The name of the S3 bucket used by Lambda"
  value       = aws_s3_bucket.lambda_bucket.bucket
}

# IAM role name
output "lambda_iam_role_name" {
  description = "The name of the IAM role attached to the Lambda function"
  value       = aws_iam_role.lambda_exec_role.name
}

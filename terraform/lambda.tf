resource "aws_lambda_function" "main_lambda" {
  function_name = "main_lambda"
  role          = aws_iam_role.lambda_exec_role.arn
  handler       = "index.handler"           # Adjust if using a different entry point
  runtime       = "python3.11"              # Change if using Node.js, etc.
  filename      = "${path.module}/lambda_function_payload.zip"

  source_code_hash = filebase64sha256("${path.module}/lambda_function_payload.zip")

  environment {
    variables = {
      BUCKET_NAME = var.s3_bucket_name
    }
  }

  depends_on = [aws_iam_role.lambda_exec_role]
}

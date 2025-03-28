terraform {
  required_version = ">= 1.4.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  # Optional: remote state backend (e.g., S3 + DynamoDB)
  # backend "s3" {
  #   bucket = "your-tf-state-bucket"
  #   key    = "ai-blockchain/terraform.tfstate"
  #   region = "us-east-1"
  # }
}

provider "aws" {
  region = var.aws_region
}

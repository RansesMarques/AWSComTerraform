terraform {
  required_version = "1.3.7"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.51.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "ranses"
}

resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "my-test-bucket-21-01-23"

  tags = {
    Environment = "Dev"
    ManagedBy   = "Terraform"
    AWS         = "True"
  }
}

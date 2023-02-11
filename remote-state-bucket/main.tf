terraform {
  required_version = "1.3.8"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.51.0"
    }
  }
  backend "s3" {
    bucket  = "tfstate-teste-469699554662"
    key     = "dev/tfstate/terraform.tfstate"
    region  = "us-east-1"
    profile = "ranses"
  }

}

data "aws_caller_identity" "current" {}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}

resource "aws_s3_bucket" "s3-bucket" {
  bucket        = "tfstate-teste-${data.aws_caller_identity.current.account_id}"
  force_destroy = false

  tags = {
    Projects     = "my-tfstate-bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_versioning" "s3-bucket-versioning" {
  bucket = aws_s3_bucket.s3-bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

output "remote_state_bucket_arn" {
  value = aws_s3_bucket.s3-bucket.arn
}

output "remote_state_bucket" {
  value = aws_s3_bucket.s3-bucket.arn
}


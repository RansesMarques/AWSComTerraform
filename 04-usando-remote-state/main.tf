terraform {
  required_version = "1.3.8"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.51.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.4.3"
    }
  }
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}

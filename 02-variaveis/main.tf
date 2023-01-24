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
  region  = var.aws_region
  profile = var.aws_profile
}

resource "aws_instance" "ec2_test" {
  ami           = var.instance_ami
  instance_type = var.type_ec2
  key_name      = var.ec2_keypair
  tags          = var.ec2_tags
}
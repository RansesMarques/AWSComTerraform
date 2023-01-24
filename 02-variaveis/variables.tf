variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = ""
}

variable "aws_profile" {
  type        = string
  default     = "ranses"
  description = ""
}

variable "instance_ami" {
  type        = string
  default     = "ami-0b5eea76982371e91"
  description = ""
}

variable "type_ec2" {
  type        = string
  default     = "t2.micro"
  description = ""
}

variable "ec2_keypair" {
  type        = string
  default     = "ec2tutorial"
  description = ""
}


variable "ec2_tags" {
  type        = map(string)
  description = ""
  default = {
    Name    = "Amazon AMI"
    Project = "Curso Terraform com AWS"
  }
}

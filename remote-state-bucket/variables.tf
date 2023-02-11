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

variable "environment" {
  type        = string
  default     = "dev"
  description = ""
}

variable "ami" {
  type        = string
  default     = "ami-0aa7d40eeae50c9a9"
  description = ""
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = ""
}
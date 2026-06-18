variable "aws_region" {
}

variable "environment" {
}

variable "vpc_cidr" {
  description = "CIDR block of the vpc"
}

variable "public_subnets_cidr" {
  description = "CIDR block for Public Subnet"
}

variable "private_subnets_cidr" {
  description = "CIDR block for Private Subnet"
}
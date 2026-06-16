provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr[terraform.workspace]

  tags = {
    Environment = terraform.workspace
  }
}

resource "aws_subnet" "subnets" {
  for_each = var.subnets

  vpc_id            = aws_vpc.main.id
  cidr_block        = each.value
  availability_zone = each.key
}
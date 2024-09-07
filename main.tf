terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.61.0"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_vpc" "myVPC" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "myVPC"
  }
}

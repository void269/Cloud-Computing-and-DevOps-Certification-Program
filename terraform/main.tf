terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.64.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "terrafform-ec2" {
  ami               = "ami-0d987c06be5692e58"
  count             = 1
  availability_zone = "us-east-1a"
  instance_type     = "t2.micro"

  tags = {
    env = "demo"
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0fec2c2e2017f4e7b"
  instance_type = "t2.micro"
  key_name = "hello-world-terraform"
  tags = {
    Name = "Hello World Terraform"
  }
}

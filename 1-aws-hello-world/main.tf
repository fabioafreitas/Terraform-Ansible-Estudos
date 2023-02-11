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
  ami           = "ami-0557a15b87f6559cf"
  instance_type = "t2.micro"
  key_name = "hello-world-terraform"
  user_data =  <<-EOF
                  #!/bin/bash
                  cd /home/ubuntu
                  echo "<h1>Feito com Terraform</h1>" > index.html
                  nohup python3 -m http.server 8080
                  EOF
  tags = {
    Name = "1-aws-hello-world"
  }
}

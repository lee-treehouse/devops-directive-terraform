terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-2"
}

resource "aws_instance" "hello_world_example" {
  ami           = "ami-051a81c2bd3e755db" #Sydney (ap-southeast-2) Amazon Linux 2 Kernel 5.10 AMI 2.0.20221210.1 x86_64 HVM gp2
  instance_type = "t2.micro"
}

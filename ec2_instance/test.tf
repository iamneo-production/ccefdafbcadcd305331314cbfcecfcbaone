terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region     = "ap-northeast-1"  
  access_key = "YOUR_ACCESS_KEY"
  secret_key = "YOUR_SECRET_KEY"
}

resource "aws_instance" "ec2_server" {
  ami           = "ami-0f9ae750e8274075b" 
  instance_type = "t2.micro"

output "public_ip" {
  value = aws_instance.linux_server.public_ip
}
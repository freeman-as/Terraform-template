# ----------------------------------------
# Terraform configuration
# ----------------------------------------
terraform {
  required_version = ">=1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>3.0"
    }
  }
  backend "s3" {
    bucket  = "testlog-tfstate-bucket-freeman"
    key     = "testlog-dev.tfstate"
    region  = "ap-northeast-1"
    profile = "terraform"
  }
}

# ----------------------------------------
# Provider
# ----------------------------------------
provider "aws" {
  profile = "terraform"
  region  = "ap-northeast-1"
}

provider "aws" {
  alias   = "virginia"
  profile = "terraform"
  region  = "us-east-1"
}

# ----------------------------------------
# Resource
# ----------------------------------------

# resource "aws_instance" "hello-world" {
#   ami           = "ami-02892a4ea9bfa2192"
#   instance_type = "t2.micro"

#   tags = {
#     Name = "HelloWorld"
#   }

#   user_data = <<EOF
# #!/bin/bash
# amazon-linux-extras install -y nginx1.12
# systemctl start nginx
# EOF
# }

# ----------------------------------------
# Variables
# ----------------------------------------
variable "project" {
  type = string
}

variable "environment" {
  type = string
}

variable "domain" {
  type = string
}
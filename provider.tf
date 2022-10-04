# AWS PROVIDER - EU-WEST-1
terraform {
  required_version = "~> 1.2.0"
  required_providers {
    aws = {
      version = "~> 4.21.0"
    }
  }
}


provider "aws" {
  region = "eu-west-1"
}
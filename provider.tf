terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.49.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.region
}
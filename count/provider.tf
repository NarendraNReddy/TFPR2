terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.49.0"
    }
  }
}

#You can provide AWS user key and secret key.But not recoded.
provider "aws" {
  region = "us-east-1"
}
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.21"
    }
  }
}

terraform {
  backend "s3" {
    bucket = "fs-dev-terraform-s3-state"
    key    = "s3-tf-state"
    region = "us-east-1"
  }
}
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket         = ""
    region         = ""
    key            = ""
    dynamodb_table = ""
    encrypt        = true
  }
}

provider "aws" {
  region = var.region
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket         = "elshazlii-production-tfstate-east1"
    region         = "us-east-1"
    key            = "terraform.tfstate"
    dynamodb_table = "terraform_lock_prod"
    encrypt        = true
  }
}

provider "aws" {
  region = var.region
}

terraform {
  required_version = ">= 1.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.67"
    }
  }
  backend "s3" {
    bucket         = "gsk-terraform-statefile"
    key            = "terraformstate"
    region         = "us-east-1"
    dynamodb_table = "gsk-terraform-lock"
    encrypt        = true
  }
}
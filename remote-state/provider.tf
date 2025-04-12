terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.84.0"
    }
  }


backend "s3" {
    bucket = "s82s-remote-state"
    key    = "expense-backend-infra" # same key should not be used in other repos. key should be unique within the bucket
    region = "us-east-1"
    dynamodb_table = "s82s-state-locking"
  }
}  

provider "aws" {
  #configuration options
  region = "us-east-1"
}
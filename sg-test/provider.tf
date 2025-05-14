terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.96.0"
    }
  }

  backend "s3" {
    bucket = "s82s-tf-remote-state"
    key    = "sg-test" #hould have unique keys with in the bucket, same key should not be used in other repos or tf projects
    region = "us-east-1"
    dynamodb_table = "s82s-tf-state-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}
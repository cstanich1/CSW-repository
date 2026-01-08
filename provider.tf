terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.27.0"
    }
  }
  backend "s3" {
    bucket         = "csw-terraform"
    key            = "dev/cws/terraform.tfstate"
    encrypt        = true
    region         = "us-west-1"
    dynamodb_table = "csw-locking-table"
  }
}



#Provider Block Example
provider "aws" {
  region     = "us-east-1"
  access_key = ""
  secret_key = ""
}
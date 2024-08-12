terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }

  }
  backend "s3" {
    bucket = "deploy-from-terraform-terminal"
    key    = "s3/global/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
 
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

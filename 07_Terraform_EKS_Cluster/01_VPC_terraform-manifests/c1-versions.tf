terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 6.0"
    }
  }
# Remote Backend
  backend "s3" {
    bucket         = "tfstate-dev-eu-west-3-ne8swc"
    key            = "vpc/dev/terraform.tfstate"
    region         = "eu-west-3"
    encrypt        = true
    use_lockfile = true
  }   
}

provider "aws" {
  region = var.aws_region
}
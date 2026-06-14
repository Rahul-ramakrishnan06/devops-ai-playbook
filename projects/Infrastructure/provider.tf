terraform {
  required_version = ">= 1.5"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket  = "terraform-state-rahul-r"
    key     = "devops-ai-project/terraform.tfstate"
    region  = "us-east-1"
    profile = "rahul-aws"
    encrypt = true
  }
}

provider "aws" {
  region = var.region
  profile = "rahul-aws"
}

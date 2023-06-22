terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }

  }
  backend "s3" {
    bucket = "group-msg-aws-preview-bucket"
    key    = "infrastructure.tfstate"
    region = "eu-central-1"
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "eu-central-1"
  default_tags {
    tags = {
      Project = "terraforming-aws-prod"
    }
  }
}

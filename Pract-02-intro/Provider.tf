provider "aws" {
  region = "us-west-2"  // Specify your desired AWS region
}
terraform {
  required_providers {
    aws = { 
      source  = "hashicorp/aws" // Specify the provider source
      version = ">= 4.0, < 5.0"
    }
  }
}
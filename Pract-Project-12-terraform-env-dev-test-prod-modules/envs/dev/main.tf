provider "aws" {
  region = var.region
  #profile = "dev"
}

module "vpc" {
  source               = "../../modules/vpc"
  cidr_block           = var.vpc_cidr
  availability_zone    = var.availability_zone
  public_subnet_cidr   = var.public_subnet_cidr
  private_subnet_cidr  = var.private_subnet_cidr    # Add this line
  vpc_name             = var.vpc_name               # Add this line
  env                  = var.env
}
   
module "ec2" {
  source        = "../../modules/ec2"
  ami_id = var.ami_id
  instance_type = var.instance_type
  env           = var.env
 subnet_id     = module.vpc.public_subnet_id
  
}

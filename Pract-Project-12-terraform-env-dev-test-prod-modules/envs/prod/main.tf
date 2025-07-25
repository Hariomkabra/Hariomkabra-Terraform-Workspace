

provider "aws" {
  region = var.region
  #profile = "prod"
}

module "vpc" {
  source              = "../../modules/vpc"
  cidr_block          = var.vpc_cidr
  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
  availability_zone   = var.availability_zone
  vpc_name            = var.vpc_name
  env                 = var.env
}
module "ec2" {
  source        = "../../modules/ec2"
  instance_type = var.instance_type
  env           = var.env
  ami_id = var.ami_id
  subnet_id = module.vpc.public_subnet_id
}

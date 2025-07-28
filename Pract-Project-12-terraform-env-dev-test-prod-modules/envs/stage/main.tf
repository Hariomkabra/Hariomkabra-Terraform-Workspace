provider "aws" {  

  region = var.region
  
}

module "vpc" {
  source = "../../module/vpc"
  cidr_block = var.vpc_cidr
  public_subnet_cidr = var.public_subnet_cidr
  availability_zone = var.availability_zone
  env = var.env
 
}

module "ec2" {
  source = "../../module/ec2"
  
  instance_type = var.instance_type
  ami_id = var.ami_id
  subnet_id = module.vpc.public_subnet_id
  env = var.env

}
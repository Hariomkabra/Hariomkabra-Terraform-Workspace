module "vpc" {
  source       = "./modules/vpc"
  cidr_block   = "10.0.0.0/16"
  subnet_cidr  = "10.0.1.0/24"
  az           = "us-east-1a"
}

module "ec2" {
  source        = "./modules/ec2"
  ami_id        = "ami-0c55b159cbfafe1f0"  # Replace with valid AMI
  instance_type = "t2.micro"
  subnet_id     = module.vpc.subnet_id
}

module "rds" {
  source         = "./modules/rds"
  subnet_id      = module.vpc.subnet_id
  instance_class = "db.t3.micro"
  db_name        = "mydb"
  db_user        = "admin"
  db_password    = "Admin12345"
}
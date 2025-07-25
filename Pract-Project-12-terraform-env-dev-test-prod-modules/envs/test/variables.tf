variable "vpc_cidr" {}                     // CIDR block for the VPC
variable "public_subnet_cidr" {}          // CIDR block for the public subnet
variable "availability_zone" {}           // Availability zone
variable "instance_type" {}               // EC2 instance type
variable "env" {}                         // Environment
variable "ami_id" {}                      // AMI ID
variable "region" {}                      // AWS region
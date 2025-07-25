variable "cidr_block" {}            // CIDR block for the VPC
variable "vpc_name" {}              // Name of the VPC 
variable "availability_zone" {}     // Availability zone for the VPC
variable "private_subnet_cidr" {}  // CIDR block for the private subnet
variable "public_subnet_cidr" {}   // CIDR block for the public subnet
variable "env" {}                   // Environment (dev/test/prod)  
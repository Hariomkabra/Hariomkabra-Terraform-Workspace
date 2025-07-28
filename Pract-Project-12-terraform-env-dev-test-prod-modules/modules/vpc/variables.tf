# variable "cidr_block" {}            // CIDR block for the VPC
# variable "vpc_name" {}              // Name of the VPC 
# variable "availability_zone" {}     // Availability zone for the VPC
# variable "private_subnet_cidr" {}  // CIDR block for the private subnet
# variable "public_subnet_cidr" {}   // CIDR block for the public subnet
# variable "env" {}                   // Environment (dev/test/prod)  


 
variable "cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
  
}


variable "availability_zone" {
  description = "List of availability zones for the subnets"
  type        = string
  
}

variable "public_subnet_cidr" {
  description = "List of CIDR blocks for public subnets"
  type        = string
  
}
variable "env" {
  description = "The environment for the VPC (e.g., dev, stage, prod)"
  type        = string 
  
}
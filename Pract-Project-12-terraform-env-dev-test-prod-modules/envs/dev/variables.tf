# variable "vpc_cidr" {}
# variable "public_subnet_cidr" {}
# variable "availability_zone" {}
# variable "instance_type" {}
# variable "env" {}
# variable "ami_id" {}
# variable "region" {}         // Define variables for the environment     


variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
  
}


variable "availability_zone" {
  description = "Availability zone for the public subnet"
  type        = string
  
}

variable "instance_type" {
  description = "Instance type for the EC2 instances"
  type        = string
  
}

variable "env" {
  description = "Environment name (e.g., dev, prod)"
  type        = string
  
}


variable "ami_id" {
  description = "AMI ID for the EC2 instances"
  type        = string
  
}

variable "region" {
  description = "AWS region for the resources"
  type        = string
  
}
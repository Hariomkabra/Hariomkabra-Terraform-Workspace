
# variable "ami_id" {}  // The AMI ID to use for the EC2 instance
# variable "instance_type" {} // The type of instance to launch
# variable "subnet_id" {} // The subnet ID where the instance will be launched
# variable "env" {} // The environment (dev/test/prod)


variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
  
}

variable "instance_type" {
  description = "Type of EC2 instance"
  type        = string
  
}

variable "subnet_id" {
  
  type        = string
  
}

variable "env" {
  description = "Environment for the EC2 instance (e.g., dev, stage, prod)"
  type        = string
  
}
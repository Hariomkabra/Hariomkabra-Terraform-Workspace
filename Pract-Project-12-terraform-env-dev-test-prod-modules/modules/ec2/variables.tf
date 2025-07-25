
variable "ami_id" {}  // The AMI ID to use for the EC2 instance
variable "instance_type" {} // The type of instance to launch
variable "subnet_id" {} // The subnet ID where the instance will be launched
variable "env" {} // The environment (dev/test/prod)
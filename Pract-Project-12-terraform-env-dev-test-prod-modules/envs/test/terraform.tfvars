vpc_cidr           = "10.0.0.0/16"
public_subnet_cidr = "10.0.1.0/24"
availability_zone  = "us-east-1a"
instance_type      = "t2.micro"
env                = "test"
ami_id             = "ami-05ffe3c48a9991133"
region             = "us-east-1"
# This file contains the variables for the test environment
# Ensure that the ami_id is valid for the specified region 
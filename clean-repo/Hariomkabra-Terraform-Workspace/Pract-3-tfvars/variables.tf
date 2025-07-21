variable "ami_id" {
    description = "inserting ami value into main"
    type = string
    default = ""
}
variable "instance_type" {
    type = string
    default = ""
  
}


// Here is a simple example of a Terraform variable file (tfvars) that defines variables for an AWS instance.
// The variables include an AMI ID and an instance type, which can be used in your Terraform configuration files.
// The file is written in HCL (HashiCorp Configuration Language) format, which is commonly used for Terraform configurations. 

// This is a comment in HCL (HashiCorp Configuration Language) format

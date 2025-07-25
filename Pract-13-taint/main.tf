provider "aws" {
  
}
resource "aws_instance" "name" {
    ami = "ami-05ffe3c48a9991133"  // Amazon Linux 2 AMI // Replace with your desired AMI
    instance_type = "t2.micro"
    #key_name = "test"
  
}
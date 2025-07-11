resource "aws_instance" "name" {
    ami = "ami-05ffe3c48a9991133"
    instance_type = "t2.micro"
    
  
}
resource "aws_vpc" "name" {
    cidr_block = "10.0.0.0/16"
  
}
resource "aws_vpc" "name2" {
    cidr_block = "10.0.0.0/24"
  
}
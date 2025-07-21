
provider "aws" {
  
}
resource "aws_instance" "name" {
    ami = "ami-05ffe3c48a9991133"
    instance_type = "t2.micro"
    #key_name = "test"
  
}



resource "aws_s3_bucket" "name" {
    bucket = "adcgdcswdwdwdwdwdc"
  
}

# terraform plan --target=aws_instance.name
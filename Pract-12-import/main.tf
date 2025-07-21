resource "aws_instance" "name" {
    ami = "ami-0150ccaf51ab55a51"
    instance_type = "t3.micro"
    tags = {
      Name = "manual"
    }

  
}
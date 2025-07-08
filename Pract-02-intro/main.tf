resource "aws_instance" "name" {
    ami = "ami-05ffe3c48a9991133"  // Replace with a valid AMI ID
    instance_type = "t2.micro"
    key_name = "test"
  
}

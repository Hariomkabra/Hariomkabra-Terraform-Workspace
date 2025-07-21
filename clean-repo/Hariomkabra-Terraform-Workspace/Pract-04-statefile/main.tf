provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "name" {
  ami           = "ami-020cba7c55df1f615"  // Replace with a valid AMI ID
  instance_type = "t2.nano"

  tags = {
    day = "day - 04"
  }

}  
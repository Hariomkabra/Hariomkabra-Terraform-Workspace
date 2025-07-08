resource "aws_instance" "name" {
  ami = var.ami_id  // Replace with a valid AMI ID
  instance_type = var.instance_type  // Specify the instance type
  tags = {
    Name = "day-3"
  }

}
resource "aws_instance" "day-4" {
  ami = var.ami_id // Replace with a valid AMI ID
  instance_type = var.instance_type // Specify the instance type
  tags = {
    Name = "day-5"
  }

}
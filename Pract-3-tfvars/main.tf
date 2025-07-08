resource "aws_instance" "name" {
  ami = var.ami_id  // Terraform.tfvars(file) declare variable
  instance_type = var.instance_type  // Terraform.tfvars declare variable
  tags = {
    Name = "day-3"
  }
}


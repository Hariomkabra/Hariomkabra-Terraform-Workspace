resource "aws_instance" "name" {
    ami = "ami-05ffe3c48a999113345656"
    instance_type = "t2.micro"
    #key_name = "test"
    tags = {
      Name = "test"
    }
    

  lifecycle {
    create_before_destroy = true
  }
#   lifecycle {
#     ignore_changes = [ tags, ]
#   }
#   lifecycle {
#     prevent_destroy = true
#   }
} 
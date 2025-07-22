
data "aws_subnet" "name" {
    filter {
    name   = "tag:Name"
    values = ["my-subnet-1"] # insert value here
  }
}
data "aws_ami" "amzlinux" {
  most_recent = true
  owners = [ "amazon" ]
  filter {
    name = "name"
    values = [ "amzn2-ami-hvm-*-gp2" ]
  }
             filter {
    name = "root-device-type"
    values = [ "ebs" ]
  }
        filter {
    name = "virtualization-type"
    values = [ "hvm" ]
  }
  filter {
    name = "architecture"
    values = [ "x86_64" ]
  }

}






resource "aws_instance" "name" {
  ami = "ami-0a1235697f4afa8a4"
  instance_type = "t2.micro"
    subnet_id = data.aws_subnet.name.id
    associate_public_ip_address = true
  count = 3
    tags = {
    Name = "dev-${count.index + 1}"
  }   
}



#terraform destroy -target="aws_instance.name[1]"

############################### Example-1 name with count #############
# resource "aws_instance" "name" {
#     ami = "ami-05ffe3c48a9991133"
#     instance_type = "t2.micro"
#     count = 3
#     # tags ={
#     #     Name = "dev"
#     # }
#      tags ={
#         Name = "dev-${count.index}"
#     }
  
# }

############################### Example-2 Different names #############
variable "env" {
  type    = list(string)
  default = [ "dev", "prod"]
}

resource "aws_instance" "name2" {
    ami = "ami-085ad6ae776d8f09c"
    instance_type = "t2.micro"
    count=length(var.env)

    tags = {
      Name = var.env[count.index]
    }
}

# #example-3 creating IAM users 
# # variable "user_names" {
# #   description = "IAM usernames"
# #   type        = list(string)
# #   default     = ["user1", "user2", "user3"]
# # }
# # resource "aws_iam_user" "example" {
# #   count = length(var.user_names)
# #   name  = var.user_names[count.index]
# # }
variable "ami_id" {
    description = "inserting ami value into main"
    type = string
    default = ""
}
variable "instance_type" {
    type = string
    default = "t2.nano"
  
}
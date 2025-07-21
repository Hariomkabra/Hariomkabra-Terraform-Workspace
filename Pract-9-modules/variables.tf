variable "ami_id" {
    description = "inserting ami value into main"
    type = string
    default = ""
}
variable "instance_type" {
    type = string
    default = ""
  
}
variable "key" {
  type = string
  default = ""
}
variable "az" {
    type = string
    default = ""
  
}
variable "bucket" {
 type = string
  default = ""
}
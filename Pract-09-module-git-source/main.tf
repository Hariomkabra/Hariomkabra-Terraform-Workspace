module "prod" {
    source = "github.com/CloudTechDevOps/terraform0730am/Day-9-modules"
    # Make sure these variable names match those defined in the module's variables.tf
    ami = "ami-05ffe3c48a9991133"
    instance_type = "t2.micro"
    #key = "test"
    availability_zone = "ap-south-1b"
}

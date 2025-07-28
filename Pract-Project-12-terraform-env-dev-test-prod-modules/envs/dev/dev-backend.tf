

terraform {
  backend "s3" { 
    bucket         = "m0123sssss" // Replace with your actual bucket name and name should be unique 
    key            = "dev/terraform.tfstate"
    region         = "ap-south-1"
    use_lockfile = true
  }
}
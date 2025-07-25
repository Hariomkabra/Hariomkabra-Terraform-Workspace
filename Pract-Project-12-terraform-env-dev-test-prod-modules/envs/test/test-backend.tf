
terraform {
  backend "s3" {
    bucket         = "nareshitveeranarni"
    key            = "test/terraform.tfstate"
    region         = "us-east-1"
    use_lockfile = true
  }
}
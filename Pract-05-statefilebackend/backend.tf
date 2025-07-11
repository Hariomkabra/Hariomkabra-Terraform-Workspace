terraform {
  backend "s3" {
    bucket = "Storedhouse" // S3 bucket name should be unique
    key    = "terraform.tfstate"
    region = "us-east-1"      //
    object_lock_enabled = true
  }
}
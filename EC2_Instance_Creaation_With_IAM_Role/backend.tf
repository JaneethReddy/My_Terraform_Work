terraform {
  backend "s3" {
    bucket  = "terraform-test"
    encrypt = true
    key     = "terraform.tfstate"
    region  = "us-west-2"
  }
}

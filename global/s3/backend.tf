terraform {
  backend "s3" {
    bucket  = "terraform-up-and-running-state-david"
    key     = "global/s3/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}

terraform {
  backend "s3" {
    bucket  = "terraform-up-and-running-state-david"
    key     = "stage/data-stores/mysql/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}

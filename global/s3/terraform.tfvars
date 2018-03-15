terragrunt = {
  terraform {
    lock = {
      backend = "dynamodb"

      config {
        state_file_id = "global/s3"
      }
    }

    remote_state = {
      backend = "s3"

      config {
        bucket  = "terraform-up-and-running-state-david"
        key     = "global/s3/terraform.tfstate"
        region  = "us-east-1"
        encrypt = true
      }
    }
  }
}

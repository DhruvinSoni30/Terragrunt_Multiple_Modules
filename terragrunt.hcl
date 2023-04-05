remote_state {
  backend = "s3"
  config = {
    bucket = "dhsoni-terragrunt"
    region = "us-west-2"
    key    = "${path_relative_to_include()}/terraform.tfstate"
  }
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
}
terraform {
  backend "s3" {
    bucket = "terraform-state-lsilva-clc16-989294510870-us-east-1-an"
    key    = "terraform/state"
    use_lockfile = true
    encrypt = true
    region = "us-east-1"
  }
}

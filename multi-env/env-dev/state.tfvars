terraform {
  backend "s3" {
    bucket = "teju-devops"
    key    = "test/dev/terraform.tfstate"
    region = "us-east-1"
  }
}
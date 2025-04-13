terraform {
  backend "s3" {
    bucket = "teju-devops"
    key    = "test/prod/terraform.tfstate"
    region = "us-east-1"
  }
}
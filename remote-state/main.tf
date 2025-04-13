terraform {
  backend "s3" {
    bucket = "mybucket"
    key    = "test/terraform.tfstate"
    region = "us-east-1"
  }
}
resource "null_resource" "test" {}

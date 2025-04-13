terraform {
  backend "s3" {}
}

resource "null_resource" "devops" {}

output "devops" {
  value = "var.test"
}


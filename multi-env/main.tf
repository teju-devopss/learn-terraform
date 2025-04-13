terraform {
  backend "s3" {}
}

resource "null_resource" "devops" {}

output "devops-variable-output-is" {
  value = var.devops
}


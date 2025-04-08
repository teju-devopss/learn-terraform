output "v1" {
    value = var.v1
    }

output "v2" {
    value = element(var.v2[4])
    }

output "v3" {
    value = var.v3["abc"]
    }
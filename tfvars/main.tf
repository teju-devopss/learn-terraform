output "selected_items_as_string" {
  value = "You selected: ${join(", ", var.x)}"
}

variable "x" {}
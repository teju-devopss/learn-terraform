variable "fruits1" {
  default = {
    apple    = 10
    quantity = 20
  }
}

variable "fruits2" {
  default = {

    apple = {
      name     = "apple"
      quantity = 100
}
    banana = {
      name     = "banana"
      quantity = 300
    }

  }
}

resource "null_resource" "test1" {
  for_each = var.fruits1
  provisioner "local-exec" {
    command = "echo ${each.key} = ${each.value}"
  }
}
resource "null_resource" "test2" {
  for_each = var.fruits2
  provisioner "local-exec" {
    command = "echo ${lookup(each.value,name,"null" )} = ${lookup(each.value,name,"null" )}"
  }
}

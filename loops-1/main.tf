variable "components" {
  default = ["frontend","backend","mysql"]
}

resource "aws_instance" "components" {
  count                  = length(var.components)
  ami                    = "ami-0b4f379183e5706b9"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-05c761dbd36f70805"]

  tags = {
    Name = element(var.components,count.index )
  }
}


# resource "null_resource" "demo" {
#   count = 10
# }
#
# output "demo" {
#   value = null_resource.demo.*.id
# }
# as we used count here we will use * in the output to access it
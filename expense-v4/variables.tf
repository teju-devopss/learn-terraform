variable "instance_type" {
  default = "t3.micro"
}
variable "vpc_security_group_ids" {
  default = ["sg-05c761dbd36f70805"]
}
variable "zone_id" {
  default = "Z07191123NJU9NTTKKZJ1"
}
variable "components" {
  default = {
    frontend = {
      name          = "frontend"
      instance_type = "t3.micro"
    }
    backend = {
      name          = "backend"
      instance_type = "t3.micro"
    }
    mysql = {
      name          = "mysql"
      instance_type = "t3.small"
    }
  }
}
variable "ami" {
  default = "ami-0b4f379183e5706b9"
}
variable "instance_type" {
  default = "t3.micro"
}
variable "vpc_security_group_ids" {
  default = ["sg-05c761dbd36f70805"]
}
variable "zone_id" {
  default = "Z07191123NJU9NTTKKZJ1"
}
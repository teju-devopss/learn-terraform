resource "aws_route53_record" "records" {
  zone_id                = "Z07191123NJU9NTTKKZJ1"
  name                   = "test"
  type                   = "A"
  ttl                    = 30
  records                = [var.private_ip]
}
variable "private_ip" {}
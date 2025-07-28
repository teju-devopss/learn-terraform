resource "aws_instance" "instances" {
  count                  = length(var.components)
  ami                    = data.aws_ami.centos8.image_id
  instance_type          = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name                 = element(var.components,count.index)
  }
}
resource "aws_route53_record" "records" {
  count                  = length(var.components)
  zone_id                = var.zone_id
  name                   = "${element(var.components,count.index)}-dev"
  type                   = "A"
  ttl                    = 30
  records                = [element(aws_instance.instances.*.private_ip,count.index )]
}


# output "Second_Value_in_List" {
#   value = var.v2[1]
# }
# output "Second_Value_in_List1" {
#   value = element(var.v2, 4)
# }
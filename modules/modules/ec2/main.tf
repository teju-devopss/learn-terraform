resource "aws_instance" "instance" {
  ami                    = data.aws_ami.centos8.image_id
  instance_type          = "t3.micro"
  tags = {
    Name                 = "test"
  }
}
resource "aws_instance" "test" {
  count                  = 3
  ami                    = "ami-0b4f379183e5706b9"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-05c761dbd36f70805"]

  tags = {
    Name = "test-${count.index}"
  }
}
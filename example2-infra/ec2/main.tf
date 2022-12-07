resource "aws_instance" "that" {
  ami                       = data.aws_ami.myami.id
  instance_type             = "t2.micro"
  vpc_security_group_ids     = [var.sg]

  tags = {
    Name = "Myfirstterraform_instance"
  }
}

variable "sg" {}

output "public_ip" {
  value = aws_instance.that.public_ip
}
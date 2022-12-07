resource "aws_instance" "that" {
  ami                       = "ami-0b0dcb5067f052a63"
  instance_type             = "t2.micro"
  vpc_security_group_ids     = [aws_security_group.allow_ssh.id]

  tags = {
    Name = "Myfirstterraform_instance"
  }
}

#variable "sg" {}

output "public_ip" {
  value = aws_instance.that.public_ip
}
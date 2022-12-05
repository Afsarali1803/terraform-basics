resource "aws_instance" "this" {
  ami                       = "ami-0b0dcb5067f052a63"
  instance_type             = "t2.micro"

  tags = {
    Name = "Helloworld"
  }
}

output "private_ip" {
  value = aws_instance.this.private_ip
}
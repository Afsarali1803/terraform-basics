resource "aws_instance" "that" {
  ami                       = "ami-0b0dcb5067f052a63"
  instance_type             = "t2.micro"
  security_groups           =  [aws_security_group.allow_tls.id]

  tags = {
    Name = "Helloworld"
  }
}

output "private_ip" {
  value = aws_instance.that.private_ip
}

output "private_dns" {
    value = aws_instance.that.private_dns 
}

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  

  ingress {
    description      = "SSH to security group"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
    description      = "http to SG"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}
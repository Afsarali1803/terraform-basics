resource "aws_instance" "that" {
  ami                       = "ami-0b0dcb5067f052a63"
  instance_type             = "t2.micro"
  vpc_security_group_ids     = [aws_security_group.allow_ssh.id]

  tags = {
    Name = "Helloworld1"
  }
}

output "private_ip" {
  value = aws_instance.that.private_ip
}

output "private_dns" {
    value = aws_instance.that.private_dns 
}

# Creates Security Group
resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"

  ingress {
    description      = "SSH from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
    description      = "HTTP from Public"
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
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_SSH"
  }
}
module "ec2" {
  source = "./ec2"
}

module "sg" {
  source = "./sg"
}

output "public_ip" {
  value = module.ec2.public_ip
}

output "sg" {
    value = aws_security_group.allow_ssh.id
}
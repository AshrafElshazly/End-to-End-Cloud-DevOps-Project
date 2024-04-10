output "bastionIP" {
  value = aws_instance.bastion.public_ip
}

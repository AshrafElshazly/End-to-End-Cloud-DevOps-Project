output "vpc_id" {
  value = aws_vpc.vpc.id
}

output "public_subnet_1_id" {
  value = aws_subnet.public_subnet[0].id
}

output "public_subnet_2_id" {
  value = aws_subnet.public_subnet[1].id
}

output "private_subnet_1_id" {
  value = aws_subnet.private_subnet[0].id
}

output "private_subnet_2_id" {
  value = aws_subnet.private_subnet[1].id
}

output "private_subnet_3_id" {
  value = aws_subnet.private_subnet[2].id
}

output "private_subnet_4_id" {
  value = aws_subnet.private_subnet[3].id
}

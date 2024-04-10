resource "aws_eip" "nat_eip" {
  count = 2
}

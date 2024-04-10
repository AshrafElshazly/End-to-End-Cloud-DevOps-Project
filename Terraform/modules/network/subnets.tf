resource "aws_subnet" "public_subnet" {
  count = length(var.public_subnet_cidr_blocks)

  cidr_block              = var.public_subnet_cidr_blocks[count.index]
  vpc_id                  = aws_vpc.vpc.id
  availability_zone       = var.availability_zones[count.index % length(var.availability_zones)]
  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet-${count.index + 1}"
  }
}

resource "aws_subnet" "private_subnet" {
  count = length(var.private_subnet_cidr_blocks)

  cidr_block        = var.private_subnet_cidr_blocks[count.index]
  vpc_id            = aws_vpc.vpc.id
  availability_zone = var.availability_zones[count.index % length(var.availability_zones)]

  tags = {
    Name = "private-subnet-${count.index + 1}"
  }
}

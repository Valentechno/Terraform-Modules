resource "aws_vpc" "vpc" {
  cidr_block                  = var.cidr_block
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support          = var.enable_dns_support
}

resource "aws_subnet" "public-subnet1" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.public_subnet_cidr1
  count             = var.create_resource_public_subnet_1 ? 1 : 0
  availability_zone = var.availability_zone_us-east-2a

  tags = {
    Name = var.public_subnet_1_tag_name
  }
}

resource "aws_subnet" "public-subnet2" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.public_subnet_cidr2
  count             = var.create_resource_public_subnet_2 ? 1 : 0
  availability_zone = var.availability_zone_us-east-2b

  tags = {
    Name = var.public_subnet_2_tag_name
  }
}

resource "aws_subnet" "private-subnet1" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.private_subnet_cidr1
  count             = var.create_resource_private_subnet_1 ? 1 : 0
  availability_zone = var.availability_zone_us-east-2a

  tags = {
    Name = var.private_subnet_1_tag_name
  }
}

resource "aws_subnet" "private-subnet2" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.private_subnet_cidr2
  count             = var.create_resource_private_subnet_2 ? 1 : 0
  availability_zone = var.availability_zone_us-east-2b

  tags = {
    Name = var.private_subnet_2_tag_name
  }
}

resource "aws_internet_gateway" "IGW" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = var.internet_gateway_tag_name
  }
}

resource "aws_route_table" "public_route_table_1" {
  vpc_id = aws_vpc.vpc.id
  count  = var.create_resource_public_subnet_1 ? 1 : 0

  tags = {
    Name = var.route_table_1_tag_name
  }
}

resource "aws_route_table" "public_route_table_2" {
  vpc_id = aws_vpc.vpc.id
  count  = var.create_resource_private_subnet_2 ? 1 : 0

  tags = {
    Name = var.route_table_2_tag_name
  }
}

resource "aws_route_table_association" "public_1_rta" {
  count = var.create_resource_public_subnet_1 ? 1 : 0

  subnet_id      = aws_subnet.public-subnet1[count.index].id
  route_table_id = aws_route_table.public_route_table_1[count.index].id
}

resource "aws_route_table_association" "public_2_rta" {
  count = var.create_resource_private_subnet_2 ? 1 : 0

  subnet_id      = aws_subnet.public-subnet2[count.index].id
  route_table_id = aws_route_table.public_route_table_2[count.index].id
}

resource "aws_route" "public_igw_1" {
  count = var.create_resource_public_subnet_1 ? 1 : 0

  route_table_id         = aws_route_table.public_route_table_1[count.index].id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.IGW.id
}

resource "aws_route" "public_igw_2" {
  count = var.create_resource_public_subnet_2 ? 1 : 0

  route_table_id         = aws_route_table.public_route_table_2[count.index].id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.IGW.id
}


output "vpc_id" {
    value = aws_vpc.vpc.id
}

output "vpc_arn" {
    value = aws_vpc.vpc.arn
}

output "vpc_cidr_block" {
    value = aws_vpc.vpc.cidr_block
}

output "default_security_group_id" {
    value = aws_vpc.vpc.default_security_group_id
}

output "igw_id" {
    value = aws_internet_gateway.IGW.id
}

output "igw_arn" {
    value = aws_internet_gateway.IGW.arn
}

output "public_subnet_1_id" {
    value = aws_subnet.public-subnet1[*].id
}

output "public_subnet_1_arn" {
    value = aws_subnet.public-subnet1[*].arn
}

output "public_subnet_2_id" {
    value = aws_subnet.public-subnet2[*].id
}

output "public_subnet_2_arn" {
    value = aws_subnet.public-subnet2[*].arn
}

output "public_subnet_1_cidr_block" {
    value = aws_subnet.public-subnet1[*].cidr_block
}

output "public_subnet_2_cidr_block" {
    value = aws_subnet.public-subnet2[*].cidr_block
}

output "public_route_table_1_id" {
    value = aws_route_table.public_route_table_1[*].id
}

output "public_route_table_2_id" {
    value = aws_route_table.public_route_table_2[*].id
}

output "public_igw_id" {
    value = aws_internet_gateway.IGW.id
}

output "public_route_table_association_1_id" {
    value = aws_route_table_association.public_1_rta[*].id
}

output "public_route_table_association_2_id" {
    value = aws_route_table_association.public_2_rta[*].id
}

output "private_subnet_1_id" {
    value = aws_subnet.private-subnet1[*].id
}

output "private_subnet_1_arn" {
    value = aws_subnet.private-subnet1[*].arn
}

output "private_subnet_2_id" {
    value = aws_subnet.private-subnet2[*].id
}

output "private_subnet_2_arn" {
    value = aws_subnet.private-subnet2[*].arn
}

output "private_subnet_1_cidr_block" {
    value = aws_subnet.private-subnet1[*].cidr_block
}

output "private_subnet_2_cidr_block" {
    value = aws_subnet.private-subnet2[*].cidr_block
}
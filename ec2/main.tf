resource "aws_instance" "instance" {
    ami = var.ami
    instance_type = var.instance_type
    
    user_data = var.user_data
    associate_public_ip_address = var.associate_public_ip_address
    availability_zone = var.availability_zone
    subnet_id = var.subnet_id
    vpc_security_group_ids = var.vpc_security_group_ids
    key_name = aws_key_pair.generated-key.key_name
}

resource "tls_private_key" "private-key" {
    algorithm = "RSA"
    rsa_bits = 4096
}

resource "aws_key_pair" "generated-key" {
    key_name = var.key_name
    public_key = tls_private_key.private-key.public_key_openssh
}
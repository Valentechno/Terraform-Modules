resource "aws_security_group" "security_group" {
  name        = var.name
  description = var.description
  vpc_id      = var.vpc_id

  dynamic "ingress" {
    iterator = port
    for_each = var.ingressrules
    content {
      from_port   = port.value
      to_port     = port.value
      protocol    = var.ingressprotocol
      cidr_blocks = var.ingress-cidr-block
    }
  }

  dynamic "egress" {
    iterator = port
    for_each = var.egressrules
    content {
      from_port   = port.value
      to_port     = port.value
      protocol    = var.egressprotocol
      cidr_blocks = var.egress-cidr-block
    }
  }

  tags = {
    Name = var.sg_tag_name
  }
}
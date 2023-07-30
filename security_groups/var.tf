variable "name" {
  type    = string
  default = null
}

variable "description" {
  type    = string
  default = "Security Group created by Terraform"
}

variable "vpc_id" {
  type    = string
  default = null
}

variable "sg_tag_name" {
  type    = string
  default = "Security Group created from Terraform"
}

variable "ingressrules" {
  type    = list(number)
  default = null
}

variable "egressrules" {
  type    = list(number)
  default = null
}

variable "ingressprotocol" {
  type    = string
  default = "TCP"
}

variable "ingress-cidr-block" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}

variable "egressprotocol" {
  type    = string
  default = "TCP"
}

variable "egress-cidr-block" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}
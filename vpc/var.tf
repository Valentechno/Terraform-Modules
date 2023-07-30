variable "cidr_block" {
  type    = string
  default = "10.0.0.0/16"
}

variable "enable_dns_hostnames" {
  type    = bool
  default = true
}

variable "enable_dns_support" {
  type    = bool
  default = true
}

variable "create_resource_public_subnet_1" {
  type    = bool
  default = true
}
variable "public_subnet_cidr1" {
  type    = string
  default = "10.0.0.0/20"
}

variable "availability_zone_us-east-2a" {
  type    = string
  default = "us-east-2a"
}

variable "public_subnet_1_tag_name" {
  type    = string
  default = "pub-sub-1"
}

variable "create_resource_public_subnet_2" {
  type    = bool
  default = false
}
variable "public_subnet_cidr2" {
  type    = string
  default = "10.0.16.0/20"
}

variable "availability_zone_us-east-2b" {
  type    = string
  default = "us-east-2b"
}

variable "public_subnet_2_tag_name" {
  type    = string
  default = "pub-sub-2"
}

variable "create_resource_private_subnet_1" {
  type    = bool
  default = true
}
variable "private_subnet_cidr1" {
  type    = string
  default = "10.0.128.0/20"
}

variable "private_subnet_1_tag_name" {
  type    = string
  default = "pri-sub-1"
}

variable "create_resource_private_subnet_2" {
  type    = bool
  default = false
}
variable "private_subnet_cidr2" {
  type    = string
  default = "10.0.144.0/20"
}

variable "private_subnet_2_tag_name" {
  type    = string
  default = "pri-sub-2"
}

variable "internet_gateway_tag_name" {
  type    = string
  default = "TF-IGW"
}

variable "igw_cidr" {
  type    = string
  default = "0.0.0.0/0"
}

variable "route_table_1_tag_name" {
  type    = string
  default = "pub-sub-1-rt"
}

variable "route_table_2_tag_name" {
  type    = string
  default = "pub-sub-2-rt"
}
variable "ami" {
  type    = string
  default = null
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "user_data" {
  type    = string
  default = null
}

variable "associate_public_ip_address" {
  type    = bool
  default = null
}

variable "availability_zone" {
  type    = string
  default = null
}

variable "subnet_id" {
  type    = string
  default = null
}

variable "vpc_security_group_ids" {
  type    = list(string)
  default = null
}

variable "key_name" {
  type    = string
  default = null
}


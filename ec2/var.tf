variable "ami" {
  type    = string
  default = "ami-024e6efaf93d85776"
}

variable "ec2_tag_name" {
  type    = string
  default = "TF Generated EC2 Instance"
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
  default = true
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


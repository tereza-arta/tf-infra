variable "vpc_cidr" {
  default     = "10.0.0.0/16"
  description = "Cidr_block value of Vpc"
}

variable "vpc_tag" {
  default = "Custom VPC"
}

variable "internet_gw_tag" {
  default = "Custom Internet Gateway"
}

variable "pub_sub_cidr" {
  default     = "10.0.0.0/24"
  description = "Cidr_block of the public single subnet"
}

#variable "map_public_ip" {
#  default = true
#}

variable "map_public_ip" {
  type    = bool
  default = true
}

variable "pub_sub_tag" {
  default = "Public Subnet"
}

variable "default_gateway" {
  default     = "0.0.0.0/0"
  description = "Gateway for access to the internet"
}

variable "rt_tag" {
  default = "Route table for public"
}

variable "sg_name" {
  default = "Custom sg"
}

variable "sg_desc" {
  default = "sg-for-public-instance"
}

variable "sg_ingress_cnt" {
  type    = number
  default = 3
}

variable "ing_port_range" {
  type        = list(number)
  default     = [22, 80, 443]
  description = "List of SG Inbound rules destination"
}

variable "protocol" {
  type    = list(string)
  default = ["tcp", "udp"]
}

variable "sg_egress_cnt" {
  type    = number
  default = 1
}

variable "eg_port_range" {
  type        = list(number)
  default     = [0]
  description = "List of SG Outbound rules destination"
}



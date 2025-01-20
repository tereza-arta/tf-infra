variable "key_algorithm" {
  default     = "RSA"
  description = "Key_algorithm(rsa, ecdsa or ed25519)"
}

variable "rsa_bits" {
  default     = 2048
  description = "Length of key with rsa_algorithm"
}

variable "key_file" {
  default = "priv-key.pem"
}

variable "key_name" {
  default = "priv-key.pem"
}

variable "recent_ami" {
  type    = bool
  default = true
}

variable "filter_option_1" {
  default     = "name"
  description = "Option for filter image-ami"
}

variable "filter_1_value" {
  default     = "ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"
  description = "Value of appropriate filter"
}

variable "filter_option_2" {
  default     = "virtualization-type"
  description = "Option for filter image-ami"
}

variable "filter_2_value" {
  default     = "hvm"
  description = "Value of appropriate filter"
}

variable "ami_owner_id" {
  default     = "099720109477" #Canonical(ubuntu)
  description = "Account-id of image ami"
}

variable "instance_type" {
  default     = "t3.micro"
  description = "Type of EC2 instance(Mix of the CPU,RAM,Disk,Network components)"
}

variable "instance_count" {
  type    = number
  default = 1
}

variable "in_public_subnet" {
  type        = bool
  default     = true
  description = "Create instance in public subnet or not"
}

variable "subnet_id" {}

variable "sec_group_id" {
  type = any
}

variable "instance_tag" {
  default = "Custom EC2"
}

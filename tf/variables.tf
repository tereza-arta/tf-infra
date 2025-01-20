variable "config_path" {
  default     = "~/.aws/config"
  description = "Path of AWS Region configuration"
}

variable "cred_path" {
  default     = "~/.aws/credentials"
  description = "Path of AWS user credentials"
}

variable "enable_vpc" {
  type        = bool
  default     = "true"
  description = "Enable the specified module or not"
}

variable "enable_ec2" {
  type        = bool
  default     = "true"
  description = "Enable the specified module or not"
}

variable "data_file" {
  default     = "modules/ec2_instance/user_data/tools-installer.sh"
  description = "Set filename for user_data option"
}
